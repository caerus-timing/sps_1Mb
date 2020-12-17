`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: RHIT
// Engineer: Brendan Mulholland
//
// Create Date: 10/27/2020 10:11:55 PM
// Design Name:
// Module Name: oneshot
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


module oneshot
	(
		input logic clk,
		input logic resetN,
		input logic pulse,
		output logic oneshot
	);

	typedef enum logic [2:0] {STATE0 = 3'b001,
		STATE1                       = 3'b010,
		STATE2                       = 3'b100} errorStates_t;

	errorStates_t currState, nextState;

	always_ff @(posedge clk) begin
		if(!resetN) begin
			currState <= currState.first;
		end
		else begin
			currState <= nextState;
		end
	end

	always_comb begin
		if(pulse == 0) begin
			nextState = currState.first;
		end
		else begin
			unique case(currState)
				STATE0, STATE1: nextState = currState.next;
				STATE2: nextState         = currState;
			endcase
		end
	end

	always_comb begin
		unique case(currState)
			STATE0, STATE2: oneshot = 0;
			STATE1: oneshot         = 1;
		endcase
	end

endmodule
