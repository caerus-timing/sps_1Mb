module recordMaster 
    (
        //FSM & Common Signal Inputs
        input logic clk,
        input logic resetN,
        input logic enable,
        input logic writeOut,
        input logic determineOW,

        input logic samplePulse,
        input logic dIn,

        output logic owTrue,
        output logic complete,
        output logic owReady,
        output logic pulseWrite,
        output dataTypes_pkg::mem_t playbackOut

    );

    localparam DEPTH = 256;

    import dataTypes_pkg::*;


    //Internal Logic Signals

    //Playback Unit
    dataTypes_pkg::mem_t recordOut;
    logic recordValid;
    logic recordValidOS;
    logic [31:0] currRecordSample; //This is the running sample, and is valid from the MSB down incrementer bits
    logic [5:0] currBit;

    //Signal Storage
    logic resetStore;
    logic [$clog2(DEPTH)-1 : 0] storeBaseAddr;
    logic storeConfig;
    logic read;
    logic returnToStart;
    logic incrementAddr;
    logic request;
    logic clearStoreN;

    //FSM & Supporting Logic
    logic external;
    logic detected;

    logic [63:0] slidingValStorage;
    logic slide;
    logic [6:0] slidingCounter;
    logic latchSliding;


    logic [5:0] finalShiftCount;
    logic [31:0] finalValueShiftStorage;
    logic shiftFinalMsg;
    logic latchFinalMsg;

    logic latchValid;
    logic latchInvalid;
    logic resetValid;

    logic [$clog2(DEPTH)-1 : 0] counter;
    logic resetCounter;

    logic [$clog2(DEPTH)-1 : 0] i;
    logic incrementI;
    logic resetI;

    typedef enum logic[3:0] {s_init, s_hold, s_waitInc, s_increment, s_cmdHold, s_checkValid, s_reqWord, s_wait0, s_shiftFinMsg,
        s_finCheck, s_valid, s_invalid, s_resetCache, s_sendCommitSig, s_incSend, s_wait1} record_t;

    (* fsm_encoding = "sequential" *) (* mark_debug = "true" *) record_t currState, nextState;


    //
    //Submodules
    //

    //Record Unit
    recordUnit rU(.clk, .resetN, .enable, .samplePulse, .dIn, .recordedOut(recordOut), .dataValid(recordValid),
        .runningTotal(currRecordSample), .incrementer(currBit));

    //Signal Storage
    sigStorage #(.DEPTH(DEPTH)) sStore(.clk, .resetN(resetStore), .baseAddr(9'b0), .numFetches(1'b1), .storeConfig(storeConfig),
        .fetch(read), .returnToBaseAddr(returnToStart), .request, .incrementAddr(incrementAddr), .bramIn(recordOut), .playbackOut);

    oneshot os(.clk, .resetN, .pulse(recordValid), .oneshot(recordValidOS));

    //
    //Supporting Logic
    //

    //Store Reset Logic
    always_comb begin
        resetStore = resetN & clearStoreN;
    end

    /*
    //Request to Output Selection
    always_comb begin
        pulseWrite = external & request;
    end
    */

    //32 bit Equals Detector & 6 bit rundetector
    always_comb begin
        detected = (playbackOut.rawMemData == 32'h0)  || (slidingValStorage[5:0] == 6'b0);
    end

    //Final Message Shifting
    always_ff @(posedge clk) begin
        if(!resetN) begin
            finalShiftCount <= 0;
            finalValueShiftStorage <= 0;
        end else begin
            if(latchFinalMsg) begin
                finalValueShiftStorage <= currRecordSample;
                finalShiftCount <= 0;
            end else begin
                if(shiftFinalMsg) begin
                    if(finalShiftCount < (32-currBit)) begin
                        finalShiftCount <= finalShiftCount + 1;
                        finalValueShiftStorage <= {1'b1, finalValueShiftStorage[31:1]};
                    end else begin
                        finalValueShiftStorage <= finalShiftCount;
                        finalShiftCount <= 6'h3F;
                    end
                end else begin
                    finalValueShiftStorage <= finalShiftCount;
                    finalShiftCount <= finalShiftCount;
                end
            end
        end
    end

    //FinalMessageDetect
    always_ff @(posedge clk) begin
        if(!resetN) begin
            slidingValStorage <= 0;
            slidingCounter <= 0;
        end else begin
            if(latchSliding) begin
                slidingValStorage <= {finalValueShiftStorage[31:0], playbackOut.rawMemData};
                slidingCounter <= 0;
            end else begin
                if(slide) begin
                    if(slidingCounter < 64) begin //I know I will definately over use some clocks, but this is the calculation phase, and I'm not too woried about that
                        slidingCounter <= slidingCounter + 1;
                        slidingValStorage <= {1'b1, slidingValStorage[63:1]};
                    end else begin
                        slidingCounter <= slidingCounter;
                        slidingValStorage <= slidingValStorage;
                    end
                end else begin
                    slidingCounter <= slidingCounter;
                    slidingValStorage <= slidingValStorage;
                end
            end
        end
    end


    //Output Status Latching
    always_ff @(posedge clk) begin
        if(!resetN || resetValid) begin
            owTrue <= 0;
            owReady <= 0;
            complete <= 0;
        end else begin
            if(latchValid) begin
                owTrue <= 1;
                owReady <= 1;
                complete <= 1;
            end else if(latchInvalid) begin
                owTrue <= owTrue;
                owReady <= 1;
                complete <= 1;
            end else begin
                owTrue <= owTrue;
                owReady <= owReady;
                complete <= complete;
            end
        end
    end

    //Counter Count Logic
    always_ff @(posedge clk) begin
        if(!resetN) begin
            counter <= 0;
        end else begin
            if(resetCounter) begin
                counter <= 0;
            end else if(recordValidOS) begin
                counter <= counter + 1;
            end else begin
                counter <= counter;
            end
        end
    end


    //I count logic
    always_ff @(posedge clk) begin
        if(!resetN) begin
            i <= 0;
        end else begin
            if(resetI) begin
                i <= 0;
            end else if(incrementI) begin
                i <= i + 1;
            end else begin
                i <= i;
            end
        end
    end

    /*typedef enum logic[3:0] {s_init, s_hold, s_waitInc, s_increment, s_cmdHold, s_checkValid, s_reqWord, s_wait0, s_shiftFinMsg,
        s_finCheck, s_valid, s_invalid, s_resetCache, s_sendCommitSig, s_incSend, s_wait1} record_t;
    */

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
                nextState = s_hold;
            end
            s_hold: begin
                if(enable) begin
                    nextState = s_waitInc;
                end else begin
                    nextState = currState;
                end
            end
            s_waitInc: begin
                if(recordValidOS) begin
                    nextState = s_increment;
                end else begin
                    if(!enable) begin
                        nextState = s_cmdHold;
                    end else begin
                        nextState = currState;
                    end
                end
            end
            s_cmdHold: begin
                if(writeOut) begin
                    nextState = s_sendCommitSig;
                end else if(determineOW) begin
                    nextState = s_checkValid;
                end else begin
                    nextState = currState;
                end
            end
            s_checkValid: begin
                if(detected) begin
                    nextState = s_valid;
                end else begin
                    nextState = s_reqWord;
                end
            end
            s_reqWord: begin
                nextState = currState.next;
            end
            s_wait0: begin
                if((i-1) < counter) begin
                    nextState = s_checkValid;
                end
                else begin
                    nextState = s_shiftFinMsg;
                end
            end
            s_shiftFinMsg: begin
                if(finalShiftCount == 6'h3F) begin
                    nextState = s_finCheck;
                end else begin
                    nextState = currState;
                end
            end
            s_finCheck: begin
                if(detected) begin
                    nextState = s_valid;
                end else if (slidingCounter == 64) begin
                    nextState = s_invalid;
                end else begin
                    nextState = currState;
                end
            end
            s_valid, s_invalid: begin
                nextState = s_resetCache;
            end
            s_sendCommitSig, s_incSend: begin
                nextState = currState.next;
            end
            s_wait1: begin
                if(i == counter) begin
                    nextState = s_hold;
                end else begin
                    nextState = s_sendCommitSig;
                end
            end
        endcase
    end
    
    always_comb begin
        unique case(currState)
            s_init, s_checkValid, s_wait1: begin
                {resetCounter, resetI, resetValid, clearStoreN} = 4'b0000;                          //Reset
                {latchFinalMsg, latchSliding, latchValid, latchInvalid, storeConfig} = 5'b00000;    //Latches
                {slide,shiftFinalMsg} = 2'b00;                                                      //Shift Register Commands
                {incrementAddr, incrementI} = 2'b00;                                                //Incrementers
                {pulseWrite, returnToStart, read} = 3'b000;                                         //Storage Commands
            end
            s_hold: begin
                {resetCounter, resetI, resetValid, clearStoreN} = 4'b1101;                          //Reset
                {latchFinalMsg, latchSliding, latchValid, latchInvalid, storeConfig} = 5'b00011;    //Latches
                {slide,shiftFinalMsg} = 2'b00;                                                      //Shift Register Commands
                {incrementAddr, incrementI} = 2'b00;                                                //Incrementers
                {pulseWrite, returnToStart, read} = 3'b010;                                         //Storage Commands
            end
            s_waitInc: begin
                {resetCounter, resetI, resetValid, clearStoreN} = 4'b0010;                          //Reset
                {latchFinalMsg, latchSliding, latchValid, latchInvalid, storeConfig} = 5'b00000;    //Latches
                {slide,shiftFinalMsg} = 2'b00;                                                      //Shift Register Commands
                {incrementAddr, incrementI} = 2'b00;                                                //Incrementers
                {pulseWrite, returnToStart, read} = 3'b000;                                         //Storage Commands
            end
            s_increment: begin
                {resetCounter, resetI, resetValid, clearStoreN} = 4'b0010;                          //Reset
                {latchFinalMsg, latchSliding, latchValid, latchInvalid, storeConfig} = 5'b00000;    //Latches
                {slide,shiftFinalMsg} = 2'b00;                                                      //Shift Register Commands
                {incrementAddr, incrementI} = 2'b00;                                                //Incrementers
                {pulseWrite, returnToStart, read} = 3'b001;                                         //Storage Commands
            end
            s_cmdHold: begin
                {resetCounter, resetI, resetValid, clearStoreN} = 4'b0000;                          //Reset
                {latchFinalMsg, latchSliding, latchValid, latchInvalid, storeConfig} = 5'b00000;    //Latches
                {slide,shiftFinalMsg} = 2'b00;                                                      //Shift Register Commands
                {incrementAddr, incrementI} = 2'b00;                                                //Incrementers
                {pulseWrite, returnToStart, read} = 3'b010;                                         //Storage Commands
            end
            s_reqWord: begin
                {resetCounter, resetI, resetValid, clearStoreN} = 4'b0000;                          //Reset
                {latchFinalMsg, latchSliding, latchValid, latchInvalid, storeConfig} = 5'b00000;    //Latches
                {slide,shiftFinalMsg} = 2'b00;                                                      //Shift Register Commands
                {incrementAddr, incrementI} = 2'b11;                                                //Incrementers
                {pulseWrite, returnToStart, read} = 3'b000;                                         //Storage Commands
            end
            s_wait0: begin
                {resetCounter, resetI, resetValid, clearStoreN} = 4'b0000;                          //Reset
                {latchFinalMsg, latchSliding, latchValid, latchInvalid, storeConfig} = 5'b10000;    //Latches
                {slide,shiftFinalMsg} = 2'b00;                                                      //Shift Register Commands
                {incrementAddr, incrementI} = 2'b00;                                                //Incrementers
                {pulseWrite, returnToStart, read} = 3'b000;                                         //Storage Commands
            end
            s_shiftFinMsg: begin
                {resetCounter, resetI, resetValid, clearStoreN} = 4'b0000;                          //Reset
                {latchFinalMsg, latchSliding, latchValid, latchInvalid, storeConfig} = 5'b01000;    //Latches
                {slide,shiftFinalMsg} = 2'b01;                                                      //Shift Register Commands
                {incrementAddr, incrementI} = 2'b00;                                                //Incrementers
                {pulseWrite, returnToStart, read} = 3'b000;                                         //Storage Commands
            end
            s_finCheck: begin
                {resetCounter, resetI, resetValid, clearStoreN} = 4'b0000;                          //Reset
                {latchFinalMsg, latchSliding, latchValid, latchInvalid, storeConfig} = 5'b00000;    //Latches
                {slide,shiftFinalMsg} = 2'b10;                                                      //Shift Register Commands
                {incrementAddr, incrementI} = 2'b00;                                                //Incrementers
                {pulseWrite, returnToStart, read} = 3'b000;                                         //Storage Commands
            end
            s_valid: begin
                {resetCounter, resetI, resetValid, clearStoreN} = 4'b0000;                          //Reset
                {latchFinalMsg, latchSliding, latchValid, latchInvalid, storeConfig} = 5'b00100;    //Latches
                {slide,shiftFinalMsg} = 2'b00;                                                      //Shift Register Commands
                {incrementAddr, incrementI} = 2'b00;                                                //Incrementers
                {pulseWrite, returnToStart, read} = 3'b000;                                         //Storage Commands
            end
            s_invalid: begin
                {resetCounter, resetI, resetValid, clearStoreN} = 4'b0000;                          //Reset
                {latchFinalMsg, latchSliding, latchValid, latchInvalid, storeConfig} = 5'b00010;    //Latches
                {slide,shiftFinalMsg} = 2'b00;                                                      //Shift Register Commands
                {incrementAddr, incrementI} = 2'b00;                                                //Incrementers
                {pulseWrite, returnToStart, read} = 3'b000;                                         //Storage Commands
            end
            s_resetCache: begin
                {resetCounter, resetI, resetValid, clearStoreN} = 4'b1101;                          //Reset
                {latchFinalMsg, latchSliding, latchValid, latchInvalid, storeConfig} = 5'b00000;    //Latches
                {slide,shiftFinalMsg} = 2'b00;                                                      //Shift Register Commands
                {incrementAddr, incrementI} = 2'b00;                                                //Incrementers
                {pulseWrite, returnToStart, read} = 3'b010;                                         //Storage Commands
            end
            s_sendCommitSig: begin
                {resetCounter, resetI, resetValid, clearStoreN} = 4'b0000;                          //Reset
                {latchFinalMsg, latchSliding, latchValid, latchInvalid, storeConfig} = 5'b00000;    //Latches
                {slide,shiftFinalMsg} = 2'b00;                                                      //Shift Register Commands
                {incrementAddr, incrementI} = 2'b00;                                                //Incrementers
                {pulseWrite, returnToStart, read} = 3'b100;                                         //Storage Commands
            end
            s_incSend: begin
                {resetCounter, resetI, resetValid, clearStoreN} = 4'b0000;                          //Reset
                {latchFinalMsg, latchSliding, latchValid, latchInvalid, storeConfig} = 5'b00000;    //Latches
                {slide,shiftFinalMsg} = 2'b00;                                                      //Shift Register Commands
                {incrementAddr, incrementI} = 2'b11;                                                //Incrementers
                {pulseWrite, returnToStart, read} = 3'b000;                                         //Storage Commands
            end
        endcase
    end





    
endmodule