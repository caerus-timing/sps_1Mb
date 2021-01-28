`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 10/29/2020 01:45:34 PM
// Design Name:
// Module Name: playBackUnit
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


module playbackUnit
	(
		//Common signals
		input logic clk,
		input logic resetN,
		input logic enable,

		//Implimentation specific input logic
		input dataTypes_pkg::mem_t playbackSig,
		input logic [15:0] requestNum,
		input logic playbackClk,

		//Output logic
		output logic dOut,
		output logic dEnable,
		output logic advFIFO,
		output logic complete

	);

	import dataTypes_pkg::*;

//State machine enum

	typedef enum logic [4:0] {s_init,s_hold,s_play[0:15],s_stop} playState_t;


//Variables

	(* fsm_encoding = "one_hot" *) playState_t currState, nextState;
	output_t [7:0] heldOutputVals;
	
	output_t currOutput;

	output_t disabledOutput;
	logic incrementReqCount;
	logic [3:0] outputSel;
	logic selDisable;
	logic [15:0] requestCount;

	logic playbackOS;
	logic incrementReqCountOS;

//Playback oneshot logic
	oneshot pbos(.clk, .resetN , .pulse(playbackClk), .oneshot(playbackOS));

//Increment oneshot logic
	oneshot incos(.clk, .resetN , .pulse(incrementReqCount), .oneshot(incrementReqCountOS));

	


//Create the disabledOutput signal
	assign disabledOutput.enable = 0;
	assign disabledOutput.out = 0; 


//Write logic for the heldOutputValues

	always_ff @(posedge clk) begin
		if(!resetN) begin
			for (int i=0;i < 8;i++ ) begin
				heldOutputVals[i] <= disabledOutput;
			end
		end else begin
			if(outputSel == 5'h6) begin
				for (int i=0;i < 8;i++ ) begin //8-0 9-1 10-2 11-3 12-4 13-5 14-6 15-7
					heldOutputVals[i] <= playbackSig.outputData[8+i];
				end
			end else begin
				for (int i=0;i < 8;i++ ) begin
					heldOutputVals[i] <= heldOutputVals[i];
				end
			end
		end
	end

//Selection logic

    assign dOut = currOutput.out;
    assign dEnable = currOutput.enable;

	always_comb begin
		if(selDisable) begin
			currOutput = disabledOutput;
		end else begin
			unique case(outputSel)
				4'h0: currOutput = playbackSig.outputData[0];
				4'h1: currOutput = playbackSig.outputData[1];
				4'h2: currOutput = playbackSig.outputData[2];
				4'h3: currOutput = playbackSig.outputData[3];
				4'h4: currOutput = playbackSig.outputData[4];
				4'h5: currOutput = playbackSig.outputData[5];
				4'h6: currOutput = playbackSig.outputData[6];
				4'h7: currOutput = playbackSig.outputData[7];
				4'h8: currOutput = heldOutputVals[0];
				4'h9: currOutput = heldOutputVals[1];
				4'hA: currOutput = heldOutputVals[2];
				4'hB: currOutput = heldOutputVals[3];
				4'hC: currOutput = heldOutputVals[4];
				4'hD: currOutput = heldOutputVals[5];
				4'hE: currOutput = heldOutputVals[6];
				4'hF: currOutput = heldOutputVals[7];
			endcase
		end
	end

//Logic for incrementing the request counter

	always_ff @(posedge clk) begin
		if(!resetN) begin
			requestCount <= 0;
		end else begin
			if(incrementReqCountOS) begin
				requestCount <= requestCount + 1;
			end else begin
				requestCount <= requestCount;
			end
		end
	end

//State machine logic

	always_ff @(posedge clk) begin
		if(!resetN) begin
			currState <= currState.first;
		end else begin
			currState <= nextState;
		end
	end

	always_comb begin
		unique case(currState)
			s_init:begin
				if(!resetN) begin
					nextState = currState;
				end else begin
					nextState = currState.next;
				end
			end
			s_hold: begin
				if(!enable) begin
					nextState = currState;
				end else begin
					nextState = currState.next;
				end
			end
			s_play0,s_play1,s_play2,s_play3,s_play4,s_play5,s_play6,s_play7,s_play8,s_play9,s_play10,s_play11,s_play12,s_play13,s_play14: begin
				if(!playbackOS) begin
					nextState = currState;
				end else begin
					nextState = currState.next;
				end
			end
			s_play15: begin
			    if(!playbackOS) begin
			        nextState = currState;
			    end else begin
                    if(requestNum > requestCount) begin
                        nextState = s_play0;
                    end	else begin
                        nextState = s_stop;
                    end
				end
			end
			s_stop: begin
				nextState = s_stop;
			end
			default: begin
				nextState = s_init;
			end
		endcase
	end
	//This is going to be ugly


	always_comb begin
		unique case(currState)
			s_init: {complete,advFIFO,incrementReqCount,selDisable,outputSel} = {4'b0001,4'h0};
			s_hold: {complete,advFIFO,incrementReqCount,selDisable,outputSel} = {4'b0001,4'h0};
			s_play0: {complete,advFIFO,incrementReqCount,selDisable,outputSel} = {4'b0000,4'h0};
			s_play1: {complete,advFIFO,incrementReqCount,selDisable,outputSel} = {4'b0000,4'h1};
			s_play2: {complete,advFIFO,incrementReqCount,selDisable,outputSel} = {4'b0000,4'h2};
			s_play3: {complete,advFIFO,incrementReqCount,selDisable,outputSel} = {4'b0000,4'h3};
			s_play4: {complete,advFIFO,incrementReqCount,selDisable,outputSel} = {4'b0000,4'h4};
			s_play5: {complete,advFIFO,incrementReqCount,selDisable,outputSel} = {4'b0000,4'h5};
			s_play6: {complete,advFIFO,incrementReqCount,selDisable,outputSel} = {4'b0000,4'h6};
			s_play7: {complete,advFIFO,incrementReqCount,selDisable,outputSel} = {4'b0000,4'h7};
			s_play8: {complete,advFIFO,incrementReqCount,selDisable,outputSel} = {4'b0000,4'h8};
			s_play9: {complete,advFIFO,incrementReqCount,selDisable,outputSel} = {4'b0100,4'h9};
			s_play10: {complete,advFIFO,incrementReqCount,selDisable,outputSel} = {4'b0000,4'hA};
			s_play11: {complete,advFIFO,incrementReqCount,selDisable,outputSel} = {4'b0000,4'hB};
			s_play12: {complete,advFIFO,incrementReqCount,selDisable,outputSel} = {4'b0010,4'hC};
			s_play13: {complete,advFIFO,incrementReqCount,selDisable,outputSel} = {4'b0000,4'hD};
			s_play14: {complete,advFIFO,incrementReqCount,selDisable,outputSel} = {4'b0000,4'hE};
			s_play15: {complete,advFIFO,incrementReqCount,selDisable,outputSel} = {4'b0000,4'hF};
			s_stop: {complete,advFIFO,incrementReqCount,selDisable,outputSel} = {4'b1001,4'h0};
		endcase
	end





endmodule
