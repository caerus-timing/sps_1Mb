`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer: Brendan Mulholland
//
// Create Date: 10/22/2020 01:11:31 PM
// Design Name:
// Module Name: errorDetect
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


module errorDetect
	(
		input logic clk,
		input logic resetN,
		input logic dIn,
		input logic samplePulse, //Since we are in the early bit, this gets pulsed three times. Make sure to read the value after the third pulse
		input logic rateSelector, //1 for 3 sample points, 0 for just 1 sample point
		output logic errorFrame
	);


	//Error Frame Detector
	typedef enum logic [15:0] {err[0:15]} errorStates_t;

	//0 std, 1: 1 dom,2: 2 dom, 3: 3dom, 4: 4dom, 5: 5dom, all ok
	//6: 6dom, in error frame. stay in 6 dom until we read recessive bit
	//7: 1 recessive, 8: 2 recessive, 9: 3 rec, 10: 4 rec, 11: 5rec, 12: 6rec, 13: 7rec,14: 8rec, out of delimiter, in bus idle

	errorStates_t currState, nextState;
	
	typedef enum logic [1:0] {s_init, s_sample1, s_sample2, s_sample3} sample_t;
	
	sample_t currSample, nextSample;
	
	
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
			currState <= currState.first;
		end
		else begin
			currState <= nextState;
		end
	end

	always_comb begin
	   if(dataValid == 1) begin
           unique case(currState)
                err0, err1, err2, err3, err4, err5: begin
                    if(!dIn) begin
                        nextState = currState.next;
                    end
                    else begin
                        nextState = currState.first;
                    end
                end
                err6: begin
                    if(!dIn) begin
                        nextState = currState;
                    end
                    else begin
                        nextState = currState.next;
                    end
                end
                err7, err8, err9, err10, err11, err12, err13: begin
                    if(!dIn) begin
                        nextState = currState.first;
                    end
                    else begin
                        nextState = currState.next;
                    end
                end
                err14: begin
                    nextState = currState.first;
                end
            default: nextState = currState.first;
		  endcase
        end else begin
            nextState = currState;
        end      
	end

	always_comb begin
		case(currState)
			err0,err1,err2,err3,err4,err5: errorFrame = 0;
			default: errorFrame                       = 1;
		endcase
	end


endmodule