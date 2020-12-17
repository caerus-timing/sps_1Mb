`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 10/27/2020 01:30:13 PM
// Design Name:
// Module Name: clkUnit
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


module clkUnit
	(
		input logic clk,
		input logic resetN,
		input logic [22:0] period, //Multiple of 10ns for the clk period
		output logic clkOut,
		output logic [22:0] count
	);

	logic [22:0] goal;


	always_ff @(posedge clk) begin
		if(!resetN) begin
			count  <= 0;
			clkOut <= 1;
			if(period == 0) begin
				goal <= 0;
			end
			else begin
				if(period == 0) begin
					goal <= 0;
				end
				else begin
					goal <= (period - 1);
				end
			end
		end
		else begin
			if(count == goal) begin
				count  <= 0;
				clkOut <= ~clkOut;
			end
			else begin
				count  <= count + 1;
				clkOut <= clkOut;
			end

		end
	end



endmodule
