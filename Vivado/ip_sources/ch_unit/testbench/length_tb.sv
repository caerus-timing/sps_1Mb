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


module length_tb();

    logic clk;
	logic resetN;
	logic dIn;
	logic samplePulse; //Since we are in the early bit, this gets pulsed three times. Make sure to read the value after the third pulse
	logic rateSelector; //1 for 3 sample points, 0 for just 1 sample point
    logic enableSD;
    logic completeConfig;
    logic [3:0] msgSize;
    logic enableID;
    logic [31:0] id;
    logic idCheckComplete;
    logic idMatch;
    logic samplePulseOS;
	

    sizeDetect sD(.clk, .resetN, .enable(enableSD), .dIn, .samplePulse, .rateSelector, .completeConfig, .msgSize);
	idComparator idUnit(.clk, .resetN, .enable(enableID), .dIn, .id, .samplePulse, .idCheckComplete, .idMatch);


    //Sample Oneshot
	oneshot sampleOS(.clk, .resetN, .pulse(samplePulseOS), .oneshot(samplePulse));

	//Initial values
	
	initial begin
	   clk = 1;
	   resetN = 1;
	   dIn = 0;
	   samplePulseOS = 0;
	   rateSelector = 0;
       enableSD = 0;
       enableID = 0;
       id = 32'h0;
	end
	
	always begin
	   #2.5 clk = !clk;
	end

    task bitZero();
        begin
            dIn = 0;
            #20;
            samplePulseOS = 1;
            #20;
            samplePulseOS = 0;
            #20;
            samplePulseOS = 1;
            #20;
            samplePulseOS = 0;
            #20;
            samplePulseOS = 1;
            #20;
            samplePulseOS = 0;
        end
    endtask
    task bitOne();
        begin
            dIn = 1;
            #20;
            samplePulseOS = 1;
            #20;
            samplePulseOS = 0;
            #20;
            samplePulseOS = 1;
            #20;
            samplePulseOS = 0;
            #20;
            samplePulseOS = 1;
            #20;
            samplePulseOS = 0;
        end
    endtask


    task sendUnstuffedID();
        begin
            bitZero();
            bitZero();
            bitOne();
            bitZero();
            bitOne();
            bitOne();
            bitZero();
            bitOne();
            bitOne();
            bitOne();
            bitOne();
            bitZero();
            bitZero();
            bitZero();
        end
    endtask
    
    task sendUnstuffedLengthSix();
        begin
            bitZero();
            bitOne();
            bitOne();
            bitZero();
        end
    endtask

    task sendUnstuffedLengthFive();
        begin
            bitZero();
            bitOne();
            bitZero();
            bitOne();
        end
    endtask

    task sendUnstuffedLengthSeven();
        begin
            bitZero();
            bitOne();
            bitOne();
            bitOne();
        end
    endtask

    task sendStuffedLengthSix();
        begin
            bitZero();
            bitZero();
            bitOne();
            bitOne();
            bitZero();
        end
    endtask

    task sendstuffedID();
        begin
            bitZero();
            bitZero();
            bitZero();
            bitZero();
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
        end
    endtask
	

    task sendInvalidID();
        begin
            bitZero();
            bitOne();
            bitZero();
            bitZero();
            bitOne();
            bitZero();
            bitOne();
            bitZero();
            bitZero();
            bitOne();
            bitOne();
            bitZero();
            bitZero();
            bitZero();
        end
    endtask
    
    
    initial begin
        #25;
        resetN = 0;
        rateSelector = 1;
        id = 32'hFFFFF96F;
        #45;
        resetN = 1;
        #25
        enableID = 1;
        enableSD = 1;
        
        sendUnstuffedID();
        sendUnstuffedLengthSix();

        #200;
        enableID = 0;
        enableSD = 0;
        #25;
        resetN = 0;
        rateSelector = 1;
        id = 32'hFFFFF96F;
        #45;
        resetN = 1;
        #25
        enableID = 1;
        enableSD = 1;
        
        sendUnstuffedID();
        sendUnstuffedLengthSeven();

        #200;
        enableID = 0;
        enableSD = 0;
        #25;
        resetN = 0;
        rateSelector = 1;
        id = 32'hFFFFF96F;
        #45;
        resetN = 1;
        #25
        enableID = 1;
        enableSD = 1;
        
        sendUnstuffedID();
        sendUnstuffedLengthFive();

        #200;
        enableID = 0;
        enableSD = 0;
        #25;
        resetN = 0;
        rateSelector = 1;
        id = 32'hFFFFF96F;
        #45;
        resetN = 1;
        #25
        enableID = 1;
        enableSD = 1;
        
        sendInvalidID();
        sendUnstuffedLengthSeven();

        #200;
        enableID = 0;
        enableSD = 0;
        #25;
        resetN = 0;
        rateSelector = 1;
        id = 32'hFFFFF96F;
        #45;
        resetN = 1;
        #25
        enableID = 1;
        enableSD = 1;
        
        sendUnstuffedID();
        sendStuffedLengthSix();

        #200;
        enableID = 0;
        enableSD = 0;
        #25;
        resetN = 0;
        rateSelector = 1;
        id = 32'hFFFFF805;
        #45;
        resetN = 1;
        #25
        enableID = 1;
        enableSD = 1;
        
        sendstuffedID();
        sendUnstuffedLengthSeven();

        #200;
        enableID = 0;
        enableSD = 0;
        #25;
        resetN = 0;
        rateSelector = 1;
        id = 32'hFFFFF805;
        #45;
        resetN = 1;
        #25
        enableID = 1;
        enableSD = 1;
        
        sendstuffedID();
        sendStuffedLengthSix();

        #200;



        
        

    end
    

endmodule
