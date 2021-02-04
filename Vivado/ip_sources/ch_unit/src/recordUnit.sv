module recordUnit
    (
        //Normal Inputs
		input logic clk,
		input logic resetN,
		input logic enable,
        input logic samplePulse,
        input logic dIn,

        output logic [31:0] recordedOut,
        output logic dataValid,
        output logic [31:0] runningTotal,
        output logic [5:0] incrementer

    );

    logic dataValidIn;
    logic shiftIn;
    logic shiftInUnGated;

    always_comb begin
        dataValid = dataValidIn & enable;
    end
    
    //Output latching
    always_ff @(posedge clk) begin
        if(!resetN) begin
            recordedOut <= 0;
        end else begin
            if(shiftIn) begin
                if(incrementer != 6'b100000) begin //If it is equal to 33,
                    recordedOut <= recordedOut;
                end
                else begin
                    recordedOut <= runningTotal;
                end
            end else begin
                recordedOut <= recordedOut;
            end
        end
    end

    //DataValid Latching
    always_ff @(posedge clk) begin
        if(!resetN) begin
            dataValidIn <= 0;
        end else begin
            if(incrementer == 6'b100000) begin
                dataValidIn <= 1;
            end else if(incrementer == 6'b1) begin
                dataValidIn <= 0;
            end else begin
                dataValidIn <= dataValid;
            end
        end
    end


    oneshot osSample(.*, .pulse(samplePulse), .oneshot(shiftInUnGated));

    always_comb begin
        shiftIn = enable & shiftInUnGated;
    end


    //Incrementer to keep track of when to write data.

    always_ff @(posedge clk) begin
        if(!resetN) begin
            incrementer <= 0;
        end else begin
            if(shiftIn) begin
                if(incrementer != 6'b100000) begin //If it is equal to 33,
                    incrementer <= incrementer + 1;
                end
                else begin
                    incrementer <= 6'b000000; //Set to 0;
                end
            end else begin
                incrementer <= incrementer;
            end
        end
    end


    //Shift logic
    always_ff @(posedge clk) begin
        if(!resetN) begin
            runningTotal <= 32'h00000000;
        end else begin
            if(shiftIn) begin
                runningTotal <= {dIn, runningTotal[31:1]};
            end else begin
                runningTotal <= runningTotal;
            end
        end
    end


endmodule