`timescale 1ns / 1ps



module storagePlayback_tb();

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
    logic resetNplayback;

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
    logic [7:0] writeDataCount;
	
    //Storage logic
    logic [8:0] baseAddr;
    logic enableStore;
    logic returnToBaseAddr;
    logic incrementAddr;
    logic [31:0] currOut;
    logic writeDBG;
    logic [7:0] pointerDBG;
    logic run;

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
        .numWrites          ({8'b0,writeDataCount}),
        .sendData           (writeData),
        .pulseWrite         (pulseWrite),
        .readReq            (requestRead),
        .writeReq           (requestWrite),
        .wr_data_count      (writeDataCount)
    );


    sigStorage dut(.clk, .resetN, .baseAddr, .numFetches(numReads), .storeConfig(enableStore), .bramIn(requestData), .fetch(run), .returnToBaseAddr,
         .request(advFIFO), .incrementAddr, .playbackOut(currOut), .writeDBG, .pointerDBG);
    playbackUnit playback(.clk(clk), .resetN(resetNplayback), .enable(enable), .playbackSig(currOut), .requestNum(numReads), .playbackClk(playbackClk),
         .dOut(dOut), .dEnable(dEnable), .advFIFO(incrementAddr), .complete(done));

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
        baseAddr = 0;
        enableStore = 0;
        returnToBaseAddr = 0;
        incrementAddr = 0;
        run = 0;
        resetNplayback = 1;
    end


    //Clock generation block
    always begin
        #2.5 clk = !clk;
    end
    always begin
        #5 playbackClk = !playbackClk;
    end



    logic [31:0] memVals [0:15];

    initial begin
        memVals[0] = 32'h6F3B2A1C;
        memVals[1] = 32'h12345678;
        memVals[2] = 32'hEABC9724;
        memVals[3] = 32'h33333333;
        memVals[4] = 32'h456789AB;
        memVals[5] = 32'hBB1BB1BB;
        memVals[6] = 32'h1BBBBBB1;
        memVals[7] = 32'h0F0F0F0F;
        memVals[8] = 32'h6678291C;
        memVals[9] = 32'hBcA46127;
        memVals[10] = 32'hFABC97C1;
        memVals[11] = 32'h44444444;
        memVals[12] = 32'h87194586;
        memVals[13] = 32'hAA66AA66;
        memVals[14] = 32'h27658658;
        memVals[15] = 32'h96759371;
    end

    initial begin
        #5; //Just wait so we are posedge aligned

        //Initialize all the values
        resetN = 0;
        resetNplayback = 0;
        #25;
        

        numReads = 8; //Request 8 memory operations
        requestAddr = 0;
     
        returnToBaseAddr = 1;
        
        #15;
        resetN = 1;
        resetNplayback = 1;
        #25;
        enableStore = 1;
        #5;
        returnToBaseAddr = 0;
        requestRead = 1;
        enableStore = 0;
        #5;
        wait(bramEnable == 1);
        for(int i =0; i < 8; i++) begin
            #15;
            //Output the data;
            readData = memVals[i];
            //Wait for bramEnable to be deasserted.
            #15;
        end
        #30;
        requestRead = 0;
        #20;
        run = 1;

        #400;
        run  = 0;
        #25;
        returnToBaseAddr = 1;
        #25;
        returnToBaseAddr = 0;
        #200;
        enable = 1;
        #10;
        wait(done == 1);
        enable = 0;
        #50;
        numReads = 10; //Request 8 memory operations
        requestAddr = 6;
        baseAddr = 8;
        #15;
        enableStore = 1;
        #10;
        enableStore = 0;
        #15;
        returnToBaseAddr = 1;
        #15;
        returnToBaseAddr = 0;
        #25;
        clear = 0;
        resetNplayback = 0;
        #25;
        clear = 1;
        resetNplayback = 1;
        #25;
        requestRead = 1;
        
        wait(bramEnable == 1);
        for(int i =0; i < 10; i++) begin
            #15;
            //Output the data;
            readData = memVals[i];
            //Wait for bramEnable to be deasserted.
            #15;
        end
        #30;
        requestRead = 0;
        #20;
        run = 1;

        #1000;
        run  = 0;
        #25;
        returnToBaseAddr = 1;
        #25;
        returnToBaseAddr = 0;
        #200;
        enable = 1;
        #10;
        wait(done == 1);
        #25;

    end
    
    
	

endmodule
