`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/05/2020 12:59:36 PM
// Design Name: 
// Module Name: errorDetect_tb
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


module delayTL_tb();

    logic clk;
	logic resetN;
	logic dIn;
	logic enable;
    logic sampleOut;
    logic outSwitch;
    logic interrupt;
    logic [31:0] canID;
    logic [31:0] baudRate;
    logic [31:0] owRate; //Rates are multiples of 10ns. Baudrate can not be 0, but a playbackRate of 0 will play at system clk speed.
    logic [31:0] invalidRate;
    logic [31:0] validRate;
    logic [31:0] crcRate;
    logic [31:0] recordRate;
    logic [15:0] sizeOW; //The number of 32 bit words that makeup a signal. These magic numbers are to fit them into a 32 bit register
    logic [15:0] sizeInvalid;
    logic [15:0] sizeValid;
    logic [15:0] sizeCRC;
    logic [15:0] initOW; //The number of 32 bit words that makeup a signal. These magic numbers are to fit them into a 32 bit register
    logic [15:0] initInvalid; 
    logic [15:0] initValid;
    logic [15:0] initCRC;
    logic setValues;

    //BRAM Connection
    logic [31: 0] readData;
	logic resetBusy;
	logic [14 : 0] addr;
	logic [31: 0] writeData;
	logic bramEnable;
	logic bramWe;


	devDelay_tl dut(.clk, .resetN, .enable, .dIn, .sampleOut, .outSwitch, .interrupt, .playbackRateOW(owRate), .playbackRateInvalid(invalidRate),
        .playbackRateValid(validRate), .playbackRateCRC(crcRate), .sigSizeWordsOW(sizeOW), .sigSizeWordsInvalid(sizeInvalid), .sigSizeWordsValid(sizeValid),
        .sigSizeWordsCRC(sizeCRC), .initAddrOW(initOW), .initAddrInvalid(initInvalid), .initAddrValid(initValid), .initAddrCRC(initCRC), .setValues,
        .canID, .baudRate, .recordRate, .readData, .resetBusy, .addr, .writeData, .bramEnable, .bramWe);



	
	//Initial values

    task initializeVariables();
        begin
            readData = 0;
            resetBusy = 0;
            dIn = 1;
            enable = 0;
            canID = 0;
            owRate = 0;
            invalidRate = 0;
            validRate = 0;
            crcRate = 0;
            sizeOW = 0;
            sizeInvalid = 0;
            sizeValid = 0;
            sizeCRC = 0;
            initOW = 0;
            initInvalid = 0;
            initValid = 0;
            initCRC = 0;
            setValues = 0;
            baudRate = 0;
            recordRate = 0;
        end
    endtask
	
	initial begin
	   clk = 1;
	   resetN = 1;
       initializeVariables();
	end
	
	always begin
	   #2.5 clk = !clk;
	end
    
    import dataTypes_pkg::*;
    
    output_t disabled;
    output_t enableOne;
    output_t enableZero;
    mem_t disabledFullSig;
    mem_t oneFullSig;
    mem_t zeroFullSig;
    mem_t fiveSig;
    mem_t sixSig;
    mem_t nineSig;

    mem_t mem [0:50];

    //Mem data
    initial begin
        //Set up commonly repeated memory values
        disabled.enable = 0;
        enableOne.enable = 1;
        enableZero.enable = 1;
        disabled.out = 0;
        enableOne.out = 1;
        enableZero.out = 0;
        disabledFullSig.outputData[0] = disabled;
        disabledFullSig.outputData[1] = disabled;
        disabledFullSig.outputData[2] = disabled;
        disabledFullSig.outputData[3] = disabled;
        disabledFullSig.outputData[4] = disabled;
        disabledFullSig.outputData[5] = disabled;
        disabledFullSig.outputData[6] = disabled;
        disabledFullSig.outputData[7] = disabled;
        disabledFullSig.outputData[8] = disabled;
        disabledFullSig.outputData[9] = disabled;
        disabledFullSig.outputData[10] = disabled;
        disabledFullSig.outputData[11] = disabled;
        disabledFullSig.outputData[12] = disabled;
        disabledFullSig.outputData[13] = disabled;
        disabledFullSig.outputData[14] = disabled;
        disabledFullSig.outputData[15] = disabled;
        oneFullSig.outputData[0] = enableOne;
        oneFullSig.outputData[1] = enableOne;
        oneFullSig.outputData[2] = enableOne;
        oneFullSig.outputData[3] = enableOne;
        oneFullSig.outputData[4] = enableOne;
        oneFullSig.outputData[5] = enableOne;
        oneFullSig.outputData[6] = enableOne;
        oneFullSig.outputData[7] = enableOne;
        oneFullSig.outputData[8] = enableOne;
        oneFullSig.outputData[9] = enableOne;
        oneFullSig.outputData[10] = enableOne;
        oneFullSig.outputData[11] = enableOne;
        oneFullSig.outputData[12] = enableOne;
        oneFullSig.outputData[13] = enableOne;
        oneFullSig.outputData[14] = enableOne;
        oneFullSig.outputData[15] = enableOne;
        zeroFullSig.outputData[0] = enableZero;
        zeroFullSig.outputData[1] = enableZero;
        zeroFullSig.outputData[2] = enableZero;
        zeroFullSig.outputData[3] = enableZero;
        zeroFullSig.outputData[4] = enableZero;
        zeroFullSig.outputData[5] = enableZero;
        zeroFullSig.outputData[6] = enableZero;
        zeroFullSig.outputData[7] = enableZero;
        zeroFullSig.outputData[8] = enableZero;
        zeroFullSig.outputData[9] = enableZero;
        zeroFullSig.outputData[10] = enableZero;
        zeroFullSig.outputData[11] = enableZero;
        zeroFullSig.outputData[12] = enableZero;
        zeroFullSig.outputData[13] = enableZero;
        zeroFullSig.outputData[14] = enableZero;
        zeroFullSig.outputData[15] = enableZero;
        fiveSig.outputData[0] = enableZero;
        fiveSig.outputData[1] = enableZero;
        fiveSig.outputData[2] = enableZero;
        fiveSig.outputData[3] = enableZero;
        fiveSig.outputData[4] = enableOne;
        fiveSig.outputData[5] = enableOne;
        fiveSig.outputData[6] = enableOne;
        fiveSig.outputData[7] = enableOne;
        fiveSig.outputData[8] = enableZero;
        fiveSig.outputData[9] = enableZero;
        fiveSig.outputData[10] = enableZero;
        fiveSig.outputData[11] = enableZero;
        fiveSig.outputData[12] = enableOne;
        fiveSig.outputData[13] = enableOne;
        fiveSig.outputData[14] = enableOne;
        fiveSig.outputData[15] = enableOne;
        sixSig.outputData[0] = enableZero;
        sixSig.outputData[1] = enableZero;
        sixSig.outputData[2] = enableZero;
        sixSig.outputData[3] = enableZero;
        sixSig.outputData[4] = enableOne;
        sixSig.outputData[5] = enableOne;
        sixSig.outputData[6] = enableOne;
        sixSig.outputData[7] = enableOne;
        sixSig.outputData[8] = enableOne;
        sixSig.outputData[9] = enableOne;
        sixSig.outputData[10] = enableOne;
        sixSig.outputData[11] = enableOne;
        sixSig.outputData[12] = enableZero;
        sixSig.outputData[13] = enableZero;
        sixSig.outputData[14] = enableZero;
        sixSig.outputData[15] = enableZero;
        nineSig.outputData[0] = enableOne;
        nineSig.outputData[1] = enableOne;
        nineSig.outputData[2] = enableOne;
        nineSig.outputData[3] = enableOne;
        nineSig.outputData[4] = enableZero;
        nineSig.outputData[5] = enableZero;
        nineSig.outputData[6] = enableZero;
        nineSig.outputData[7] = enableZero;
        nineSig.outputData[8] = enableZero;
        nineSig.outputData[9] = enableZero;
        nineSig.outputData[10] = enableZero;
        nineSig.outputData[11] = enableZero;
        nineSig.outputData[12] = enableOne;
        nineSig.outputData[13] = enableOne;
        nineSig.outputData[14] = enableOne;
        nineSig.outputData[15] = enableOne;


        //
        //OW Signals
        //
        mem[0] = disabledFullSig;
        mem[1] = disabledFullSig;
        mem[2] = disabledFullSig;
        mem[3] = disabledFullSig;
        mem[4].outputData[0] = disabled;//
        mem[4].outputData[1] = disabled;//
        mem[4].outputData[2] = disabled;//
        mem[4].outputData[3] = disabled;//
        mem[4].outputData[4] = disabled;//
        mem[4].outputData[5] = disabled;//
        mem[4].outputData[6] = disabled;//
        mem[4].outputData[7] = enableZero;//
        mem[4].outputData[8] = enableZero;
        mem[4].outputData[9] = enableZero;
        mem[4].outputData[10] = enableZero;
        mem[4].outputData[11] = enableZero;
        mem[4].outputData[12] = enableZero;
        mem[4].outputData[13] = enableZero;
        mem[4].outputData[14] = enableZero;
        mem[4].outputData[15] = enableZero;
        mem[5] = zeroFullSig;
        mem[6] = disabledFullSig;
        //
        //Invalid Signals
        //
        mem[7] = zeroFullSig;
        mem[8] = zeroFullSig;
        mem[9] = zeroFullSig;
        mem[10] = zeroFullSig;
        mem[11] = zeroFullSig;
        mem[12] = zeroFullSig;
        mem[13] = disabledFullSig;
        //
        //Valid Signals
        //
        mem[14] = fiveSig;
        mem[15] = nineSig;

        //Sig 13
        mem[16].outputData[0] = enableOne;
        mem[16].outputData[1] = enableOne;
        mem[16].outputData[2] = enableOne;
        mem[16].outputData[3] = enableOne;
        mem[16].outputData[4] = enableOne;
        mem[16].outputData[5] = enableOne;
        mem[16].outputData[6] = enableOne;
        mem[16].outputData[7] = enableOne;
        mem[16].outputData[8] = enableZero;
        mem[16].outputData[9] = enableZero;
        mem[16].outputData[10] = enableZero;
        mem[16].outputData[11] = enableZero;
        mem[16].outputData[12] = enableOne;
        mem[16].outputData[13] = enableOne;
        mem[16].outputData[14] = enableOne;
        mem[16].outputData[15] = enableOne;

        mem[17] = zeroFullSig;
        mem[18] = nineSig;
        mem[19] = zeroFullSig;

        //Sig 14
        mem[20].outputData[0] = enableOne;
        mem[20].outputData[1] = enableOne;
        mem[20].outputData[2] = enableOne;
        mem[20].outputData[3] = enableOne;
        mem[20].outputData[4] = enableOne;
        mem[20].outputData[5] = enableOne;
        mem[20].outputData[6] = enableOne;
        mem[20].outputData[7] = enableOne;
        mem[20].outputData[8] = enableOne;
        mem[20].outputData[9] = enableOne;
        mem[20].outputData[10] = enableOne;
        mem[20].outputData[11] = enableOne;
        mem[20].outputData[12] = enableZero;
        mem[20].outputData[13] = enableZero;
        mem[20].outputData[14] = enableZero;
        mem[20].outputData[15] = enableZero;

        mem[21] = sixSig;
        mem[22] = nineSig;
        mem[23] = zeroFullSig;
        mem[24].outputData[0] = enableOne;
        mem[24].outputData[1] = enableOne;
        mem[24].outputData[2] = enableOne;
        mem[24].outputData[3] = enableOne;
        mem[24].outputData[4] = enableOne;
        mem[24].outputData[5] = enableOne;
        mem[24].outputData[6] = enableOne;
        mem[24].outputData[7] = enableOne;
        mem[24].outputData[8] = enableOne;
        mem[24].outputData[9] = enableOne;
        mem[24].outputData[10] = enableOne;
        mem[24].outputData[11] = enableOne;
        mem[24].outputData[12] = enableZero;
        mem[24].outputData[13] = enableZero;
        mem[24].outputData[14] = enableZero;
        mem[24].outputData[15] = enableZero;
        mem[25] = sixSig;
        mem[26] = nineSig;
        mem[27] = fiveSig;
        mem[28] = fiveSig;
        mem[29] = fiveSig;
        mem[30] = sixSig;
        mem[31] = oneFullSig;
        mem[32] = disabledFullSig;

        //Error CRC
        mem[33] = fiveSig;
        mem[34] = nineSig;

        //Sig 13
        mem[35].outputData[0] = enableOne;
        mem[35].outputData[1] = enableOne;
        mem[35].outputData[2] = enableOne;
        mem[35].outputData[3] = enableOne;
        mem[35].outputData[4] = enableOne;
        mem[35].outputData[5] = enableOne;
        mem[35].outputData[6] = enableOne;
        mem[35].outputData[7] = enableOne;
        mem[35].outputData[8] = enableZero;
        mem[35].outputData[9] = enableZero;
        mem[35].outputData[10] = enableZero;
        mem[35].outputData[11] = enableZero;
        mem[35].outputData[12] = enableOne;
        mem[35].outputData[13] = enableOne;
        mem[35].outputData[14] = enableOne;
        mem[35].outputData[15] = enableOne;

        mem[36] = zeroFullSig;
        mem[37] = nineSig;
        mem[38] = zeroFullSig;

        //Sig 14
        mem[39].outputData[0] = enableOne;
        mem[39].outputData[1] = enableOne;
        mem[39].outputData[2] = enableOne;
        mem[39].outputData[3] = enableOne;
        mem[39].outputData[4] = enableOne;
        mem[39].outputData[5] = enableOne;
        mem[39].outputData[6] = enableOne;
        mem[39].outputData[7] = enableOne;
        mem[39].outputData[8] = enableOne;
        mem[39].outputData[9] = enableOne;
        mem[39].outputData[10] = enableOne;
        mem[39].outputData[11] = enableOne;
        mem[39].outputData[12] = enableZero;
        mem[39].outputData[13] = enableZero;
        mem[39].outputData[14] = enableZero;
        mem[39].outputData[15] = enableZero;

        mem[40] = sixSig;
        mem[41] = nineSig;
        mem[42] = zeroFullSig;
        mem[43].outputData[0] = enableOne;
        mem[43].outputData[1] = enableOne;
        mem[43].outputData[2] = enableOne;
        mem[43].outputData[3] = enableOne;
        mem[43].outputData[4] = enableOne;
        mem[43].outputData[5] = enableOne;
        mem[43].outputData[6] = enableOne;
        mem[43].outputData[7] = enableOne;
        mem[43].outputData[8] = enableOne;
        mem[43].outputData[9] = enableOne;
        mem[43].outputData[10] = enableOne;
        mem[43].outputData[11] = enableOne;
        mem[43].outputData[12] = enableZero;
        mem[43].outputData[13] = enableZero;
        mem[43].outputData[14] = enableZero;
        mem[43].outputData[15] = enableZero;
        mem[44] = sixSig;
        mem[45] = nineSig;
        mem[46] = zeroFullSig;
        mem[47] = zeroFullSig;
        mem[48] = zeroFullSig;
        mem[49].outputData[0] = enableZero;
        mem[49].outputData[1] = enableZero;
        mem[49].outputData[2] = enableZero;
        mem[49].outputData[3] = enableZero;
        mem[49].outputData[4] = enableOne;
        mem[49].outputData[5] = enableOne;
        mem[49].outputData[6] = enableOne;
        mem[49].outputData[7] = enableOne;
        mem[49].outputData[8] = enableOne;
        mem[49].outputData[9] = enableOne;
        mem[49].outputData[10] = enableOne;
        mem[49].outputData[11] = enableOne;
        mem[49].outputData[12] = disabled;
        mem[49].outputData[13] = disabled;
        mem[49].outputData[14] = disabled;
        mem[49].outputData[15] = disabled;
        mem[50] = disabledFullSig;

    end
	
	task pointZero();
        begin
            dIn = 0;
            #10;
        end
    endtask

    task pointOne();
        begin
            dIn = 1;
            #10;
        end
    endtask

    task bitZero();
        begin
            dIn = 0;
            #1000;
        end
    endtask
    task bitOne();
        begin
            dIn = 1;
            #1000;
        end
    endtask

    task dataSeg();
        begin
            bitOne();
            bitZero();
            bitZero();
            bitOne();
            bitOne();
            bitOne();
            bitOne();
            bitZero();
        end
    endtask

    task sendUnstuffedID();
        begin
            bitZero();
            bitZero();
            bitZero();
            bitOne();
            bitZero();
            bitOne();
            bitOne();
            bitZero();
            bitOne();
            bitOne();
            bitOne();
            bitOne();
            bitZero();
            bitZero();
            bitZero();
        end
    endtask
    
    task sendUnstuffedLengthSix();
        begin
            bitZero();
            bitOne();
            bitOne();
            bitZero();
            dataSeg();
            dataSeg();
            dataSeg();
            dataSeg();
            dataSeg();
            dataSeg();
        end
    endtask

    task sendUnstuffedLengthFive();
        begin
            bitZero();
            bitOne();
            bitZero();
            bitOne();
            dataSeg();
            dataSeg();
            dataSeg();
            dataSeg();
            dataSeg();
        end
    endtask

    task sendUnstuffedLengthSeven();
        begin
            bitZero();
            bitOne();
            bitOne();
            bitOne();
            dataSeg();
            dataSeg();
            dataSeg();
            dataSeg();
            dataSeg();
            dataSeg();
            dataSeg();
        end
    endtask

    task sendStuffedLengthSix();
        begin
            bitZero();
            bitZero();
            bitOne();
            bitOne();
            bitZero();
            dataSeg();
            dataSeg();
            dataSeg();
            dataSeg();
            dataSeg();
            dataSeg();
        end
    endtask

    task sendstuffedID();
        begin
            bitZero();
            bitZero();
            bitZero();
            bitZero();
            bitZero();
            bitOne();
            bitZero();
            bitOne();
            bitZero();
            bitOne();
            bitZero();
            bitOne();
            bitOne();
            bitZero();
            bitZero();
            bitZero();
        end
    endtask
	

    task sendInvalidID();
        begin
            bitZero();
            bitOne();
            bitZero();
            bitZero();
            bitOne();
            bitZero();
            bitOne();
            bitZero();
            bitZero();
            bitOne();
            bitOne();
            bitZero();
            bitZero();
            bitZero();
        end
    endtask

    task errorFooter();
        begin
            bitOne();
            bitOne();
            bitOne();
            bitOne();
            bitOne();
        end
    endtask
    
    task stdCRCEnd();
        begin
            bitOne();
            bitOne();
            bitOne();
            bitOne();
            bitZero();
            bitOne();
            bitOne();
            bitOne();
            bitZero();
            bitZero();
            bitOne();
            bitOne();
            bitZero();
            bitZero();
            bitZero();
            bitOne();
        end
    endtask

    task stdEpilogue();
        begin
            bitOne();
            bitOne();
            bitOne();
            bitOne();
            bitOne();
            bitOne();
            bitOne();
            bitOne();
        end
    endtask

    task calcSignalPassEasy();
        begin
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointZero();
            pointZero();
            pointZero();
            pointZero();
            pointZero();
            pointZero();
            pointZero();
            pointZero();
            pointZero();
            pointZero();
            pointZero();
            pointZero();
            pointZero();
            pointZero();
            pointZero();
            pointZero();
            pointZero();
            pointZero();
            pointZero();
            pointZero();
            pointZero();
            pointZero();
            pointZero();
            pointZero();
            pointZero();
            pointZero();
            pointZero();
            pointZero();
            pointZero();
            pointZero();
            pointZero();
            pointZero();
            pointZero();
            pointZero();
            pointZero();
            pointZero();
            pointZero();
            pointZero();
            pointZero();
            pointZero();
            pointZero();
            pointZero();
            pointZero();
            pointZero();
            pointZero();
            pointZero();
            pointZero();
            pointZero();
            pointZero();
            pointZero();
        end
    endtask

    task calcSignalPassHard();
        begin
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointZero();
            pointZero();
            pointZero();
            pointZero();
            pointZero();
            pointZero();
            pointZero();
            pointZero();
            pointZero();
            pointZero();
        end
    endtask

    task calcSignalPassEdge();
        begin
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointZero();
            pointZero();
            pointZero();
            pointZero();
            pointZero();
            pointZero();
        end
    endtask


    task calcSignalFail();
        begin
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointOne();
            pointZero();
        end
    endtask


    task memFetch();
        begin
            //On each BRAM enable, we need to write data
            wait(bramEnable == 1);
            for(int i =0; i < 7; i++) begin
                #15;
                //Output the data;
                readData = mem[i];
                //Wait for bramEnable to be deasserted.
                #15;
            end
            #20;
            wait(bramEnable == 1);
            for(int i =7; i < 14; i++) begin
                #15;
                //Output the data;
                readData = mem[i];
                //Wait for bramEnable to be deasserted.
                #15;
            end
            #20;
            wait(bramEnable == 1);
            for(int i =14; i < 33; i++) begin
                #15;
                //Output the data;
                readData = mem[i];
                //Wait for bramEnable to be deasserted.
                #15;
            end
            #20;
            wait(bramEnable == 1);
            for(int i =33; i < 51; i++) begin
                #15;
                //Output the data;
                readData = mem[i];
                //Wait for bramEnable to be deasserted.
                #15;
            end
        end
    endtask
    
    initial begin

        //Standard Run Format
        #25;
        initializeVariables();
        #5;
        resetN = 0;
        #45;
        resetN = 1;
        #50;
        
        canID = 32'hFFFFF96F;
        owRate = 1;
        invalidRate = 25;
        validRate = 25;
        crcRate = 25;
        sizeOW = 7;
        sizeInvalid = 7;
        sizeValid = 19;
        sizeCRC = 18;
        initOW = 0;
        initInvalid = 7;
        initValid = 14;
        initCRC = 33;
        baudRate = 100;
        recordRate = 1;
        #50;
        enable = 1;
        setValues = 1;
        #5;
        memFetch();
        #90000; //Allow for the system to play the valid signal.
        sendInvalidID();
        #30000; //May need to adjust this value. Need to be in the IF detect for this to work
        dIn = 1;
        #15000;
        sendUnstuffedID();
        sendUnstuffedLengthSeven();
        stdCRCEnd();
        calcSignalPassEasy();
        #9000; //May need to adjust this value. Need to be in the IF detect for this to work
        dIn = 1;
        #15000;
        sendUnstuffedID();
        sendUnstuffedLengthSeven();
        stdCRCEnd();
        calcSignalPassHard();
        #9000; //May need to adjust this value. Need to be in the IF detect for this to work
        dIn = 1;
        #75000;
        #25;
        initializeVariables();
        #5;
        resetN = 0;
        #45;
        resetN = 1;
        #50;
        
        canID = 32'hFFFFF96F;
        owRate = 1;
        invalidRate = 25;
        validRate = 25;
        crcRate = 25;
        sizeOW = 7;
        sizeInvalid = 7;
        sizeValid = 19;
        sizeCRC = 18;
        initOW = 0;
        initInvalid = 7;
        initValid = 14;
        initCRC = 33;
        baudRate = 100;
        recordRate = 1;
        #50;
        enable = 1;
        setValues = 1;
        #5;
        memFetch();
        #90000; //Allow for the system to play the valid signal.
        sendInvalidID();
        #30000; //May need to adjust this value. Need to be in the IF detect for this to work
        dIn = 1;
        #15000;
        sendUnstuffedID();
        sendUnstuffedLengthSeven();
        stdCRCEnd();
        calcSignalPassEasy();
        #9000; //May need to adjust this value. Need to be in the IF detect for this to work
        dIn = 1;
        #15000;
        sendUnstuffedID();
        sendUnstuffedLengthSeven();
        stdCRCEnd();
        calcSignalPassEdge();
        #9000; //May need to adjust this value. Need to be in the IF detect for this to work
        dIn = 1;
        #75000;
        #25;
        initializeVariables();
        #5;
        resetN = 0;
        #45;
        resetN = 1;
        #50;
        
        canID = 32'hFFFFF96F;
        owRate = 1;
        invalidRate = 25;
        validRate = 25;
        crcRate = 25;
        sizeOW = 7;
        sizeInvalid = 7;
        sizeValid = 19;
        sizeCRC = 18;
        initOW = 0;
        initInvalid = 7;
        initValid = 14;
        initCRC = 33;
        baudRate = 100;
        recordRate = 1;
        #50;
        enable = 1;
        setValues = 1;
        #5;
        memFetch();
        #90000; //Allow for the system to play the valid signal.
        sendInvalidID();
        #30000; //May need to adjust this value. Need to be in the IF detect for this to work
        dIn = 1;
        #15000;
        sendUnstuffedID();
        sendUnstuffedLengthSeven();
        stdCRCEnd();
        calcSignalPassEasy();
        #9000; //May need to adjust this value. Need to be in the IF detect for this to work
        dIn = 1;
        #15000;
        sendUnstuffedID();
        sendUnstuffedLengthSeven();
        stdCRCEnd();
        calcSignalFail();
        #9000; //May need to adjust this value. Need to be in the IF detect for this to work
        dIn = 1;
        #75000;
        //NOW LENGTH 6
        
        //Standard Run Format
        #25;
        initializeVariables();
        #5;
        resetN = 0;
        #45;
        resetN = 1;
        #50;
        
        canID = 32'hFFFFF96F;
        owRate = 1;
        invalidRate = 25;
        validRate = 25;
        crcRate = 25;
        sizeOW = 7;
        sizeInvalid = 7;
        sizeValid = 19;
        sizeCRC = 18;
        initOW = 0;
        initInvalid = 7;
        initValid = 14;
        initCRC = 33;
        baudRate = 100;
        recordRate = 1;
        #50;
        enable = 1;
        setValues = 1;
        #5;
        memFetch();
        #90000; //Allow for the system to play the valid signal.
        sendInvalidID();
        #30000; //May need to adjust this value. Need to be in the IF detect for this to work
        dIn = 1;
        #15000;
        sendUnstuffedID();
        sendUnstuffedLengthSix();
        stdCRCEnd();
        calcSignalPassEasy();
        #9000; //May need to adjust this value. Need to be in the IF detect for this to work
        dIn = 1;
        #15000;
        sendUnstuffedID();
        sendUnstuffedLengthSix();
        stdCRCEnd();
        calcSignalPassHard();
        #9000; //May need to adjust this value. Need to be in the IF detect for this to work
        dIn = 1;
        #75000;
        
        //Now 5
        //Standard Run Format
        #25;
        initializeVariables();
        #5;
        resetN = 0;
        #45;
        resetN = 1;
        #50;
        
        canID = 32'hFFFFF96F;
        owRate = 1;
        invalidRate = 25;
        validRate = 25;
        crcRate = 25;
        sizeOW = 7;
        sizeInvalid = 7;
        sizeValid = 19;
        sizeCRC = 18;
        initOW = 0;
        initInvalid = 7;
        initValid = 14;
        initCRC = 33;
        baudRate = 100;
        recordRate = 1;
        #50;
        enable = 1;
        setValues = 1;
        #5;
        memFetch();
        #90000; //Allow for the system to play the valid signal.
        sendInvalidID();
        #30000; //May need to adjust this value. Need to be in the IF detect for this to work
        dIn = 1;
        #15000;
        sendUnstuffedID();
        sendUnstuffedLengthFive();
        stdCRCEnd();
        calcSignalPassEasy();
        #9000; //May need to adjust this value. Need to be in the IF detect for this to work
        dIn = 1;
        #15000;
        sendUnstuffedID();
        sendUnstuffedLengthFive();
        stdCRCEnd();
        calcSignalPassHard();
        #9000; //May need to adjust this value. Need to be in the IF detect for this to work
        dIn = 1;
        #75000;
        
        //Now stuffed CAN ID
        #25;
        initializeVariables();
        #5;
        resetN = 0;
        #45;
        resetN = 1;
        #50;
        
        canID = 32'hFFFFF855;
        owRate = 1;
        invalidRate = 25;
        validRate = 25;
        crcRate = 25;
        sizeOW = 7;
        sizeInvalid = 7;
        sizeValid = 19;
        sizeCRC = 18;
        initOW = 0;
        initInvalid = 7;
        initValid = 14;
        initCRC = 33;
        baudRate = 100;
        recordRate = 1;
        #50;
        enable = 1;
        setValues = 1;
        #5;
        memFetch();
        #90000; //Allow for the system to play the valid signal.
        sendInvalidID();
        #30000; //May need to adjust this value. Need to be in the IF detect for this to work
        dIn = 1;
        #15000;
        sendstuffedID();
        sendUnstuffedLengthFive();
        stdCRCEnd();
        calcSignalPassEasy();
        #9000; //May need to adjust this value. Need to be in the IF detect for this to work
        dIn = 1;
        #15000;
        sendstuffedID();
        sendUnstuffedLengthFive();
        stdCRCEnd();
        calcSignalPassHard();
        #9000; //May need to adjust this value. Need to be in the IF detect for this to work
        dIn = 1;
        #90000;
        $stop;
    end
    

endmodule
