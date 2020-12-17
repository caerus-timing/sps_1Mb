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


module errorDetect_tb();

    logic clk;
	logic resetN;
	logic dIn;
	logic samplePulse; //Since we are in the early bit, this gets pulsed three times. Make sure to read the value after the third pulse
	logic rateSelector; //1 for 3 sample points, 0 for just 1 sample point
	logic errorFrame;
	
	errorDetect dut(.clk(clk), .resetN(resetN), .dIn(dIn), .samplePulse(samplePulse), .rateSelector(rateSelector), .errorFrame(errorFrame));
	
	//Initial values
	
	initial begin
	   clk = 1;
	   resetN = 1;
	   dIn = 0;
	   samplePulse = 0;
	   rateSelector = 0;
	end
	
	always begin
	   #2.5 clk = !clk;
	end
	
	task sampleOnce;
	   begin
	   @(posedge clk);
	   samplePulse = 1;
	   @(posedge clk);
	   samplePulse = 0;
	   end
    endtask 
    
    
    task sampleThrice;
        begin
        sampleOnce;
        #45;
        sampleOnce;
        #45;
        sampleOnce;
        end
    endtask
    
    
    initial begin
        #25;
        resetN = 0;
        #45;
        resetN = 1;
        #25
        //Test single pusle mode first
        
        //Go to 5 consecutive then switch
        dIn = 1;
        sampleOnce;
        #45;
        sampleOnce;
        #45;
        sampleOnce;
        #45;
        sampleOnce;
        #45;
        sampleOnce;
        #10;
        dIn = 0;
        #40;
        sampleOnce;
        #25;
        
        //Go all the way into the error detector 10 high signals
        dIn = 1;
        sampleOnce;
        #45;
        sampleOnce;
        #45;
        sampleOnce;
        #45;
        sampleOnce;
        #45;
        sampleOnce;
        #45;
        sampleOnce;
        #45;
        sampleOnce;
        #45;
        sampleOnce;
        #45;
        sampleOnce;
        #45;
        sampleOnce;
        #45;
        dIn = 0;
        sampleOnce;
        #45;
        sampleOnce;
        #45;
        sampleOnce;
        #45;
        sampleOnce;
        #45;
        sampleOnce;
        #45;
        sampleOnce;
        #45;
        sampleOnce;
        #45;
        sampleOnce;
        #45;
        sampleOnce;
        #45;
        sampleOnce;
        #45;
    end
    

endmodule
