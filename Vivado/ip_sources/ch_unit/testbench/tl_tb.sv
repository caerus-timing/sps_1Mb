`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2020 01:21:07 PM
// Design Name: 
// Module Name: tl_tb
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


module tl_tb(
    output logic out,
    output logic outEnable,
    output logic interrupt,
    output logic ready,
    output logic [15:0] validSigNum,
    output logic invalidSignal,
    output logic [31 : 0] addr,
    output logic [31 : 0] writeData,
    output logic bramEnable,
    output logic bramWe,
    output logic bramResetOut,
    output logic [3:0] stateDbg
    );
    
    parameter integer BRAM_ADDR_SIZE = 15;
    parameter integer BRAM_DATA_SIZE = 32;
    parameter integer BRAM_DEPTH     = 32768;
    
    logic clk;
    logic resetN;
    logic enable;
    logic in;
    logic [31:0] canID;
    logic [31:0] baudRate;
    logic [31:0] playbackRate; //Rates are multiples of 10ns. Baudrate can not be 0, but a playbackRate of 0 will play at system clk speed.
    logic setValues;
    logic [15:0] sigSizeWords; //The number of 32 bit words that makeup a signal. These magic numbers are to fit them into a 32 bit registe
    logic [15:0] numSigs;
    logic [BRAM_DATA_SIZE - 1: 0] readData;
    logic resetBusy;
    
    
    
    sampleDetect_tl uut(.dIn(in), .sampleOut(out), .outSwitch(outEnable), .*);
    
    //Set all values at the beginning
    initial begin
        clk = 1;
        resetN = 1;
        enable = 1;
        in = 0;
        interrupt = 0;
        canID = 0;
        baudRate = 0;
        playbackRate = 0;
        setValues = 0;
        sigSizeWords = 0;
        numSigs = 0;
        readData = 0;
        resetBusy = 0;
    end
    
    //Clock generation block
    always begin
        #2.5 clk = !clk;
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
    
    task stateSetupRun();
        begin
            //Initialize all the values
            resetN = 0;
            resetBusy = 1;
    
            #30;
    
            resetN = 1;
          
            #15;
            
            resetBusy = 0;
            //Set values not at the same time, we want to mimic the system being setup like real
            #20;
            
            canID = {21'h1FFFFF,11'b00010011011};
            #25;
            baudRate = 20;
            #25;
            playbackRate = 1; //Rates are multiples of 10ns. Baudrate can not be 0, but a playbackRate of 0 will play at system clk speed.
            #25;
            sigSizeWords = 2; //The number of 32 bit words that makeup a signal.
            #25;
            numSigs = 4;
            #25;
            setValues = 1;
            #25;
            enable = 1;
            
                    
            for(int i =0; i < 2; i++) begin
                wait(bramEnable == 1);
                //Hold for 2 clk cycles, per spec
                @(posedge clk);
                #1;
                @(posedge clk);
                #1;
                //Output the data;
                readData = memVals[i];
                //Wait for bramEnable to be deasserted.
                wait(bramEnable == 0);
                #1;
            end
            
            //Memory is configured. I'm going to wait for 50 cycles to simulate the intermediate steps that are being done
            @(posedge clk);
            #245;
            
            //Enable the playback.
            enable = 1;
            //We will have a second request
            for(int i =2; i < 4; i++) begin
                wait(bramEnable == 1);
                //Hold for 2 clk cycles, per spec
                @(posedge clk);
                #1;
                @(posedge clk);
                #1;
                //Output the data;
                readData = memVals[i];
                //Wait for bramEnable to be deasserted.
                wait(bramEnable == 0);
                #1;
            end
                   
            #20;
        end
    endtask
    
    task sendSig1();
        begin
            in = 1;
            #4000;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 1;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 1;
            #200;
        end
    endtask
    
    task sendSig2();
        begin
            in = 1;
            #4000;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 1;
            #200;
        end
    endtask
    
    task sendSig3();
        begin
            in = 1;
            #4000;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 1;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 1;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 1;
        end
    endtask        
    
     initial begin
        #5; //Just wait so we are posedge aligned
        fork
            begin
                //Run the initial setup
                stateSetupRun();
            end
            
            begin
                sendSig3();
                sendSig2();
                sendSig3();
                sendSig1();
                sendSig1();
            end
        join
        wait(interrupt == 1);
        //Now we start the second round of testing, seeing how the system reacts to being run again
        #100us;
        fork
            begin
                enable = 0;
                #25;
                canID = {21'h1FFFFF,11'b00010011011};
                #25;
                baudRate = 20;
                #25;
                playbackRate = 1; //Rates are multiples of 10ns. Baudrate can not be 0, but a playbackRate of 0 will play at system clk speed.
                #25;
                sigSizeWords = 2; //The number of 32 bit words that makeup a signal.
                #25;
                numSigs = 4;
                #25;
                setValues = 1;
                #25;
                enable = 1;
                for(int i =0; i < 2; i++) begin
                    wait(bramEnable == 1);
                    //Hold for 2 clk cycles, per spec
                    @(posedge clk);
                    #1;
                    @(posedge clk);
                    #1;
                    //Output the data;
                    readData = memVals[i];
                    //Wait for bramEnable to be deasserted.
                    wait(bramEnable == 0);
                    #1;
                end
            
                //Memory is configured. I'm going to wait for 50 cycles to simulate the intermediate steps that are being done
                @(posedge clk);
                #245;
                
                //Enable the playback.
                enable = 1;
                //We will have a second request
                for(int i =2; i < 3; i++) begin
                    wait(bramEnable == 1);
                    //Hold for 2 clk cycles, per spec
                    @(posedge clk);
                    #1;
                    @(posedge clk);
                    #1;
                    //Output the data;
                    readData = memVals[i];
                    //Wait for bramEnable to be deasserted.
                    wait(bramEnable == 0);
                    #1;
                end
                @(posedge clk);
            end
            
            begin
                #25us;
                sendSig3();
                sendSig2();
                sendSig3();
                sendSig1();
                sendSig1();
            end
        join
        wait(interrupt == 1);
        //Next we see how the system reacts to not finding a valid signal
        #100us;
        fork
            begin
                enable = 0;
                #25;
                canID = {21'h1FFFFF,11'b00010011011};
                #25;
                baudRate = 20;
                #25;
                playbackRate = 1; //Rates are multiples of 10ns. Baudrate can not be 0, but a playbackRate of 0 will play at system clk speed.
                #25;
                sigSizeWords = 2; //The number of 32 bit words that makeup a signal.
                #25;
                numSigs = 4;
                #25;
                setValues = 1;
                #25;
                enable = 1;
                for(int i =0; i < 2; i++) begin
                    wait(bramEnable == 1);
                    //Hold for 2 clk cycles, per spec
                    @(posedge clk);
                    #1;
                    @(posedge clk);
                    #1;
                    //Output the data;
                    readData = memVals[i];
                    //Wait for bramEnable to be deasserted.
                    wait(bramEnable == 0);
                    #1;
                end
            
                //Memory is configured. I'm going to wait for 50 cycles to simulate the intermediate steps that are being done
                @(posedge clk);
                #245;
                
                //Enable the playback.
                enable = 1;
                //We will have a second request
                for(int i =2; i < 4; i++) begin
                    wait(bramEnable == 1);
                    //Hold for 2 clk cycles, per spec
                    @(posedge clk);
                    #1;
                    @(posedge clk);
                    #1;
                    //Output the data;
                    readData = memVals[i];
                    //Wait for bramEnable to be deasserted.
                    wait(bramEnable == 0);
                    #1;
                end
                @(posedge clk);
                //We will have a third request
                for(int i =4; i < 6; i++) begin
                    wait(bramEnable == 1);
                    //Hold for 2 clk cycles, per spec
                    @(posedge clk);
                    #1;
                    @(posedge clk);
                    #1;
                    //Output the data;
                    readData = memVals[i];
                    //Wait for bramEnable to be deasserted.
                    wait(bramEnable == 0);
                    #1;
                end
                @(posedge clk);
                for(int i =4; i < 6; i++) begin
                    wait(bramEnable == 1);
                    //Hold for 2 clk cycles, per spec
                    @(posedge clk);
                    #1;
                    @(posedge clk);
                    #1;
                    //Output the data;
                    readData = memVals[i];
                    //Wait for bramEnable to be deasserted.
                    wait(bramEnable == 0);
                    #1;
                end
                @(posedge clk);
            end
            
            begin
                #25us;
                sendSig3();
                sendSig2();
                sendSig3();
                sendSig2();
                sendSig2();
                sendSig2();
                sendSig2();
                sendSig2();
                sendSig2();
            end
        join
        //Finally we need to see if the system can clear out all values without having to be fully reset.
    end
    
    
endmodule
