module sizeDetect
    (
        input logic clk,
        input logic resetN,
        input logic enable,

        input logic dIn,
		input logic samplePulse, //Since we are in the early bit, this gets pulsed three times. Make sure to read the value after the third pulse

        output logic completeConfig,
		output logic [3:0] msgSize
    );

    /*
        Anatomy of a CAN Bit stuff: A CAN Bit stuff is the inverse bit from the sequnece: run of 0's = 1, run of 1's = 0;

        If a bit stuff is added, it is considered in the sequence for bit stuffing. AKA: A bit stuff can lead to a run of 4 values having a bit stuff added to it.

        AKA: 00000,1111,0000 Bit stuffed becomes: 00000,1,1111,0,0000,1

    */

    
    localparam PRELUDE_LENGTH = 15;
    localparam DLC_LEN = 4;

    logic [4:0] prevBits; // Ongoing counter to determine if stuff occurs
    logic [4:0] validCounter; //Valid counter to get us to the DLC
    logic [3:0] dlcPos;

    logic [3:0] inverseDLC;

    logic shiftIn;
    logic dlcShift;
    logic inDLC;

    logic stuffDetected;
    logic stuffOS;

    const logic [4:0] initialBitPattern = 5'b01010; //This pattern was created to not have a stuff bit instantly detected, but still have SOF cause a bit stuff.

    oneshot os(.*, .pulse(stuffDetected), .oneshot(stuffOS));



    //Bit Storage

    always_ff @(posedge clk) begin
        if(!resetN) begin
            prevBits <= initialBitPattern;
        end else begin
			if(shiftIn) begin
				prevBits <= {prevBits[3:0],dIn};
			end
			else begin
				prevBits <= prevBits;
			end
		end
    end

    //Inverse DLC Logic
    always_ff @(posedge clk) begin
        if(!resetN) begin
            inverseDLC <= 4'b0000;
        end else begin
            case (dlcPos)
                4'd0:  inverseDLC <= {inverseDLC[3:1], dIn};
                4'd1:  inverseDLC <= {inverseDLC[3:2], dIn, inverseDLC[0]};
                4'd2:  inverseDLC <= {inverseDLC[3], dIn, inverseDLC[1:0]};
                4'd3:  inverseDLC <= {dIn, inverseDLC[2:0]};
                default: inverseDLC <= inverseDLC;
            endcase
        end
    end

    //DLC Reverser for output

    always_comb begin
        {msgSize[3],msgSize[2], msgSize[1], msgSize[0]} = {inverseDLC[0],inverseDLC[1],inverseDLC[2],inverseDLC[3]};
    end

    //Bit stuff detection logic

    always_comb begin
        if(prevBits == 5'b00000 || prevBits == 5'b11111) begin
            stuffDetected = 1;
        end else begin
            stuffDetected = 0;
        end
    end


    //Counter logic

    always_ff @(posedge clk) begin
        if(!resetN) begin
            validCounter <= 0;
        end else begin
            if(shiftIn) begin
                if(stuffOS) begin
                    //We are shifiting a bit in, and also saying the bit is a stuff bit, do not increment.
                    validCounter <= validCounter;
                end else begin
                    validCounter <= validCounter + 1;
                end
            end else begin
                if(stuffOS) begin
                    validCounter <= validCounter - 1;
                end else begin
                    validCounter <= validCounter;
                end
            end
        end
    end

    //Position Pointer Logic
    always_ff @(posedge clk) begin
        if(!resetN) begin
            dlcPos <= 0;
        end else begin
            if(inDLC) begin
                if(dlcShift) begin
                    if(stuffOS) begin
                        //We are shifiting a bit in, and also saying the bit is a stuff bit, do not increment.
                        dlcPos <= dlcPos;
                    end else begin
                        dlcPos <= dlcPos + 1;
                    end
                end else begin
                    if(stuffOS) begin
                        dlcPos <= dlcPos - 1;
                    end else begin
                        dlcPos <= dlcPos;
                    end
                end
            end else begin
                dlcPos <= 0;
            end
        end
    end

    typedef enum logic[3:0] {s_init, s_hold, s_sample, s_wait0, s_wait1, s_wait2, s_lenCheck, s_dlcSample, s_wait3, s_wait4, s_wait5, s_dlcLenCheck, s_finish} sizeDetect_t;

    sizeDetect_t currState, nextState;

    always_ff @(posedge clk) begin
        if(!resetN) begin
            currState <= s_init;
        end else begin
            currState <= nextState;
        end
    end

    always_comb begin
        unique case(currState)
            s_init: begin
                if(resetN) begin
					nextState = s_hold;
				end
				else begin
					nextState = currState;
				end
            end
            s_hold: begin
                if (enable) begin
                    nextState = s_sample;
                end else begin
                    nextState = currState;
                end
            end
            s_sample, s_dlcSample: begin
                if(samplePulse) begin
                    nextState = currState.next;
                end else begin
                    nextState = currState;
                end
            end
            s_wait0, s_wait1, s_wait2, s_wait3, s_wait4, s_wait5: begin
                nextState = currState.next;
            end
            s_lenCheck: begin
                if(validCounter < PRELUDE_LENGTH) begin
                    nextState = s_sample;
                end else begin
                    nextState = s_dlcSample;
                end
            end
            s_dlcLenCheck: begin
                if(dlcPos < DLC_LEN) begin
                    nextState = s_dlcSample;
                end else begin
                    nextState = s_finish;
                end
            end
            s_finish: begin
                nextState = currState;
            end
        endcase
    end

    always_comb begin
        unique case(currState)
            s_init, s_hold, s_sample, s_wait1, s_wait2, s_lenCheck: {inDLC,shiftIn,dlcShift,completeConfig} = 4'b0000;
            s_wait0: {inDLC,shiftIn,dlcShift,completeConfig} = 4'b0100;
            s_dlcSample, s_wait4, s_wait5, s_dlcLenCheck: {inDLC,shiftIn,dlcShift,completeConfig} = 4'b1000;
            s_wait3: {inDLC,shiftIn,dlcShift,completeConfig} = 4'b1010;
            s_finish: {inDLC,shiftIn,dlcShift,completeConfig} = 4'b0001;
        endcase
    end

endmodule