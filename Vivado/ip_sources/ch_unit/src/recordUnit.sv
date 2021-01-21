module recordUnit
    (
        //Normal Inputs
		input logic clk,
		input logic resetN,
		input logic enable,
        input logic samplePulse,
        input logic dIn,

        output logic [31:0] recordedData,
        output logic dataValid
    );

    logic shiftIn;
    logic [5:0] incrementer; 

    //TODO: HANDLE ENABLE AND THE SENDING OF REMAINING DATA WHEN STOPPED NOT ON 32 BIT POINT

    oneshot os(.*, .pulse(samplePulse), .oneshot(shiftIn));

    //Incrementer to keep track of when to write data.

    always_ff @(posedge clk) begin
        if(!resetN) begin
            incrementer <= 0;
        end else begin
            if(shiftIn) begin
                if(incrementer != 6'b100001) begin //If it is equal to 33,
                    incrementer <= incrementer + 1;
                end
                else begin
                    incrementer <= 6'b000010; //Set to 2, write is high for 2 cycles, but is Oneshot so should not be an issue
                end
            end else begin
                incrementer <= incrementer;
            end
        end
    end

    //dataValid assignation
    always_comb begin
        dataValid = incrementer[5];
    end

    //Shift logic
    always_ff @(posedge clk) begin
        if(!resetN) begin
            recordedData <= 32'h00000000;
        end else begin
            if(shiftIn) begin
                recordedData <= {recordedData, recordedData[31:1]};
            end else begin
                recordedData <= recordedData;
            end
        end
    end


endmodule