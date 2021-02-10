`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: RHIT
// Engineer: Brendan Mulholland
//
// Create Date: 08/04/2020 10:47:13 AM
// Design Name:
// Module Name: ch_unit_tl
// Project Name:
// Target Devices:
// Tool Versions:
// Description: Top Level Interface for module with connections to AXI, BRAM, ect.
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////



module sampleIP_tl #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface S00_AXI
		parameter integer C_S00_AXI_DATA_WIDTH = 32,
		parameter integer C_S00_AXI_ADDR_WIDTH = 6,
		parameter integer BRAM_A_ADDR_SIZE     = 14,
		parameter integer BRAM_A_DATA_SIZE     = 32,
		parameter integer BRAM_A_DEPTH         = 32768
	)
	(
		// Users to add ports here


		//Output for the BRAM Unit to have it exterior to remove any weird synthesis issues

		output wire clkA,
		output wire wea,
		output wire [BRAM_A_ADDR_SIZE - 1 : 0] addra,
		output wire [BRAM_A_DATA_SIZE - 1 : 0] dina,
		input wire [BRAM_A_DATA_SIZE - 1 : 0] douta,
		output wire ena,
        input wire bramReset,
        input wire canIn,
        output wire dOut,
        output wire enOut,
        output wire interrupt,
        output wire [5:0] metaState,
        

		
		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Slave Bus Interface S00_AXI
		input wire clk,
		input wire resetn,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_awaddr,
		input wire [2 : 0] s00_axi_awprot,
		input wire s00_axi_awvalid,
		output wire s00_axi_awready,
		input wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_wdata,
		input wire [(C_S00_AXI_DATA_WIDTH/8)-1 : 0] s00_axi_wstrb,
		input wire s00_axi_wvalid,
		output wire s00_axi_wready,
		output wire [1 : 0] s00_axi_bresp,
		output wire s00_axi_bvalid,
		input wire s00_axi_bready,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_araddr,
		input wire [2 : 0] s00_axi_arprot,
		input wire s00_axi_arvalid,
		output wire s00_axi_arready,
		output wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_rdata,
		output wire [1 : 0] s00_axi_rresp,
		output wire s00_axi_rvalid,
		input wire s00_axi_rready
	);



// Instantiation of Axi Bus Interface S00_AXI
	axi_slave_module # (
		.C_S_AXI_DATA_WIDTH(C_S00_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_S00_AXI_ADDR_WIDTH),
		.S_BRAM_A_ADDR_SIZE(BRAM_A_ADDR_SIZE),
		.S_BRAM_A_DATA_SIZE(BRAM_A_DATA_SIZE),
		.S_BRAM_A_DEPTH(BRAM_A_DEPTH)
	) axi_slave (
	    .delayDBG(metaState),
        .BRAM_enable(ena),
        .BRAM_reset(bramReset),
        .canIn(canIn),
        .sampleOut(dOut),
        .outSwitch(enOut),
        .interrupt(interrupt),
		.S_WEA(wea),
		.S_ADDRA(addra),
		.S_DINA(dina),
		.S_DOUTA(douta),
		.S_AXI_ACLK(clk),
		.S_AXI_ARESETN(resetn),
		.S_AXI_AWADDR(s00_axi_awaddr),
		.S_AXI_AWPROT(s00_axi_awprot),
		.S_AXI_AWVALID(s00_axi_awvalid),
		.S_AXI_AWREADY(s00_axi_awready),
		.S_AXI_WDATA(s00_axi_wdata),
		.S_AXI_WSTRB(s00_axi_wstrb),
		.S_AXI_WVALID(s00_axi_wvalid),
		.S_AXI_WREADY(s00_axi_wready),
		.S_AXI_BRESP(s00_axi_bresp),
		.S_AXI_BVALID(s00_axi_bvalid),
		.S_AXI_BREADY(s00_axi_bready),
		.S_AXI_ARADDR(s00_axi_araddr),
		.S_AXI_ARPROT(s00_axi_arprot),
		.S_AXI_ARVALID(s00_axi_arvalid),
		.S_AXI_ARREADY(s00_axi_arready),
		.S_AXI_RDATA(s00_axi_rdata),
		.S_AXI_RRESP(s00_axi_rresp),
		.S_AXI_RVALID(s00_axi_rvalid),
		.S_AXI_RREADY(s00_axi_rready)
	);

	// Add user logic here

	assign clkA = clk;

// User logic ends

endmodule

