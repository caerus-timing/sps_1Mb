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


module halfDuplex
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
		input logic [15:0] requestAddr_read,
		input logic [15:0] numReads,
		input logic [15:0] requestAddr_write,
		input logic [15:0] numWrites,
		input logic [BRAM_DATA_SIZE - 1: 0] sendData, //Used in write as data from system to go to BRAM
		input logic pulseWrite,
		input logic readReq,
		input logic writeReq,
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

	typedef enum logic [3:0] {s_init_r, s_fifoReset_r, s_hold_r, s_semWait_r, s_req, s_wait[0:3], s_insertInc, s_releaseSem_r, s_stop} bramRead_t;

	typedef enum logic [3:0] {s_init_w, s_fifoReset_w, s_hold_w, s_semWait_w, s_wait_w, s_bramEnable, s_asserW, s_deassertW, s_removeInc, s_pause, s_releaseSem_w} bramWrite_t;


//General variables.

	logic clearFIFO;
	logic read_r;
	logic wr_en_r;
	logic rd_rst_busy_r;
	logic wr_rst_busy_r;


	logic read_w;
	logic wr_en_w;
	logic rd_rst_busy_w;
	logic wr_rst_busy_w;


//Semaphore Variables
	logic [1:0] ctrl_sem;
	logic setSem_r;
	logic setSem_w;
	logic releaseSem_r;
	logic releaseSem_w;

	

	//FSM Read Variables

	bramRead_t currState_r, nextState_r;
	logic wrAddr_r;
	logic wrNumReads;
	logic incAddr_r;
	logic incI_r;
	logic [15:0] i_r;
	logic [15:0] storedReads;
	logic [BRAM_ADDR_SIZE - 1 : 0] addr_r;
	logic dataValid_r;
	logic bramEnable_r;

	//FSM Write Variables

	bramWrite_t currState_w, nextState_w;
	logic wrAddr_w;
	logic wrNumWrites;
	logic incAddr_w;
	logic incI_w;
	logic [15:0] i_w;
	logic [15:0] storedWrites;
	logic [BRAM_ADDR_SIZE - 1 : 0] addr_w;
	logic clearI_w;
	logic dataValid_w;
	logic bramEnable_w;
	

	//Shared signal handling
	always_comb begin
		bramEnable = bramEnable_w || bramEnable_r;
	end

	always_comb begin
		dataValid = dataValid_w || dataValid_r;
	end


//Oneshot encoder for the readSignal : READ
	oneshot readOS(.*, .pulse(advanceBuffer) , .oneshot(read_r));


//Oneshot for the readSignal: WRITE

	oneshot writeOS(.*, .pulse(pulseWrite) , .oneshot(wr_en_w));

//Logic for reseting FIFO
	always_comb begin
		clearFIFO = ~clear | ~resetN;
	end


//Semaphore logic

	always_ff @(posedge clk) begin
		if(!resetN) begin
			ctrl_sem <= 2'b00;
		end else begin
			//Arbitrarially giving preference to read, as it will most likely run first, and preference to set over release
			if(setSem_r && (ctrl_sem == 2'b00)) begin
				ctrl_sem <= 2'b01;
			end else if(setSem_w && (ctrl_sem == 2'b00)) begin
				ctrl_sem <= 2'b10;
			end else if(releaseSem_r && (ctrl_sem == 2'b01)) begin
				ctrl_sem <= 2'b00;
			end else if(releaseSem_w && (ctrl_sem == 2'b10)) begin
				ctrl_sem <= 2'b00;
			end else begin
				ctrl_sem <= ctrl_sem;
			end
		end
	end


//Address Calculation Code: READ

	always_ff @(posedge clk) begin
		//No reset in this. All of our reset type states have this continually read the input for the new value
		if(wrAddr_r) begin
			addr_r <= requestAddr_read;
		end
		else begin
			if(incAddr_r) begin
				addr_r <= addr_r + 1;
			end
			else begin
				addr_r <= addr_r;
			end
		end

	end
//Address Calculation Code: WRITE
	always_ff @(posedge clk) begin
		//No reset in this. All of our reset type states have this continually read the input for the new value
		if(wrAddr_w) begin
			addr_w <= requestAddr_write;
		end
		else begin
			if(incAddr_w) begin
				addr_w <= addr_w + 1;
			end
			else begin
				addr_w <= addr_w;
			end
		end

	end

//Number of Reads calculator : READ
	always_ff @(posedge clk) begin
		//No reset in this. All of our reset type states have this continually read the input for the new value
		if(wrNumReads) begin
			storedReads <= numReads;
		end
		else begin
			storedReads <= storedReads;
		end
	end

//Number of Reads calculator : WRITE
	always_ff @(posedge clk) begin
		//No reset in this. All of our reset type states have this continually read the input for the new value
		if(wrNumWrites) begin
			storedWrites <= numWrites;
		end
		else begin
			storedWrites <= storedWrites;
		end
	end

//i Tracker : READ
	always_ff @(posedge clk) begin
		//No reset in this. All of our reset type states have this continually read the input for the new value
		if(clearFIFO) begin
			i_r <= 0;
		end
		else begin
			if(incI_r) begin
				i_r <= i_r + 1;
			end
			else begin
				i_r <= i_r;
			end
		end

	end

//i Tracker : READ
always_ff @(posedge clk) begin
	//No reset in this. All of our reset type states have this continually read the input for the new value
	if(clearI_w) begin
		i_w <= 0;
	end
	else begin
		if(incI_r) begin
			i_w <= i_w + 1;
		end
		else begin
			i_w <= i_w;
		end
	end

end

//typedef enum logic [3:0] {s_init_r, s_fifoReset_r, s_hold_r, s_semWait_r, s_req, s_wait[0:3], s_insertInc, s_releaseSem_r, s_stop} bramRead_t;

//Control logic

	always_ff @(posedge clk) begin
		if(!resetN || !clear) begin
			currState_r <= s_init_r;
		end
		else begin
			currState_r <= nextState_r;
		end
	end
	always_comb begin
		unique case(currState_r)
			s_init_r:begin
				if(resetN) begin
					nextState_r = currState_r.next;
				end
				else begin
					nextState_r = currState_r.first;
				end
			end
			s_fifoReset_r:begin
				if(wr_rst_busy_r || rd_rst_busy_r) begin
					nextState_r = currState_r;
				end
				else begin
					nextState_r = currState_r.next;
				end
			end
			s_hold_r:begin
				if(!readReq) begin
					nextState_r = currState_r;
				end else begin
					if(ctrl_sem == 2'b10) begin
						nextState_r = s_semWait_r;
					end else begin
						nextState_r = s_req;
					end
				end
			end
			s_semWait_r: begin
				if(ctrl_sem == 2'b00) begin
						nextState_r = s_req;
				end else begin
					nextState_r = currState_r;
				end
			end
			s_req,s_wait0,s_wait1,s_wait2,s_wait3:begin
				nextState_r = currState_r.next;
			end
			s_insertInc:begin
				if(i_r < storedReads) begin
					nextState_r = s_req;
				end
				else begin
					nextState_r = s_releaseSem_r;
				end
			end
			s_releaseSem_r:begin
				nextState_r = s_stop;
			end
			s_stop: begin
				if(readReq) begin
					nextState_r = currState_r;
				end
				else begin
					nextState_r = s_hold_r;
				end
			end
		endcase
	end
	always_comb begin
		unique case(currState_r)
			s_init_r: {wrAddr_r, wrNumReads,bramEnable_r,wr_en_r,incAddr_r,incI_r,dataValid_r,setSem_r,releaseSem_r} = 9'b110000000;
			s_fifoReset_r, s_hold_r, s_semWait_r: {wrAddr_r, wrNumReads,bramEnable_r,wr_en_r,incAddr_r,incI_r,dataValid_r,setSem_r,releaseSem_r} = 9'b000000000;
			s_req: {wrAddr_r, wrNumReads,bramEnable_r,wr_en_r,incAddr_r,incI_r,dataValid_r,setSem_r,releaseSem_r} = 9'b001000010;
			s_wait0,s_wait1,s_wait2: {wrAddr_r, wrNumReads,bramEnable_r,wr_en_r,incAddr_r,incI_r,dataValid_r,setSem_r,releaseSem_r} = 9'b001000000;
			s_wait3: {wrAddr_r, wrNumReads,bramEnable_r,wr_en_r,incAddr_r,incI_r,dataValid_r,setSem_r,releaseSem_r} = 9'b001001000;
			s_insertInc: {wrAddr_r, wrNumReads,bramEnable_r,wr_en_r,incAddr_r,incI_r,dataValid_r,setSem_r,releaseSem_r} = 9'b001110000;
			s_releaseSem_r: {wrAddr_r, wrNumReads,bramEnable_r,wr_en_r,incAddr_r,incI_r,dataValid_r,setSem_r,releaseSem_r} = 9'b000000001;
			s_hold_r: {wrAddr_r, wrNumReads,bramEnable_r,wr_en_r,incAddr_r,incI_r,dataValid_r,setSem_r,releaseSem_r} = 9'b000000100;
		endcase
	end
//Shared between Read and Write: dataValid for if the data read from BRAM is complete or the data write to BRAM is complete
//bramEnable: Externally enables the BRAM

//logic [3:0] {s_init_w, s_fifoReset_w, s_hold_w, s_semWait_w, s_wait_w, s_bramEnable, s_asserW, s_deassertW, s_removeInc, s_pause, s_releaseSem_w} bramWrite_t;

	always_ff @(posedge clk) begin
		if(!resetN) begin
			currState_w <= s_init_w;
		end else begin
			currState_w <= nextState_w;
		end
	end

	always_comb begin
		unique case(currState_w)
			s_init_w:begin
				nextState_w = s_fifoReset_w;
			end
			s_fifoReset_w:begin
				if(wr_rst_busy_w || rd_rst_busy_w) begin
					nextState_w = currState_w;
				end
				else begin
					nextState_w = currState_w.next;
				end
			end
			s_hold_w:begin
				if(!writeReq) begin
					nextState_w = currState_w;
				end else begin
					if(ctrl_sem == 2'b01) begin
						nextState_w = s_semWait_w;
					end else begin
						nextState_w = s_wait_w;
					end
				end
			end
			s_semWait_w: begin
				if(ctrl_sem == 2'b00) begin
					nextState_w = s_wait_w;
				end else begin
					nextState_w = currState_w;
				end
			end
			s_wait_w:begin
				if(!writeReq) begin
					nextState_w = currState_w;
				end else begin
					nextState_w = s_bramEnable;
				end
			end
			s_bramEnable, s_asserW, s_deassertW, s_removeInc:begin
				nextState_w = currState_w.next;
			end
			s_pause:begin
				if(i_w < storedWrites) begin
					nextState_w = s_asserW;
				end
				else begin
					nextState_w = s_releaseSem_w;
				end
			end
			s_releaseSem_w:begin
				nextState_w = s_hold_w;
			end
		endcase
	end


	always_comb begin
		unique case(currState_w)
			s_init_w, s_fifoReset_w: {wrNumWrites, wrAddr_w, read_w, bramWe, bramEnable_w, clearI_w, incAddr_w, incI_w, dataValid_w, setSem_w, releaseSem_w} = 	11'b00000100000;
			s_hold_w: {wrNumWrites, wrAddr_w, read_w, bramWe, bramEnable_w, clearI_w, incAddr_w, incI_w, dataValid_w, setSem_w, releaseSem_w} = 	11'b11000100000;
			s_semWait_w: {wrNumWrites, wrAddr_w, read_w, bramWe, bramEnable_w, clearI_w, incAddr_w, incI_w, dataValid_w, setSem_w, releaseSem_w} = 	11'b00000000000;
			s_hold_w: {wrNumWrites, wrAddr_w, read_w, bramWe, bramEnable_w, clearI_w, incAddr_w, incI_w, dataValid_w, setSem_w, releaseSem_w} = 	11'b00000000010;
			s_bramEnable, s_deassertW, s_pause: {wrNumWrites, wrAddr_w, read_w, bramWe, bramEnable_w, clearI_w, incAddr_w, incI_w, dataValid_w, setSem_w, releaseSem_w} = 	11'b00001000000;
			s_asserW: {wrNumWrites, wrAddr_w, read_w, bramWe, bramEnable_w, clearI_w, incAddr_w, incI_w, dataValid_w, setSem_w, releaseSem_w} = 	11'b00011000000;
			s_removeInc: {wrNumWrites, wrAddr_w, read_w, bramWe, bramEnable_w, clearI_w, incAddr_w, incI_w, dataValid_w, setSem_w, releaseSem_w} = 	11'b00101011000;
			s_releaseSem_w: {wrNumWrites, wrAddr_w, read_w, bramWe, bramEnable_w, clearI_w, incAddr_w, incI_w, dataValid_w, setSem_w, releaseSem_w} = 	11'b00000000101;
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
	fifo_readCache (


		.dout(requestData), // READ_DATA_WIDTH-bit output: Read Data: The output data bus is driven
		// when reading the FIFO.


		.rd_rst_busy(rd_rst_busy_r), // 1-bit output: Read Reset Busy: Active-High indicator that the FIFO read
		// domain is currently in a reset state.


		.wr_rst_busy(wr_rst_busy_r), // 1-bit output: Write Reset Busy: Active-High indicator that the FIFO
		// write domain is currently in a reset state.

		.din(readData), // WRITE_DATA_WIDTH-bit input: Write Data: The input data bus used when
		// writing the FIFO.


		.rd_en(read_r), // 1-bit input: Read Enable: If the FIFO is not empty, asserting this
		// signal causes data (on dout) to be read from the FIFO. Must be held
		// active-low when rd_rst_busy is active high.
		//TODO: MAY HAVE TO FIX
		.rst(~resetN), // 1-bit input: Reset: Must be synchronous to wr_clk. The clock(s) can be
		// unstable at the time of applying reset, but reset must be released only
		// after the clock(s) is/are stable.


		.wr_clk(clk), // 1-bit input: Write clock: Used for write operation. wr_clk must be a
		// free running clock.

		.wr_en(wr_en_r) // 1-bit input: Write Enable: If the FIFO is not full, asserting this
	// signal causes data (on din) to be written to the FIFO Must be held
	// active-low when rst or wr_rst_busy or rd_rst_busy is active high

	);

// End of xpm_fifo_sync_inst instantiation

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
	fifo_writeCache (


		.dout(writeData), // READ_DATA_WIDTH-bit output: Read Data: The output data bus is driven
		// when reading the FIFO.


		.rd_rst_busy(rd_rst_busy_w), // 1-bit output: Read Reset Busy: Active-High indicator that the FIFO read
		// domain is currently in a reset state.


		.wr_rst_busy(wr_rst_busy_w), // 1-bit output: Write Reset Busy: Active-High indicator that the FIFO
		// write domain is currently in a reset state.

		.din(sendData), // WRITE_DATA_WIDTH-bit input: Write Data: The input data bus used when
		// writing the FIFO.


		.rd_en(read_w), // 1-bit input: Read Enable: If the FIFO is not empty, asserting this
		// signal causes data (on dout) to be read from the FIFO. Must be held
		// active-low when rd_rst_busy is active high.

		.rst(), //Purposefully left unconnected. This module will never be reset as it is assumed default state is state desired


		.wr_clk(clk), // 1-bit input: Write clock: Used for write operation. wr_clk must be a
		// free running clock.

		.wr_en(pulseWrite) // 1-bit input: Write Enable: If the FIFO is not full, asserting this
	// signal causes data (on din) to be written to the FIFO Must be held
	// active-low when rst or wr_rst_busy or rd_rst_busy is active high

	);

// End of xpm_fifo_sync_inst instantiation







endmodule
