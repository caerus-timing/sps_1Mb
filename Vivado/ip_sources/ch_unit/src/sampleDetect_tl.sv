`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer: Brendan Mulholland
//
// Create Date: 10/27/2020 11:52:17 AM
// Design Name:
// Module Name: sampleDetect_tl
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


//TODO: req State Req Sub State Machine. Address Incrementation. Clear signal for BRAM Controller.
module sampleDetect_tl
	#(
		//Needs to be passed from the top level if different
		parameter CLK_RATE               = 200000000,
		parameter integer BRAM_ADDR_SIZE = 15,
		parameter integer BRAM_DATA_SIZE = 32,
		parameter integer BRAM_DEPTH     = 32768,

		//Will be overwritten if not passed as input to the module
		parameter DEFUALT_RATE = 100
	)
	(
		//Standard I/O
		input logic clk,
		input logic resetN,
		(* mark_debug = "true" *)  input logic enable,
		input logic dIn,
		output logic sampleOut,
		output logic outSwitch,
		output logic interrupt,

		//Algorithm Logic
		input logic [31:0] canID,
		input logic [31:0] baudRate,
		input logic [31:0] playbackRate, //Rates are multiples of 10ns. Baudrate can not be 0, but a playbackRate of 0 will play at system clk speed.
		(* mark_debug = "true" *)  input logic setValues,
		input logic [15:0] sigSizeWords, //The number of 32 bit words that makeup a signal. These magic numbers are to fit them into a 32 bit registe
		input logic [15:0] numSigs,
		//output logic ready,
		output logic [15:0] validSigNum,
		output logic invalidSignal,
		output logic [3:0] stateDbg,

		//BRAM Connections

		input logic [BRAM_DATA_SIZE - 1: 0] readData,
		input logic resetBusy,
		output logic [BRAM_ADDR_SIZE - 1 : 0] addr,
		output logic [BRAM_DATA_SIZE - 1 : 0] writeData,
		output logic bramEnable,
		//output logic bramResetOut,
		output logic bramWe
		

	);


	import dataTypes_pkg::*;

//Enums

	//Metastate Machine Enum
	typedef enum logic [3:0] {s_initial, s_waitSync_0, s_waitSync_1, s_idComp, s_idCompSkip, s_waitData , s_waitRecessive, s_play , s_err , s_req, s_eof, s_report} metaState_t;



//Variable Instantiations


	mem_t dataCAN;
	logic [15:0] incrementer;
	logic calculatedInput;
	(* fsm_encoding = "sequential" *) (* mark_debug = "true" *) metaState_t currMeta;
	(* fsm_encoding = "sequential" *) metaState_t nextMeta;
	logic [2:0] runningSample;
	logic canClkPrevValue;

	//BRAM Variables
	mem_t dataBRAM;
	logic fetchNewData;
	logic rerun;
	logic [15:0] requestAddr;
	logic dataValid;
	logic bramReset;

	//Error Detect Variables
	logic errorDetected;

	//Interframe Detect Variables
	logic postInterframeReq;

	//Sync Unit Registers
	logic inputResetN;
	logic [22:0] inputBaudRate;
	logic canClk; //This is not a clk signal. It CAN NOT BE USED AS A CLK SIGNAL: PER Series-7 FPGA Documentation. This will be used as a combinatorial input.
	logic sampleInput;
	logic syncOverride;
	logic threeSamplePoint;
	logic samplePulse;

	//Output Clock Unit Resigsters
	logic outputResetN;
	logic playbackReference; //This is not a clk signal. It CAN NOT BE USED AS A CLK SIGNAL: PER Series-7 FPGA Documentation. This will be used as a combinatorial input.

	//ID Comparitor Variables
	logic idReset;
	logic compareEnable;


    assign stateDbg = currMeta;


//Sync Unit
	syncUnit su(.clk, .resetN(inputResetN), .bitPeriod(baudRate), .dIn, .override(syncOverride), .syncCANClk(canClk), .syncIn(sampleInput), .multiSelect(threeSamplePoint) , .oneShotSample(samplePulse));

//Output Clock Reference
	clkUnit outRef(.clk, .resetN(outputResetN), .period(playbackRate), .clkOut(playbackReference));

//BRAM Controller
	bramController # (.BRAM_ADDR_SIZE(BRAM_ADDR_SIZE) , .BRAM_DATA_SIZE(BRAM_DATA_SIZE) , . BRAM_DEPTH(BRAM_DEPTH))
	br (.requestData(dataBRAM), .clear(bramReset), .advanceBuffer(fetchNewData), .numReads(sigSizeWords), .*);


//Error Detector
	errorDetect error(.clk, .resetN, .dIn(calculatedInput), .errorFrame(errorDetected), .samplePulse, .rateSelector(threeSamplePoint));

//Transmission Window
	interframeDetect ifDetect(.clk, .resetN, .dIn(calculatedInput), .interframePeriod(postInterframeReq), .samplePulse, .rateSelector(threeSamplePoint));



//Sampler Control logic
	always_ff @(posedge clk) begin
		if(!resetN) begin
			runningSample   <= 3'b000;
			canClkPrevValue <= 1;
		end
		else begin
			if(canClk == 1 & canClkPrevValue == 0) begin //We just had a rising edge
				runningSample   <= 3'b000;
				canClkPrevValue <= 1;
			end
			else begin
				canClkPrevValue <= canClk;
				if(samplePulse) begin
					runningSample <= {runningSample[1:0],sampleInput};
				end
				else begin
					runningSample <= runningSample;
				end
			end
		end
	end
	always_comb begin
		if(threeSamplePoint) begin
			calculatedInput = (runningSample[2] & runningSample[1]) | (runningSample[2] & runningSample[0]) | (runningSample[1] & runningSample[0]);
		end
		else begin
			calculatedInput = runningSample[0];
		end
	end



	logic setupRunning;
	logic idValidation;
	logic prevIDSkip = 0;
	logic idMatch;
	logic [4:0] canClkCounter;
	logic playbackDone;
	logic reqComplete;
	logic reqStart;
	logic reportComplete;
	logic playbackEnable;

	logic reinitComp;
	logic initStart;
	logic tglSkip;
	logic bramResetInit;
	logic bramResetReq;
	
	always_comb begin
	   bramReset = bramResetInit & bramResetReq;
	end

//CAN Clock Count Unit & Logic
	logic prevClkVal;
	logic countEn;
	always_ff @(posedge clk) begin
		if(!countEn) begin
			canClkCounter <= 0;
			prevClkVal <= 0;
		end else begin
			if(canClk) begin
				if(!prevClkVal) begin
					canClkCounter <= canClkCounter + 1;
					prevClkVal <= 1;
				end else begin
					canClkCounter <= canClkCounter;
					prevClkVal <= 1;
				end
			end else begin
				canClkCounter <= canClkCounter;
				prevClkVal <= 0;
			end
		end
	end

    logic tglOS;
//Previous ID Skip Logic
    //This is needed to avoid erroring out the device and in implimentation to avoid a latch
    always_ff @(posedge clk) begin
        //This should reset every time we go through the begin state
        if(!inputResetN) begin
            prevIDSkip <= 0;
        end else begin
            if(tglOS) begin
                prevIDSkip <= ~prevIDSkip;
            end else begin
                prevIDSkip <= prevIDSkip;
            end
        end
    
    end
    
    oneshot sampleOS(.clk, .resetN, .pulse(tglSkip), .oneshot(tglOS));

//This logic gives us a 1 clock cycle delay. It hurts. I don't like this. It is needed. If not, everything breaks
    //God forgive me for trying to get high temproal accuracy.
    logic delaySample;
    always_ff @(posedge clk) begin
        delaySample <= samplePulse;
    end

//Meta State Machine
//This will add alot of logic to this module. Best practice is to have this implimented in its own module, but I don't want to worry about inputs now. Sub modules are done for the individual state machines that the meta controls

	always_ff @(posedge clk) begin
		if(!resetN || !enable) begin
			currMeta <= s_initial;
		end
		else begin
			currMeta <= nextMeta;
		end
	end

	always_comb begin //Next state logic
		unique case(currMeta)
			s_initial: begin
				if(setupRunning) begin
					nextMeta = currMeta;
				end
				else begin
					nextMeta = s_waitSync_0;
				end
			end
			s_waitSync_0: begin
				if(postInterframeReq) begin
					nextMeta = s_waitSync_1;
				end
				else begin
					nextMeta = currMeta;
				end
			end
			s_waitSync_1: begin
				if(!postInterframeReq) begin
					if(prevIDSkip) begin
						nextMeta = s_idCompSkip;
					end
					else begin
						nextMeta = s_idComp;
					end
				end
				else begin
					nextMeta = currMeta;
				end
			end
			s_idComp: begin
				if(!idValidation) begin //Can't decide if we don't have all the ID values
					nextMeta = currMeta;
				end
				else begin
					if(idMatch) begin
							nextMeta = s_waitData;
					end
					else begin
						nextMeta = s_eof;
					end
				end
			end
			s_idCompSkip: begin
				if(!idValidation) begin //Can't decide if we don't have all the ID values
					nextMeta = currMeta;
				end
				else begin
					nextMeta = s_eof;
				end
			end
			s_waitData: begin
				if(canClkCounter >= 9) begin //Choosing 9 is arbitrary
					nextMeta = s_waitRecessive;
				end
				else begin
					nextMeta = currMeta;
				end
			end
			s_waitRecessive: begin
				if(samplePulse & sampleInput)begin //We have recessive
					nextMeta = s_play;
				end
				else begin
					nextMeta = currMeta;
				end
			end
			s_play: begin
				if(playbackDone) begin
					nextMeta = s_err;
				end
				else begin
					nextMeta = currMeta;
				end
			end
			s_err: begin
				if(canClkCounter >= 9) begin
					if(errorDetected) begin
						if(numSigs == (incrementer - 1)) begin
							nextMeta = s_report;
						end else begin
							nextMeta = s_req;
						end
					end
					else begin
						nextMeta = s_report;
					end
				end
				else begin
					nextMeta = currMeta;
				end
			end
			s_req: begin
				if(reqComplete) begin
					nextMeta = s_eof;
				end
				else begin
					nextMeta = currMeta;
				end

			end

			s_eof: begin //Reset the ID comparator in this stage. May have to change this later.
				if(postInterframeReq) begin
					nextMeta = s_waitSync_1;
				end
				else begin
					nextMeta = currMeta;
				end
			end

			s_report: begin
				nextMeta = currMeta;
			end

		endcase
	end

	always_comb begin
		unique case(currMeta)
			s_initial: begin
				initStart = 1;
				threeSamplePoint = 1;
				compareEnable = 0;
				playbackEnable = 0;
				syncOverride = 0;
				countEn = 0;
				tglSkip = 0;
				reinitComp = 0;
				{invalidSignal, validSigNum, interrupt} = {1'b0,16'b0,1'b0};
				reqStart = 0;
			end
			s_waitSync_0, s_waitSync_1: begin
				//We are not going to output anything here. Have all enable signals low and all resets high.
				initStart = 0;
				threeSamplePoint = 1;
				compareEnable = 0;
				playbackEnable = 0;
				syncOverride = 0;
				countEn = 0;
				tglSkip = 0;
				reinitComp = 1;
				{invalidSignal, validSigNum, interrupt} = {1'b0,16'b0,1'b0};
				reqStart = 0;
			end
			s_idComp: begin
			    initStart = 0;
				compareEnable = 1;
				threeSamplePoint = 1;
				playbackEnable = 0;
				syncOverride = 0;
				countEn = 0;
				tglSkip = 0;
				reinitComp = 1;
				{invalidSignal, validSigNum, interrupt} = {1'b0,16'b0,1'b0};
				reqStart = 0;
			end
			s_idCompSkip: begin
				initStart = 0;
				compareEnable = 1;
				threeSamplePoint = 1;
				playbackEnable = 0;
				syncOverride = 0;
				countEn = 0;
				reinitComp = 1;
				if(idMatch) begin
					tglSkip = 1;
				end else begin
					tglSkip = 0;
				end
				{invalidSignal, validSigNum, interrupt} = {1'b0,16'b0,1'b0};
				reqStart = 0;
			end
			s_waitData: begin
				initStart = 0;
				threeSamplePoint = 0;
				tglSkip = 0;
				compareEnable = 0;
				playbackEnable = 0;
				syncOverride = 0;
				countEn = 1;
				reinitComp = 0;
				{invalidSignal, validSigNum, interrupt} = {1'b0,16'b0,1'b0};
				reqStart = 0;
			end
			s_waitRecessive: begin
				initStart = 0;
				threeSamplePoint = 0;
				tglSkip = 0;
				compareEnable = 0;
				playbackEnable = 0;
				syncOverride = 0;
				countEn = 0;
				reinitComp = 0;
				{invalidSignal, validSigNum, interrupt} = {1'b0,16'b0,1'b0};
				reqStart = 0;
			end
			s_play: begin
				initStart = 0;
				threeSamplePoint = 0;
				tglSkip = 0;
				compareEnable = 0;
				playbackEnable = 1;
				syncOverride = 1;
				countEn = 0;
				reinitComp = 0;
				{invalidSignal, validSigNum, interrupt} = {1'b0,16'b0,1'b0};
				reqStart = 0;
			end
			s_err: begin
				initStart = 0;
				threeSamplePoint = 1;
				tglSkip = 0;
				compareEnable = 0;
				playbackEnable = 0;
				syncOverride = 0;
				countEn = 1;
				reinitComp = 0;
				{invalidSignal, validSigNum, interrupt} = {1'b0,16'b0,1'b0};
				reqStart = 0;
			end
			s_eof: begin
				initStart = 0;
				threeSamplePoint = 0;
				tglSkip = 0;
				compareEnable = 0;
				playbackEnable = 0;
				syncOverride = 0;
				countEn = 1;
				reinitComp = 0;
				{invalidSignal, validSigNum, interrupt} = {1'b0,16'b0,1'b0};
				reqStart = 0;
			end
			s_report: begin
				initStart = 0;
			    threeSamplePoint = 0;
				compareEnable = 0;
				playbackEnable = 0;
				tglSkip = 0;
				syncOverride = 0;
				countEn = 0;
				reinitComp = 1;
				if(numSigs == (incrementer - 1)) begin //This means that we are at the last signal, output an err.
					{invalidSignal, validSigNum, interrupt} = {1'b1,16'b0,1'b1};
				end else begin
					{invalidSignal, validSigNum, interrupt} = {1'b0, incrementer,1'b1};
				end
				reqStart = 0;
			end
			s_req: begin
				initStart = 0;
			    threeSamplePoint = 0;
				compareEnable = 0;
				tglSkip = 1;
				playbackEnable = 0;
				syncOverride = 0;
				countEn = 0;
				reinitComp = 1;
				{invalidSignal, validSigNum, interrupt} = {1'b0,16'b0,1'b0};
				reqStart = 1;
			end
			default: begin
			    initStart = 0;
			    threeSamplePoint = 0;
				compareEnable = 0;
				playbackEnable = 0;
				tglSkip = 0;
				syncOverride = 0;
				countEn = 0;
				reinitComp = 1;
				{invalidSignal, validSigNum, interrupt} = {1'b0,16'b0,1'b0};
				reqStart = 0;
			end
		endcase


	end



	//This is the Init Sub State Machine. Will eventually be merged into its own module.

	typedef enum logic [2:0] {initState[0:6]} initState_t;

	(* mark_debug = "true" *) initState_t currInit;
	initState_t nextInit;

	

	always_ff @(posedge clk) begin
		if(!resetN) begin
			currInit <= currInit.first;
		end
		else begin
			currInit <= nextInit;
		end
	end

	always_comb begin
		unique case(currInit)
			initState0: begin
				if(initStart) begin
					nextInit = currInit.next;
				end
				else begin
					nextInit = currInit;
				end
			end
			initState1: begin
				if(setValues) begin
					nextInit = currInit.next;
				end
				else begin
					nextInit = currInit;
				end
			end
			initState2, initState3: begin
				nextInit = currInit.next;
			end
			initState4: begin
				if(dataValid) begin
					nextInit = currInit.next;
				end
				else begin
					nextInit = currInit;
				end
			end
			initState5: begin //Changed from state diagram. Now no longer waits. This was moved to the top level state machine
				nextInit = currInit.next;
			end
			initState6: begin
				if(!initStart) begin
					nextInit = currInit.first;
				end
				else begin
					nextInit = currInit;
				end
			end
		endcase
	end
	always_comb begin
		unique case(currInit)
			initState0: begin
				{setupRunning, inputResetN, outputResetN, bramResetInit} = 5'b1111;
			end
			initState4, initState5: begin
				{setupRunning, inputResetN, outputResetN, bramResetInit} = 5'b1111;
			end
			initState1, initState2, initState3:begin
				{setupRunning, inputResetN, outputResetN, bramResetInit} = 5'b1000;
			end
			initState6: begin
				{setupRunning, inputResetN, outputResetN, bramResetInit} = 5'b0111;
			end
		endcase
	end


//IDComparitor Reset Logic
	always_comb begin
		idReset = reinitComp & inputResetN;
	end

//Connection to IDComparitor
	idComparator idUnit(.clk, .resetN(idReset), .enable(compareEnable), .dIn(calculatedInput), .id(canID), .samplePulse, .idCheckComplete(idValidation), .idMatch);


//Connection to playback Unit

	
	playbackUnit pbUnit(.clk, .resetN(bramReset), .enable(playbackEnable), .playbackSig(dataBRAM), .requestNum(sigSizeWords), .playbackClk(playbackReference), .dOut(sampleOut), .dEnable(outSwitch), .advFIFO(fetchNewData), .complete(playbackDone));


logic incAddr;

//Address Incrementation logic

	always_ff @(posedge clk) begin
		if(!resetN | !enable) begin
			requestAddr <= 0;
			incrementer <= 0;
		end else begin
			if(incAddr) begin
				incrementer <= incrementer + 1;
				requestAddr <= requestAddr + sigSizeWords;
			end else begin
				incrementer <= incrementer;
				requestAddr <= requestAddr;
			end
		end
	end


//Req  state Machine

	typedef enum logic [2:0] {s_hold, s_rClear, s_rInc, s_rSkip, s_rUnset} req_t;

	req_t currReq, nextReq;

	always_ff @(posedge clk) begin
		if(!resetN || !reqStart) begin
			currReq <= s_hold;
		end else begin
			currReq <= nextReq;
		end
	end

	always_comb begin
		nextReq = currReq.next;
	end

	always_comb begin
		unique case(currReq)
			s_hold: {bramResetReq, incAddr, reqComplete} = 3'b100;
			s_rClear, s_rSkip: {bramResetReq, incAddr, reqComplete} = 3'b000;
			s_rInc: {bramResetReq, incAddr, reqComplete} = 3'b010;
			s_rUnset: {bramResetReq, incAddr, reqComplete} = 3'b101;
		endcase
	end




endmodule


