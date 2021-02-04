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


module record_tb();

    logic clk;
	logic resetN;
	logic dIn;
	logic samplePulse; //Since we are in the early bit, this gets pulsed three times. Make sure to read the value after the third pulse
	logic enable;
    logic [31:0] sig;
    logic valid;
    logic [31:0] runningTotal;
    logic [5:0] incrementer;
	
	recordUnit dut(.clk, .resetN, .dIn, .samplePulse, .enable, .recordedOut(sig), .dataValid(valid), .runningTotal, .incrementer);
    
	
	//Initial values
	
	initial begin
	   clk = 1;
	   resetN = 1;
       samplePulse = 1;
	   dIn = 0;
	   enable = 0;
	end
	
	always begin
	   #2.5 clk = !clk;
	end

    always begin
        #5 samplePulse = !samplePulse;
    end
	
	task bitZero();
        begin
            dIn = 0;
            #10;
        end
    endtask
    task bitOne();
        begin
            dIn = 1;
            #10;
        end
    endtask
    
    
    initial begin
        #25;
        resetN = 0;
        #45;
        resetN = 1;
        #25
        enable = 1;
        #10;
        bitZero();
        bitZero();
        bitZero();
        bitZero();
        bitZero();
        bitZero();
        bitOne();
        bitOne();
        bitOne();
        bitOne();
        bitOne();
        bitOne();
        bitOne();
        bitOne();
        bitZero();
        bitOne();
        bitZero();
        bitOne();
        bitZero();
        bitOne();
        bitZero();
        bitOne();
        bitZero();
        bitOne();
        bitZero();
        bitZero();
        bitZero();
        bitZero();
        bitZero();
        bitZero();
        bitZero();
        bitOne();
        bitOne();
        bitOne();
        bitZero();
        bitZero();
        bitOne();
        bitZero();
        bitZero();
        bitZero();
        bitZero();
        bitZero();
        bitOne();
        bitOne();
        bitOne();
        bitZero();
        bitZero();
        bitOne();

        enable = 0;
        #25;
        resetN = 0;
        #45;
        resetN = 1;
        #25
        enable = 1;
        #5;
        #2; //Get off cycle from the sample clock to show async capabilities
        bitZero();
        bitZero();
        bitZero();
        bitZero();
        bitZero();
        bitZero();
        bitOne();
        bitOne();
        bitOne();
        bitOne();
        bitOne();
        bitOne();
        bitOne();
        bitOne();
        bitZero();
        bitOne();
        bitZero();
        bitOne();
        bitZero();
        bitOne();
        bitZero();
        bitOne();
        bitZero();
        bitOne();
        bitZero();
        bitZero();
        bitZero();
        bitZero();
        bitZero();
        bitZero();
        bitZero();
        bitOne();
        bitOne();

        enable = 0;



        
    end
    

endmodule
