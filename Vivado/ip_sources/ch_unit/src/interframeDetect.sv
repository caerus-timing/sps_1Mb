`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer: Brendan Mulholland
//
// Create Date: 10/22/2020 01:36:32 PM
// Design Name:
// Module Name: interframeDetect
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


module interframeDetect
	(
		input logic clk,
		input logic resetN,
		input logic dIn,
		input logic samplePulse, //Since we are in the early bit, this gets pulsed three times. Make sure to read the value after the third pulse
		input logic rateSelector, //1 for 3 sample points, 0 for just 1 sample point
		output logic interframePeriod
	);


	//Interframe Detector
	typedef enum logic [12:0] {state[0:12]} eofStates_t;

	//0 std, 1: 1 rec,2: 2 rec, 3: 3 rec, 4: 4 rec, 5: 5 rec, all ok
	//6: 6 rec, 5th bit in EOF space
	//7: 6th bit in EOF, 8: 7th bit in EOF, 9: 1st bit interframe, 10: 2nd bit interframe, 11: 3rd bit interframe, 12: readyToTransmit

	(* fsm_encoding = "one_hot" *) eofStates_t currState, nextState;


	typedef enum logic [1:0] {s_init, s_sample1, s_sample2, s_sample3} sample_t;
	
	(* fsm_encoding = "one_hot" *) sample_t currSample, nextSample;
	
	
	logic dataValid;
	
	always_ff @(posedge clk) begin
	   if(!resetN) begin
			currSample <= currSample.first;
		end
		else begin
			currSample <= nextSample;
		end
	end
	
	always_comb begin
	   unique case(currSample)
	       s_init: begin
	           if(samplePulse) begin
	               if(rateSelector) begin
	                   nextSample = currSample.next;
	               end else begin
	                   nextSample = s_sample3;
	               end
	           end else begin
	               nextSample = currSample;
	           end
	       end
	       s_sample1, s_sample2: begin
	           if(samplePulse) begin
	               nextSample = currSample.next;
	           end else begin
	               nextSample = currSample;
	           end
	       end
	       s_sample3: begin
	           nextSample = currSample.first;
	       end
	   endcase
	end
	always_comb begin
	   unique case(currSample)
	       s_sample3: dataValid = 1;
	       default: dataValid = 0;
	   endcase
	end


	always_ff @(posedge clk) begin
		if(!resetN) begin
			currState <= state0;
		end
		else begin
			currState <= nextState;
		end
	end

	always_comb begin
		if(dataValid == 1) begin
			unique case(currState)
				state12: begin
					if(!dIn) begin
						nextState = currState.first;
					end
					else begin
						nextState = currState;
					end
				end
				default: begin
					if(!dIn) begin
						nextState = currState.first;
					end
					else begin
						nextState = currState.next;
					end
				end
			endcase
		end else begin
			nextState = currState;
		end
	end

	always_comb begin
		case(currState)
			state12: interframePeriod = 1;
			default: interframePeriod = 0;
		endcase
	end
endmodule
