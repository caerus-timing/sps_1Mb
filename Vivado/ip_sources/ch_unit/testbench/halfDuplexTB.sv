`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 03/21/2019 06:41:23 PM
// Design Name:
// Module Name: clk_en_sig_tb
// Project Name:
// Target Devices:
// Tool Versions:
// Description:
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////


module halfDuplex_tb();

    //Common
    logic clk;
    logic resetN;
    logic advFIFO;
    logic [31: 0] requestData;
    logic [15:0] numReads;

    //playback unit
    logic dOut;
    logic dEnable;
    logic playbackClk;
    logic enable;
    logic done;

    //BRAM Connection
    logic [31: 0] readData;
	logic resetBusy;
	logic [14 : 0] addrBRAM;
	logic [31: 0] dataOut;
	logic bramEnable;
	logic bramWe;
    
    //BRAM Controller Connections
    logic clear;
    logic [15:0] requestAddr;
    logic dataValid;

    logic [15:0] outputWrite_addr;
    logic [31: 0] writeData;
    logic pulseWrite;
    logic requestRead;
    logic requestWrite;
    logic [8:0] writeDataCount;
	


    halfDuplex controller(
    	.clk                (clk),
        .resetN             (resetN),
        .advanceBuffer      (advFIFO),
        .clear              (clear),
        .requestAddr_read   (requestAddr),
        .numReads           (numReads),
        .requestData        (requestData),
        .dataValid          (dataValid),
        .readData           (readData),
        .resetBusy          (resetBusy),
        .addr               (addrBRAM),
        .writeData          (dataOut),
        .bramEnable         (bramEnable),
        .bramWe             (bramWe),
        .requestAddr_write  (outputWrite_addr),
        .numWrites          (writeDataCount),
        .sendData           (writeData),
        .pulseWrite         (pulseWrite),
        .readReq            (requestRead),
        .writeReq           (requestWrite),
        .wr_data_count      (writeDataCount)
    );

    playbackUnit dut(.clk(clk), .resetN(resetN), .enable(enable), .playbackSig(requestData), .requestNum(numReads), .playbackClk(playbackClk), .dOut(dOut), .dEnable(dEnable), .advFIFO(advFIFO), .complete(done));

    //Set all values at the beginning
    initial begin
        clk = 1;
        playbackClk = 1;
        resetN = 1;
        clear = 1;
        requestAddr = 0;
        numReads = 0;
        readData = 0;
        resetBusy = 0;
        enable = 0;
        requestRead = 0;
        requestWrite = 0;
        outputWrite_addr = 0;
        pulseWrite = 0;
        writeData = 0;
    end


    //Clock generation block
    always begin
        #2.5 clk = !clk;
    end
    always begin
        #5 playbackClk = !playbackClk;
    end



    logic [31:0] memVals [0:7];

    initial begin
        memVals[0] = 32'h6F3B2A1C;
        memVals[1] = 32'h12345678;
        memVals[2] = 32'hEABC9724;
        memVals[3] = 32'h33333333;
        memVals[4] = 32'h456789AB;
        memVals[5] = 32'hBB1BB1BB;
        memVals[6] = 32'h1BBBBBB1;
        memVals[7] = 32'h0F0F0F0F;
    end

    initial begin
        #5; //Just wait so we are posedge aligned

        //Initialize all the values
        resetN = 0;

        #25;

        numReads = 8; //Request 8 memory operations
        requestAddr = 0;
        
        #15;

        resetN = 1;
        requestRead = 1;
        wait(bramEnable == 1);
        for(int i =0; i < 8; i++) begin
            //Hold for 2 clk cycles, per spec
            @(posedge clk);
            #1;
            @(posedge clk);
            #1;
            //Output the data;
            readData = memVals[i];
            //Wait for bramEnable to be deasserted.
            #30;
        end
        #30;
        requestRead = 0;
        
        //Memory is configured. I'm going to wait for 50 cycles to simulate the intermediate steps that are being done
        @(posedge clk);
        #245;

         #5; //Just wait so we are posedge aligned

        //Initialize all the values
        resetN = 0;

        #25;

        numReads = 5; //Request 8 memory operations
        requestAddr = 7;
        
        #15;

        resetN = 1;
        requestRead = 1;
        wait(bramEnable == 1);
        for(int i =0; i < 5; i++) begin
            //Hold for 2 clk cycles, per spec
            @(posedge clk);
            #1;
            @(posedge clk);
            #1;
            //Output the data;
            readData = memVals[i];
            //Wait for bramEnable to be deasserted.
            #30;
        end
        #30;
        requestRead = 0;
        
        //Memory is configured. I'm going to wait for 50 cycles to simulate the intermediate steps that are being done
        @(posedge clk);
        #245;
        requestWrite = 0;
        //Now WRITE TO THE THING
        for(int i=0; i < 245; i++)  begin
            @(posedge clk);
            writeData = i * 2;
            @(posedge clk);
            pulseWrite = 1;
            @(posedge clk);
            @(posedge clk);
            pulseWrite = 0;
        end
        requestWrite = 1; 
        wait(dataValid == 1);
        requestWrite = 0;
        #50;
        
        //Enable the playback.
        enable = 1;
        wait(done == 1);
        #20;
        $stop;

    end
    
    
	

endmodule
