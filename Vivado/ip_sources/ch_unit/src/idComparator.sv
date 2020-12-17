`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 10/29/2020 12:04:33 PM
// Design Name:
// Module Name: idComparator
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


module idComparator
	(
		//Normal Inputs
		input logic clk,
		input logic resetN,
		input logic enable,

		//Algorithm Inputs/Outputs
		input logic dIn,
		input logic [31:0] id,
		input logic samplePulse, //Since we are in the early bit, this gets pulsed three times. Make sure to read the value after the third pulse

		output logic idCheckComplete,
		output logic idMatch
	);

//State machine enum

	typedef enum logic [2:0] {s_init, s_hold, s_pulse[0:2], s_check, s_valid, s_invalid} idState_t;

//Variables

	idState_t currState, nextState;
	logic [31:0] idStore;
	logic [31:0] testData;
	logic equal;
	logic [4:0] count;
	logic shiftIn;

	const logic [4:0] length = 11;


//Given ID

	always_ff @(posedge clk) begin
		if(!resetN) begin
			idStore <= id;
		end
		else begin
			idStore <= idStore;
		end
	end

//Test ID Register
	always_ff @(posedge clk) begin
		if(!resetN) begin
			testData <= 32'hFFFFFFFF;
		end
		else begin
			if(shiftIn) begin
				testData <= {testData[30:0],dIn};
			end
			else begin
				testData <= testData;
			end
		end
	end

//Incrementer logic
	always_ff @(posedge clk) begin
		if(!resetN) begin
			count <=0;
		end
		else begin
			if(shiftIn) begin
				count <= count + 1;
			end
			else begin
				count <= count;
			end
		end
	end

//Comparison Logic

	always_comb begin
		if(idStore == testData) begin
			equal = 1;
		end
		else begin
			equal = 0;
		end
	end

//Statemachine Logic

	always_ff @(posedge clk) begin
		if(!resetN) begin
			currState <= s_init;
		end
		else begin
			currState <= nextState;
		end
	end
	always_comb begin
		unique case(currState)
			s_init: begin
				if(resetN) begin
					nextState = currState.next;
				end
				else begin
					nextState = currState;
				end
			end
			s_hold: begin
				if(enable & samplePulse) begin
					nextState = currState.next;
				end
				else begin
					nextState = currState;
				end
			end
			s_pulse0,s_pulse1: begin
				if(samplePulse) begin
					nextState = currState.next;
				end
				else begin
					nextState = currState;
				end
			end
			s_pulse2: nextState = currState.next;
			s_check:begin
				if(count == length) begin
					if(equal) begin
						nextState = s_valid;
					end
					else begin
						nextState = s_invalid;
					end
				end
				else begin
					nextState = s_hold;
				end
			end
			s_valid, s_invalid: nextState = currState;
		endcase
	end
	always_comb begin
		unique case(currState)
			s_init,s_hold,s_pulse0,s_pulse1,s_check: {shiftIn, idCheckComplete, idMatch} = 3'b000;
			s_pulse2: {shiftIn, idCheckComplete, idMatch}                                = 3'b100;
			s_valid: {shiftIn, idCheckComplete, idMatch}                                 = 3'b011;
			s_invalid: {shiftIn, idCheckComplete, idMatch}                               = 3'b010;
		endcase
	end


endmodule
