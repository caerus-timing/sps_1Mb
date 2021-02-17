`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 10/22/2020 01:11:31 PM
// Design Name:
// Module Name: syncUnit
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


module syncUnit
	(
		input logic clk,
		input logic resetN,
		input logic [22:0] bitPeriod, //Rates are multiples of 10ns. Baudrate can not be 0, but a playbackRate of 0 will play at system clk speed.
		input logic dIn,
		input logic override,
		input logic multiSelect,
		output logic syncCANClk,
		output logic syncIn, //The asyncronous input signal turned into a synchronous signal.
		output logic oneShotSample,
		output logic earlyCycleWarn,
		output logic TenPulse
	);

	//Note:  @ 200 MHz 5ns <= delay <= 10ns

	//Variables & Wires
	logic canReferenceSig;
	logic timingOut1;
	logic delayInput;
	logic delayInput2;
	logic delayInput3;
	logic edgeOccured;
	logic disableClk;
	logic [22:0] count;
	logic sampleRange;

    logic gatedSample;
    
    always_comb begin
        gatedSample = sampleRange & syncCANClk;
    end

	//Input Clock Refernece
	clkUnit inRef(.clk, .resetN(disableClk), .period(bitPeriod), .clkOut(canReferenceSig), .count(count));

	//Sample Oneshot
	oneshot sampleOS(.clk, .resetN, .pulse(gatedSample), .oneshot(oneShotSample));


	//Feed the async input into an array of flip flops. These should not be reset as they are only dependant on clock and external values
	//This poor flip flop will be hit with alot of weird data in setup

	always_ff @(posedge clk) begin
		timingOut1 <= dIn;
		syncIn     <= timingOut1;
		delayInput <= syncIn;
		delayInput2 <= delayInput;
	end

	always_comb begin
		if(count == 10) begin
			TenPulse = 1;
		end else begin
			TenPulse = 0;
		end
	end

	always_ff @(posedge clk) begin
		if(!resetN) begin
			earlyCycleWarn <= 0;
		end else begin
			if(syncIn == 0 && count == 2) begin
				earlyCycleWarn <= 1;
			end else begin
				earlyCycleWarn <= 0;
			end
		end
	end


	//Logic to detect if an edge occured in the signal
	always_comb begin
		if(override) begin
			edgeOccured = 0;
		end
		else begin
			if(syncIn == delayInput2) begin
				edgeOccured = 0;
			end
			else begin
				edgeOccured = 1;
			end
		end
	end


	//Logic for disabling the syncCANClk for 1 cycle when a reset or sync occurs. Important so that samples can still occur correctly.
	always_ff @(posedge clk) begin
		if(edgeOccured || !resetN) begin
			disableClk <= 0;
		end
		else begin
			disableClk <= 1;
		end
	end
	always_comb begin
		if(disableClk) begin
			syncCANClk = canReferenceSig;
		end
		else begin
			syncCANClk = 0;
		end

	end
	//This block locks the sample range used in the spike calulcation below to be locked to only change once per CAN Clock.
	
	logic multi;
	always_ff @(posedge clk) begin
        if(!resetN) begin
            multi <= 0;
        end else begin
            if((count == 0) && canReferenceSig) begin
                multi <= multiSelect;
            end else begin
                multi <= multi;
           end
        end
	end
	
	
    //TODO: UNCOMMENT
	//Oneshot generation logic 0:15 = 0 16:30 = 1  MULTISAMPLE
	
	always_comb begin
		if(count <= 15) begin
			sampleRange = 0;
		end
		else if(count <=20) begin
			sampleRange = 1;
		end
		else if(multiSelect) begin
			if(count <= 25) begin
				sampleRange = 0;
			end
			else if(count <= 30) begin
				sampleRange = 1;
			end
			else if(count <= 35) begin
				sampleRange = 0;
			end
			else if(count <= 40) begin
				sampleRange = 1;
			end
			else begin
				sampleRange = 0;
			end
		end
		else begin
			sampleRange = 0;
		end
	end


endmodule
