`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 10/27/2020 12:30:25 PM
// Design Name:
// Module Name: bramController
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


module bramController
	#(
		parameter integer BRAM_ADDR_SIZE = 15,
		parameter integer BRAM_DATA_SIZE = 32,
		parameter integer BRAM_DEPTH     = 32768
	)
	(
		//Standard Logic
		input clk,
		input resetN,

		//State Machine I/O
		input logic advanceBuffer,
		input logic clear,

		//Request I/O
		input logic [15:0] requestAddr,
		input logic [15:0] numReads,
		output logic [BRAM_DATA_SIZE - 1: 0] requestData,
		output logic dataValid,

		//TODO: Add Write capabilities. Not needed for part 1.

		//BRAM Connections
		input logic [BRAM_DATA_SIZE - 1: 0] readData,
		input logic resetBusy,
		output logic [BRAM_ADDR_SIZE - 1 : 0] addr,
		output logic [BRAM_DATA_SIZE - 1 : 0] writeData,
		output logic bramEnable,
		output logic bramWe
	//output logic bramReset
	);
	import dataTypes_pkg::*;


//Enum for FSM

	typedef enum logic [3:0] {s_init, s_fifoReset, s_req, s_wait[0:3], s_insertInc, s_hold} bramControl_t;


//General variables.

	logic clearFIFO;
	logic read;
	logic wr_en;
	logic rd_rst_busy;
	logic wr_rst_busy;

	//FSM Variables

	bramControl_t currState, nextState;
	logic wrAddr;
	logic wrNumReads;
	logic incAddr;
	logic incI;
	logic [15:0] i;
	logic [15:0] storedReads;



//Oneshot encoder for the readSignal
	oneshot readOS(.*, .pulse(advanceBuffer) , .oneshot(read));

//Logic for reseting FIFO
	always_comb begin
		clearFIFO = ~clear | ~resetN;
	end


	


//Address Calculation Code

	always_ff @(posedge clk) begin
		//No reset in this. All of our reset type states have this continually read the input for the new value
		if(wrAddr) begin
			addr <= requestAddr;
		end
		else begin
			if(incAddr) begin
				addr <= addr + 1;
			end
			else begin
				addr <= addr;
			end
		end

	end

	//Number of Reads calculator
	always_ff @(posedge clk) begin
		//No reset in this. All of our reset type states have this continually read the input for the new value
		if(wrNumReads) begin
			storedReads <= numReads;
		end
		else begin
			storedReads <= storedReads;
		end
	end

	//i Tracker
	always_ff @(posedge clk) begin
		//No reset in this. All of our reset type states have this continually read the input for the new value
		if(clearFIFO) begin
			i <= 0;
		end
		else begin
			if(incI) begin
				i <= i + 1;
			end
			else begin
				i <= i;
			end
		end

	end

//typedef enum logic [3:0] {s_init, s_fifoReset, s_req, s_wait[0:3], s_insertInc, s_hold} bramControl_t;

//Control logic

	always_ff @(posedge clk) begin
		if(!resetN || !clear) begin
			currState <= s_init;
		end
		else begin
			currState <= nextState;
		end
	end
	always_comb begin
		unique case(currState)
			s_init:begin
				if(resetN) begin
					nextState = currState.next;
				end
				else begin
					nextState = currState.first;
				end
			end
			s_fifoReset:begin
				if(wr_rst_busy || rd_rst_busy) begin
					nextState = currState;
				end
				else begin
					nextState = currState.next;
				end
			end
			s_req,s_wait0,s_wait1,s_wait2,s_wait3:begin
				nextState = currState.next;
			end
			s_insertInc:begin
				if(i < storedReads) begin
					nextState = s_req;
				end
				else begin
					nextState = s_hold;
				end
			end
			s_hold: begin
				if(clear) begin
					nextState = currState;
				end
				else begin
					nextState = s_fifoReset;
				end
			end
		endcase
	end
	always_comb begin
		unique case(currState)
			s_init: {bramWe,dataValid,wrAddr, wrNumReads,incAddr,wr_en,bramEnable,incI}                        = 8'b00110000;
			s_fifoReset: {bramWe,dataValid,wrAddr, wrNumReads,incAddr,wr_en,bramEnable,incI}                   = 8'b00000000;
			s_req,s_wait0,s_wait1,s_wait2: {bramWe,dataValid,wrAddr, wrNumReads,incAddr,wr_en,bramEnable,incI} = 8'b00000010;
			s_wait3: {bramWe,dataValid,wrAddr, wrNumReads,incAddr,wr_en,bramEnable,incI}                       = 8'b00000011;
			s_insertInc: {bramWe,dataValid,wrAddr, wrNumReads,incAddr,wr_en,bramEnable,incI}                   = 8'b00001100;
			s_hold: {bramWe,dataValid,wrAddr, wrNumReads,incAddr,wr_en,bramEnable,incI}                        = 8'b01110000;
		endcase
	end

	

//Create a general FIFO using XPM

	// xpm_fifo_sync: Synchronous FIFO
	// Xilinx Parameterized Macro, version 2020.1

	xpm_fifo_sync #(
		.DOUT_RESET_VALUE("0"),           // String
		.ECC_MODE("no_ecc"),              // String
		.FIFO_MEMORY_TYPE("distributed"), // Yes, I know I am using distributed. I need something here, and not all the way in BRAM. Its only .7% of the LUTS
		.FIFO_READ_LATENCY(1),            // DECIMAL
		.FIFO_WRITE_DEPTH(256),           // DECIMAL
		.FULL_RESET_VALUE(0),             // DECIMAL
		.READ_DATA_WIDTH(32),             // DECIMAL
		.READ_MODE("fwft"),                // String
		.SIM_ASSERT_CHK(0),               // DECIMAL; 0=disable simulation messages, 1=enable simulation messages
		.USE_ADV_FEATURES("0000"),        // String
		.WAKEUP_TIME(0),                  // DECIMAL
		.WRITE_DATA_WIDTH(32)             // DECIMAL
	)
	xpm_fifo_sync_inst (


		.dout(requestData), // READ_DATA_WIDTH-bit output: Read Data: The output data bus is driven
		// when reading the FIFO.


		.rd_rst_busy(rd_rst_busy), // 1-bit output: Read Reset Busy: Active-High indicator that the FIFO read
		// domain is currently in a reset state.


		.wr_rst_busy(wr_rst_busy), // 1-bit output: Write Reset Busy: Active-High indicator that the FIFO
		// write domain is currently in a reset state.

		.din(readData), // WRITE_DATA_WIDTH-bit input: Write Data: The input data bus used when
		// writing the FIFO.


		.rd_en(read), // 1-bit input: Read Enable: If the FIFO is not empty, asserting this
		// signal causes data (on dout) to be read from the FIFO. Must be held
		// active-low when rd_rst_busy is active high.

		.rst(clearFIFO), // 1-bit input: Reset: Must be synchronous to wr_clk. The clock(s) can be
		// unstable at the time of applying reset, but reset must be released only
		// after the clock(s) is/are stable.


		.wr_clk(clk), // 1-bit input: Write clock: Used for write operation. wr_clk must be a
		// free running clock.

		.wr_en(wr_en) // 1-bit input: Write Enable: If the FIFO is not full, asserting this
	// signal causes data (on din) to be written to the FIFO Must be held
	// active-low when rst or wr_rst_busy or rd_rst_busy is active high

	);

// End of xpm_fifo_sync_inst instantiation







endmodule
