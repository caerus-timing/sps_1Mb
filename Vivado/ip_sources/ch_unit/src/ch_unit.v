`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Adam Satar
//winter 1819
//ece team17
//combines memory controller and memory
//////////////////////////////////////////////////////////////////////////////////

module ch_unit
	#(
		parameter N_ADDR_BITS = 20,
		parameter DATA_WIDTH  = 1,
		parameter DEPTH       = 1048576
	)
	(
		input clk,
		input reset,
		input playback_clk,
		input [N_ADDR_BITS - 1 : 0] set_ram_addr,
		input loop,
		input w_ram,
		input din,
		output ch_out,
		input mode,
		input write_start_addr,
		output playback_done,
		input write_stop_addr,
		input [N_ADDR_BITS - 1 : 0] stop_addr,
		input playback_en,
		output wire [N_ADDR_BITS - 1 : 0] addra,
		output wire [DATA_WIDTH - 1 : 0] dina,
		input wire [DATA_WIDTH - 1 : 0] douta,
		output wire wea
	);

	assign dina = din;





	ram_ctrl # (
		.N_ADDR_BITS(N_ADDR_BITS),
		.MEM_DEPTH(DEPTH)
	) ram_ctrl_unit (
		.s_axi_clk(clk),
		.s_axi_reset(reset),
		.playback_clk(playback_clk),
		.ram_addr(addra),
		.playback_done(playback_done),
		.wen(wea), //to ram
		.mode(mode),
		.write_stop_addr(write_stop_addr),
		.write_addr(write_start_addr),
		.stop_addr(stop_addr),
		.playback_en(playback_en),
		.loop_playback(loop),
		.set_ram_addr(set_ram_addr),
		.ch_out(ch_out),
		.ramOut(douta[0])
	);

endmodule
