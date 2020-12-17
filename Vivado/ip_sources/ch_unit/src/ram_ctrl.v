`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//  Company:
//  Engineer:
//
//  Create  Date:   03/17/2019  11:19:25    AM
//  Design  Name:
//  Module  Name:   ram_ctrl
//  Project Name:
//  Target  Devices:
//  Tool    Versions:
//  Description:
//
//  Dependencies:
//
//  Revision:
//  Revision    0.01    -   File    Created
//  Additional  Comments:
//
//////////////////////////////////////////////////////////////////////////////////



module ram_ctrl #
	(
		parameter N_ADDR_BITS = 20,
		parameter MEM_DEPTH   = 1048576,
		parameter DATA_WIDTH  = 1
	)
	(
		input s_axi_clk,
		input playback_clk,
		input s_axi_reset,
		input playback_en,
		input write_addr, //level signal  from    gpio
		input write_stop_addr,
		input loop_playback,
		input [N_ADDR_BITS - 1:0] set_ram_addr,
		output reg [N_ADDR_BITS -1:0] ram_addr,
		input [N_ADDR_BITS - 1: 0] stop_addr,
		output reg playback_done,
		output reg wen,
		input mode,
		input wire [DATA_WIDTH - 1 : 0] ramOut,
		output reg ch_out
	);

	localparam READ_MODE = 1'b0, WRITE_MODE = 1'b1;
	//  reg [N_ADDR_BITS    -   1:  0]  ram_addr    =   0;


	pos_oneshot set_addr_oneshot_unit(
		.i_clk(s_axi_clk),
		.i_reset(s_axi_reset),
		.input_pulse(write_addr),
		.oneshot(write_addr_oneshot)
	);


	pos_oneshot write_stop_addr_oneshot_unit(
		.i_clk(s_axi_clk),
		.i_reset(s_axi_reset),
		.input_pulse(write_stop_addr),
		.oneshot(write_stop_addr_oneshot)
	);


	reg [N_ADDR_BITS - 1:0] read_stop_addr;

	//This handles the ch_out data. Prevents a stupid edge condition I think could happen
	always @(*) begin
		if(playback_en == 1'b1) begin
			ch_out <= ramOut;
		end
		else begin
			ch_out <= 1'b0; //This could be made a setting to communicate on the bus
		end

	end

	//Handle writing the stop addr
	always @(negedge s_axi_clk) begin
		if(s_axi_reset == 1'b0) begin
			read_stop_addr <= MEM_DEPTH - 1;
		end
		else begin
			if(write_stop_addr_oneshot == 1'b1) begin
				read_stop_addr <= stop_addr;
			end
			else begin
				read_stop_addr <= read_stop_addr;
			end
		end
	end

	//Handle everything else
	always @(negedge s_axi_reset or posedge write_addr_oneshot or posedge playback_clk) begin
		if(s_axi_reset == 1'b0) begin
			ram_addr      <= 1'b0;
			playback_done <= 1'b0;
			wen           <= 0;
		end
		else begin
			if(write_addr_oneshot == 1'b1) begin
				ram_addr      <= set_ram_addr;
				playback_done <= 1'b0;
				wen           <= 0;
			end
			else begin
				case(mode)
					READ_MODE: begin
						wen <= 1'b0;
						if(playback_en == 1'b1) begin
							if(ram_addr == read_stop_addr) begin
								if(loop_playback == 1'b0) begin
									playback_done <= 1'b1;
									ram_addr      <= ram_addr;
								end
								else begin
									playback_done <= 1'b0;
									ram_addr      <= 1'b0;
								end

							end
							else begin
								playback_done <= 1'b0;
								ram_addr      <= ram_addr + 1'b1;
							end
						end
						else begin
							playback_done <= 0;
							ram_addr      <= 1'b0;
						end
					end
					WRITE_MODE: begin
						wen           <= 1'b1;
						ram_addr      <= ram_addr;
						playback_done <= 1'b0;
					end
					default: begin
						wen           <= 1'b0;
						ram_addr      <= ram_addr;
						playback_done <= 1'b0;
					end
				endcase
			end
		end
	end

endmodule