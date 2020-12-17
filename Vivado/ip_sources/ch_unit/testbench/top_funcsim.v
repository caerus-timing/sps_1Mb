// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Thu Dec 17 13:17:02 2020
// Host        : dhcp-137-112-99-228 running 64-bit Fedora release 32 (Thirty Two)
// Command     : write_verilog -mode funcsim top_funcsim.v
// Design      : sampleIP_tl
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module axi_slave_module
   (dOut,
    enOut,
    interrupt,
    metaState,
    addra,
    ena,
    S_AXI_WREADY,
    S_AXI_AWREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axi_bvalid,
    clk,
    resetn,
    canIn,
    douta,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_wstrb,
    s00_axi_arvalid,
    s00_axi_bready,
    s00_axi_rready);
  output dOut;
  output enOut;
  output interrupt;
  output [3:0]metaState;
  output [13:0]addra;
  output ena;
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input clk;
  input resetn;
  input canIn;
  input [31:0]douta;
  input [3:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_araddr;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input [3:0]s00_axi_wstrb;
  input s00_axi_arvalid;
  input s00_axi_bready;
  input s00_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire [13:0]addra;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire axi_arready0;
  wire axi_awready0;
  wire axi_awready_i_1_n_0;
  wire axi_bvalid_i_1_n_0;
  wire \axi_rdata[0]_i_4_n_0 ;
  wire \axi_rdata[0]_i_5_n_0 ;
  wire \axi_rdata[0]_i_6_n_0 ;
  wire \axi_rdata[0]_i_7_n_0 ;
  wire \axi_rdata[10]_i_4_n_0 ;
  wire \axi_rdata[10]_i_5_n_0 ;
  wire \axi_rdata[10]_i_6_n_0 ;
  wire \axi_rdata[10]_i_7_n_0 ;
  wire \axi_rdata[11]_i_4_n_0 ;
  wire \axi_rdata[11]_i_5_n_0 ;
  wire \axi_rdata[11]_i_6_n_0 ;
  wire \axi_rdata[11]_i_7_n_0 ;
  wire \axi_rdata[12]_i_4_n_0 ;
  wire \axi_rdata[12]_i_5_n_0 ;
  wire \axi_rdata[12]_i_6_n_0 ;
  wire \axi_rdata[12]_i_7_n_0 ;
  wire \axi_rdata[13]_i_4_n_0 ;
  wire \axi_rdata[13]_i_5_n_0 ;
  wire \axi_rdata[13]_i_6_n_0 ;
  wire \axi_rdata[13]_i_7_n_0 ;
  wire \axi_rdata[14]_i_4_n_0 ;
  wire \axi_rdata[14]_i_5_n_0 ;
  wire \axi_rdata[14]_i_6_n_0 ;
  wire \axi_rdata[14]_i_7_n_0 ;
  wire \axi_rdata[15]_i_4_n_0 ;
  wire \axi_rdata[15]_i_5_n_0 ;
  wire \axi_rdata[15]_i_6_n_0 ;
  wire \axi_rdata[15]_i_7_n_0 ;
  wire \axi_rdata[16]_i_4_n_0 ;
  wire \axi_rdata[16]_i_5_n_0 ;
  wire \axi_rdata[16]_i_6_n_0 ;
  wire \axi_rdata[16]_i_7_n_0 ;
  wire \axi_rdata[17]_i_4_n_0 ;
  wire \axi_rdata[17]_i_5_n_0 ;
  wire \axi_rdata[17]_i_6_n_0 ;
  wire \axi_rdata[17]_i_7_n_0 ;
  wire \axi_rdata[18]_i_4_n_0 ;
  wire \axi_rdata[18]_i_5_n_0 ;
  wire \axi_rdata[18]_i_6_n_0 ;
  wire \axi_rdata[18]_i_7_n_0 ;
  wire \axi_rdata[19]_i_4_n_0 ;
  wire \axi_rdata[19]_i_5_n_0 ;
  wire \axi_rdata[19]_i_6_n_0 ;
  wire \axi_rdata[19]_i_7_n_0 ;
  wire \axi_rdata[1]_i_4_n_0 ;
  wire \axi_rdata[1]_i_5_n_0 ;
  wire \axi_rdata[1]_i_6_n_0 ;
  wire \axi_rdata[1]_i_7_n_0 ;
  wire \axi_rdata[20]_i_4_n_0 ;
  wire \axi_rdata[20]_i_5_n_0 ;
  wire \axi_rdata[20]_i_6_n_0 ;
  wire \axi_rdata[20]_i_7_n_0 ;
  wire \axi_rdata[21]_i_4_n_0 ;
  wire \axi_rdata[21]_i_5_n_0 ;
  wire \axi_rdata[21]_i_6_n_0 ;
  wire \axi_rdata[21]_i_7_n_0 ;
  wire \axi_rdata[22]_i_4_n_0 ;
  wire \axi_rdata[22]_i_5_n_0 ;
  wire \axi_rdata[22]_i_6_n_0 ;
  wire \axi_rdata[22]_i_7_n_0 ;
  wire \axi_rdata[23]_i_4_n_0 ;
  wire \axi_rdata[23]_i_5_n_0 ;
  wire \axi_rdata[23]_i_6_n_0 ;
  wire \axi_rdata[23]_i_7_n_0 ;
  wire \axi_rdata[24]_i_4_n_0 ;
  wire \axi_rdata[24]_i_5_n_0 ;
  wire \axi_rdata[24]_i_6_n_0 ;
  wire \axi_rdata[24]_i_7_n_0 ;
  wire \axi_rdata[25]_i_4_n_0 ;
  wire \axi_rdata[25]_i_5_n_0 ;
  wire \axi_rdata[25]_i_6_n_0 ;
  wire \axi_rdata[25]_i_7_n_0 ;
  wire \axi_rdata[26]_i_4_n_0 ;
  wire \axi_rdata[26]_i_5_n_0 ;
  wire \axi_rdata[26]_i_6_n_0 ;
  wire \axi_rdata[26]_i_7_n_0 ;
  wire \axi_rdata[27]_i_4_n_0 ;
  wire \axi_rdata[27]_i_5_n_0 ;
  wire \axi_rdata[27]_i_6_n_0 ;
  wire \axi_rdata[27]_i_7_n_0 ;
  wire \axi_rdata[28]_i_4_n_0 ;
  wire \axi_rdata[28]_i_5_n_0 ;
  wire \axi_rdata[28]_i_6_n_0 ;
  wire \axi_rdata[28]_i_7_n_0 ;
  wire \axi_rdata[29]_i_4_n_0 ;
  wire \axi_rdata[29]_i_5_n_0 ;
  wire \axi_rdata[29]_i_6_n_0 ;
  wire \axi_rdata[29]_i_7_n_0 ;
  wire \axi_rdata[2]_i_4_n_0 ;
  wire \axi_rdata[2]_i_5_n_0 ;
  wire \axi_rdata[2]_i_6_n_0 ;
  wire \axi_rdata[2]_i_7_n_0 ;
  wire \axi_rdata[30]_i_4_n_0 ;
  wire \axi_rdata[30]_i_5_n_0 ;
  wire \axi_rdata[30]_i_6_n_0 ;
  wire \axi_rdata[30]_i_7_n_0 ;
  wire \axi_rdata[31]_i_4_n_0 ;
  wire \axi_rdata[31]_i_5_n_0 ;
  wire \axi_rdata[31]_i_6_n_0 ;
  wire \axi_rdata[31]_i_7_n_0 ;
  wire \axi_rdata[3]_i_4_n_0 ;
  wire \axi_rdata[3]_i_5_n_0 ;
  wire \axi_rdata[3]_i_6_n_0 ;
  wire \axi_rdata[3]_i_7_n_0 ;
  wire \axi_rdata[4]_i_4_n_0 ;
  wire \axi_rdata[4]_i_5_n_0 ;
  wire \axi_rdata[4]_i_6_n_0 ;
  wire \axi_rdata[4]_i_7_n_0 ;
  wire \axi_rdata[5]_i_4_n_0 ;
  wire \axi_rdata[5]_i_5_n_0 ;
  wire \axi_rdata[5]_i_6_n_0 ;
  wire \axi_rdata[5]_i_7_n_0 ;
  wire \axi_rdata[6]_i_4_n_0 ;
  wire \axi_rdata[6]_i_5_n_0 ;
  wire \axi_rdata[6]_i_6_n_0 ;
  wire \axi_rdata[6]_i_7_n_0 ;
  wire \axi_rdata[7]_i_4_n_0 ;
  wire \axi_rdata[7]_i_5_n_0 ;
  wire \axi_rdata[7]_i_6_n_0 ;
  wire \axi_rdata[7]_i_7_n_0 ;
  wire \axi_rdata[8]_i_4_n_0 ;
  wire \axi_rdata[8]_i_5_n_0 ;
  wire \axi_rdata[8]_i_6_n_0 ;
  wire \axi_rdata[8]_i_7_n_0 ;
  wire \axi_rdata[9]_i_4_n_0 ;
  wire \axi_rdata[9]_i_5_n_0 ;
  wire \axi_rdata[9]_i_6_n_0 ;
  wire \axi_rdata[9]_i_7_n_0 ;
  wire \axi_rdata_reg[0]_i_2_n_0 ;
  wire \axi_rdata_reg[0]_i_3_n_0 ;
  wire \axi_rdata_reg[10]_i_2_n_0 ;
  wire \axi_rdata_reg[10]_i_3_n_0 ;
  wire \axi_rdata_reg[11]_i_2_n_0 ;
  wire \axi_rdata_reg[11]_i_3_n_0 ;
  wire \axi_rdata_reg[12]_i_2_n_0 ;
  wire \axi_rdata_reg[12]_i_3_n_0 ;
  wire \axi_rdata_reg[13]_i_2_n_0 ;
  wire \axi_rdata_reg[13]_i_3_n_0 ;
  wire \axi_rdata_reg[14]_i_2_n_0 ;
  wire \axi_rdata_reg[14]_i_3_n_0 ;
  wire \axi_rdata_reg[15]_i_2_n_0 ;
  wire \axi_rdata_reg[15]_i_3_n_0 ;
  wire \axi_rdata_reg[16]_i_2_n_0 ;
  wire \axi_rdata_reg[16]_i_3_n_0 ;
  wire \axi_rdata_reg[17]_i_2_n_0 ;
  wire \axi_rdata_reg[17]_i_3_n_0 ;
  wire \axi_rdata_reg[18]_i_2_n_0 ;
  wire \axi_rdata_reg[18]_i_3_n_0 ;
  wire \axi_rdata_reg[19]_i_2_n_0 ;
  wire \axi_rdata_reg[19]_i_3_n_0 ;
  wire \axi_rdata_reg[1]_i_2_n_0 ;
  wire \axi_rdata_reg[1]_i_3_n_0 ;
  wire \axi_rdata_reg[20]_i_2_n_0 ;
  wire \axi_rdata_reg[20]_i_3_n_0 ;
  wire \axi_rdata_reg[21]_i_2_n_0 ;
  wire \axi_rdata_reg[21]_i_3_n_0 ;
  wire \axi_rdata_reg[22]_i_2_n_0 ;
  wire \axi_rdata_reg[22]_i_3_n_0 ;
  wire \axi_rdata_reg[23]_i_2_n_0 ;
  wire \axi_rdata_reg[23]_i_3_n_0 ;
  wire \axi_rdata_reg[24]_i_2_n_0 ;
  wire \axi_rdata_reg[24]_i_3_n_0 ;
  wire \axi_rdata_reg[25]_i_2_n_0 ;
  wire \axi_rdata_reg[25]_i_3_n_0 ;
  wire \axi_rdata_reg[26]_i_2_n_0 ;
  wire \axi_rdata_reg[26]_i_3_n_0 ;
  wire \axi_rdata_reg[27]_i_2_n_0 ;
  wire \axi_rdata_reg[27]_i_3_n_0 ;
  wire \axi_rdata_reg[28]_i_2_n_0 ;
  wire \axi_rdata_reg[28]_i_3_n_0 ;
  wire \axi_rdata_reg[29]_i_2_n_0 ;
  wire \axi_rdata_reg[29]_i_3_n_0 ;
  wire \axi_rdata_reg[2]_i_2_n_0 ;
  wire \axi_rdata_reg[2]_i_3_n_0 ;
  wire \axi_rdata_reg[30]_i_2_n_0 ;
  wire \axi_rdata_reg[30]_i_3_n_0 ;
  wire \axi_rdata_reg[31]_i_2_n_0 ;
  wire \axi_rdata_reg[31]_i_3_n_0 ;
  wire \axi_rdata_reg[3]_i_2_n_0 ;
  wire \axi_rdata_reg[3]_i_3_n_0 ;
  wire \axi_rdata_reg[4]_i_2_n_0 ;
  wire \axi_rdata_reg[4]_i_3_n_0 ;
  wire \axi_rdata_reg[5]_i_2_n_0 ;
  wire \axi_rdata_reg[5]_i_3_n_0 ;
  wire \axi_rdata_reg[6]_i_2_n_0 ;
  wire \axi_rdata_reg[6]_i_3_n_0 ;
  wire \axi_rdata_reg[7]_i_2_n_0 ;
  wire \axi_rdata_reg[7]_i_3_n_0 ;
  wire \axi_rdata_reg[8]_i_2_n_0 ;
  wire \axi_rdata_reg[8]_i_3_n_0 ;
  wire \axi_rdata_reg[9]_i_2_n_0 ;
  wire \axi_rdata_reg[9]_i_3_n_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire canIn;
  wire clk;
  wire dOut;
  wire [31:0]douta;
  wire enOut;
  wire ena;
  wire interrupt;
  wire invalidSig;
  wire [3:0]metaState;
  wire [3:0]p_0_in;
  wire [31:0]reg_data_out;
  wire resetn;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [3:0]sel0;
  wire [31:0]slv_reg0;
  wire \slv_reg0[15]_i_1_n_0 ;
  wire \slv_reg0[23]_i_1_n_0 ;
  wire \slv_reg0[31]_i_1_n_0 ;
  wire \slv_reg0[7]_i_1_n_0 ;
  wire [31:0]slv_reg1;
  wire [31:0]slv_reg10;
  wire \slv_reg10[15]_i_1_n_0 ;
  wire \slv_reg10[23]_i_1_n_0 ;
  wire \slv_reg10[31]_i_1_n_0 ;
  wire \slv_reg10[7]_i_1_n_0 ;
  wire [31:0]slv_reg11;
  wire \slv_reg11[15]_i_1_n_0 ;
  wire \slv_reg11[23]_i_1_n_0 ;
  wire \slv_reg11[31]_i_1_n_0 ;
  wire \slv_reg11[7]_i_1_n_0 ;
  wire [31:0]slv_reg12;
  wire \slv_reg12[15]_i_1_n_0 ;
  wire \slv_reg12[23]_i_1_n_0 ;
  wire \slv_reg12[31]_i_1_n_0 ;
  wire \slv_reg12[7]_i_1_n_0 ;
  wire [31:0]slv_reg13;
  wire \slv_reg13[15]_i_1_n_0 ;
  wire \slv_reg13[23]_i_1_n_0 ;
  wire \slv_reg13[31]_i_1_n_0 ;
  wire \slv_reg13[7]_i_1_n_0 ;
  wire [31:0]slv_reg14;
  wire \slv_reg14[15]_i_1_n_0 ;
  wire \slv_reg14[23]_i_1_n_0 ;
  wire \slv_reg14[31]_i_1_n_0 ;
  wire \slv_reg14[7]_i_1_n_0 ;
  wire [31:0]slv_reg15;
  wire \slv_reg15[15]_i_1_n_0 ;
  wire \slv_reg15[23]_i_1_n_0 ;
  wire \slv_reg15[31]_i_1_n_0 ;
  wire \slv_reg15[7]_i_1_n_0 ;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire [31:0]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire [31:0]slv_reg3;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire [1:0]slv_reg4;
  wire \slv_reg4[15]_i_1_n_0 ;
  wire \slv_reg4[23]_i_1_n_0 ;
  wire \slv_reg4[31]_i_1_n_0 ;
  wire \slv_reg4[7]_i_1_n_0 ;
  wire [31:2]slv_reg4__0;
  wire \slv_reg5_reg_n_0_[0] ;
  wire \slv_reg5_reg_n_0_[16] ;
  wire \slv_reg5_reg_n_0_[17] ;
  wire \slv_reg5_reg_n_0_[18] ;
  wire \slv_reg5_reg_n_0_[19] ;
  wire \slv_reg5_reg_n_0_[1] ;
  wire \slv_reg5_reg_n_0_[20] ;
  wire \slv_reg5_reg_n_0_[21] ;
  wire \slv_reg5_reg_n_0_[22] ;
  wire \slv_reg5_reg_n_0_[23] ;
  wire \slv_reg5_reg_n_0_[24] ;
  wire \slv_reg5_reg_n_0_[25] ;
  wire \slv_reg5_reg_n_0_[26] ;
  wire \slv_reg5_reg_n_0_[27] ;
  wire \slv_reg5_reg_n_0_[28] ;
  wire \slv_reg5_reg_n_0_[29] ;
  wire \slv_reg5_reg_n_0_[2] ;
  wire \slv_reg5_reg_n_0_[30] ;
  wire \slv_reg5_reg_n_0_[31] ;
  wire \slv_reg5_reg_n_0_[3] ;
  wire \slv_reg5_reg_n_0_[4] ;
  wire [31:0]slv_reg6;
  wire \slv_reg6[15]_i_1_n_0 ;
  wire \slv_reg6[23]_i_1_n_0 ;
  wire \slv_reg6[31]_i_1_n_0 ;
  wire \slv_reg6[7]_i_1_n_0 ;
  wire [31:0]slv_reg7;
  wire \slv_reg7[15]_i_1_n_0 ;
  wire \slv_reg7[23]_i_1_n_0 ;
  wire \slv_reg7[31]_i_1_n_0 ;
  wire \slv_reg7[7]_i_1_n_0 ;
  wire [31:0]slv_reg8;
  wire \slv_reg8[15]_i_1_n_0 ;
  wire \slv_reg8[23]_i_1_n_0 ;
  wire \slv_reg8[31]_i_1_n_0 ;
  wire \slv_reg8[7]_i_1_n_0 ;
  wire [31:0]slv_reg9;
  wire \slv_reg9[15]_i_1_n_0 ;
  wire \slv_reg9[23]_i_1_n_0 ;
  wire \slv_reg9[31]_i_1_n_0 ;
  wire \slv_reg9[7]_i_1_n_0 ;
  wire slv_reg_rden__0;
  wire slv_reg_wren__0;
  wire [15:0]validSigNum;
  wire NLW_sampleDetector_bramWe_UNCONNECTED;
  wire [31:0]NLW_sampleDetector_writeData_UNCONNECTED;

  LUT6 #(
    .INIT(64'hF7FFC4CCC4CCC4CC)) 
    aw_en_i_1
       (.I0(s00_axi_awvalid),
        .I1(aw_en_reg_n_0),
        .I2(S_AXI_AWREADY),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    aw_en_reg
       (.C(clk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_araddr_reg[2] 
       (.C(clk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[0]),
        .Q(sel0[0]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_araddr_reg[3] 
       (.C(clk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[1]),
        .Q(sel0[1]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_araddr_reg[4] 
       (.C(clk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[2]),
        .Q(sel0[2]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_araddr_reg[5] 
       (.C(clk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[3]),
        .Q(sel0[3]),
        .R(axi_awready_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE #(
    .INIT(1'b0)) 
    axi_arready_reg
       (.C(clk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[2] 
       (.C(clk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[0]),
        .Q(p_0_in[0]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[3] 
       (.C(clk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[1]),
        .Q(p_0_in[1]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[4] 
       (.C(clk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[2]),
        .Q(p_0_in[2]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[5] 
       (.C(clk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[3]),
        .Q(p_0_in[3]),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(resetn),
        .O(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h2000)) 
    axi_awready_i_2
       (.I0(s00_axi_wvalid),
        .I1(S_AXI_AWREADY),
        .I2(aw_en_reg_n_0),
        .I3(s00_axi_awvalid),
        .O(axi_awready0));
  FDRE #(
    .INIT(1'b0)) 
    axi_awready_reg
       (.C(clk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(S_AXI_WREADY),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_bvalid_reg
       (.C(clk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_4 
       (.I0(slv_reg3[0]),
        .I1(slv_reg2[0]),
        .I2(sel0[1]),
        .I3(slv_reg1[0]),
        .I4(sel0[0]),
        .I5(slv_reg0[0]),
        .O(\axi_rdata[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_5 
       (.I0(slv_reg7[0]),
        .I1(slv_reg6[0]),
        .I2(sel0[1]),
        .I3(\slv_reg5_reg_n_0_[0] ),
        .I4(sel0[0]),
        .I5(slv_reg4[0]),
        .O(\axi_rdata[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_6 
       (.I0(slv_reg11[0]),
        .I1(slv_reg10[0]),
        .I2(sel0[1]),
        .I3(slv_reg9[0]),
        .I4(sel0[0]),
        .I5(slv_reg8[0]),
        .O(\axi_rdata[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_7 
       (.I0(slv_reg15[0]),
        .I1(slv_reg14[0]),
        .I2(sel0[1]),
        .I3(slv_reg13[0]),
        .I4(sel0[0]),
        .I5(slv_reg12[0]),
        .O(\axi_rdata[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_4 
       (.I0(slv_reg3[10]),
        .I1(slv_reg2[10]),
        .I2(sel0[1]),
        .I3(slv_reg1[10]),
        .I4(sel0[0]),
        .I5(slv_reg0[10]),
        .O(\axi_rdata[10]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[10]_i_5 
       (.I0(slv_reg7[10]),
        .I1(slv_reg6[10]),
        .I2(sel0[1]),
        .I3(slv_reg4__0[10]),
        .I4(sel0[0]),
        .O(\axi_rdata[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_6 
       (.I0(slv_reg11[10]),
        .I1(slv_reg10[10]),
        .I2(sel0[1]),
        .I3(slv_reg9[10]),
        .I4(sel0[0]),
        .I5(slv_reg8[10]),
        .O(\axi_rdata[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_7 
       (.I0(slv_reg15[10]),
        .I1(slv_reg14[10]),
        .I2(sel0[1]),
        .I3(slv_reg13[10]),
        .I4(sel0[0]),
        .I5(slv_reg12[10]),
        .O(\axi_rdata[10]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_4 
       (.I0(slv_reg3[11]),
        .I1(slv_reg2[11]),
        .I2(sel0[1]),
        .I3(slv_reg1[11]),
        .I4(sel0[0]),
        .I5(slv_reg0[11]),
        .O(\axi_rdata[11]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[11]_i_5 
       (.I0(slv_reg7[11]),
        .I1(slv_reg6[11]),
        .I2(sel0[1]),
        .I3(slv_reg4__0[11]),
        .I4(sel0[0]),
        .O(\axi_rdata[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_6 
       (.I0(slv_reg11[11]),
        .I1(slv_reg10[11]),
        .I2(sel0[1]),
        .I3(slv_reg9[11]),
        .I4(sel0[0]),
        .I5(slv_reg8[11]),
        .O(\axi_rdata[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_7 
       (.I0(slv_reg15[11]),
        .I1(slv_reg14[11]),
        .I2(sel0[1]),
        .I3(slv_reg13[11]),
        .I4(sel0[0]),
        .I5(slv_reg12[11]),
        .O(\axi_rdata[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_4 
       (.I0(slv_reg3[12]),
        .I1(slv_reg2[12]),
        .I2(sel0[1]),
        .I3(slv_reg1[12]),
        .I4(sel0[0]),
        .I5(slv_reg0[12]),
        .O(\axi_rdata[12]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[12]_i_5 
       (.I0(slv_reg7[12]),
        .I1(slv_reg6[12]),
        .I2(sel0[1]),
        .I3(slv_reg4__0[12]),
        .I4(sel0[0]),
        .O(\axi_rdata[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_6 
       (.I0(slv_reg11[12]),
        .I1(slv_reg10[12]),
        .I2(sel0[1]),
        .I3(slv_reg9[12]),
        .I4(sel0[0]),
        .I5(slv_reg8[12]),
        .O(\axi_rdata[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_7 
       (.I0(slv_reg15[12]),
        .I1(slv_reg14[12]),
        .I2(sel0[1]),
        .I3(slv_reg13[12]),
        .I4(sel0[0]),
        .I5(slv_reg12[12]),
        .O(\axi_rdata[12]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_4 
       (.I0(slv_reg3[13]),
        .I1(slv_reg2[13]),
        .I2(sel0[1]),
        .I3(slv_reg1[13]),
        .I4(sel0[0]),
        .I5(slv_reg0[13]),
        .O(\axi_rdata[13]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[13]_i_5 
       (.I0(slv_reg7[13]),
        .I1(slv_reg6[13]),
        .I2(sel0[1]),
        .I3(slv_reg4__0[13]),
        .I4(sel0[0]),
        .O(\axi_rdata[13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_6 
       (.I0(slv_reg11[13]),
        .I1(slv_reg10[13]),
        .I2(sel0[1]),
        .I3(slv_reg9[13]),
        .I4(sel0[0]),
        .I5(slv_reg8[13]),
        .O(\axi_rdata[13]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_7 
       (.I0(slv_reg15[13]),
        .I1(slv_reg14[13]),
        .I2(sel0[1]),
        .I3(slv_reg13[13]),
        .I4(sel0[0]),
        .I5(slv_reg12[13]),
        .O(\axi_rdata[13]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_4 
       (.I0(slv_reg3[14]),
        .I1(slv_reg2[14]),
        .I2(sel0[1]),
        .I3(slv_reg1[14]),
        .I4(sel0[0]),
        .I5(slv_reg0[14]),
        .O(\axi_rdata[14]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[14]_i_5 
       (.I0(slv_reg7[14]),
        .I1(slv_reg6[14]),
        .I2(sel0[1]),
        .I3(slv_reg4__0[14]),
        .I4(sel0[0]),
        .O(\axi_rdata[14]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_6 
       (.I0(slv_reg11[14]),
        .I1(slv_reg10[14]),
        .I2(sel0[1]),
        .I3(slv_reg9[14]),
        .I4(sel0[0]),
        .I5(slv_reg8[14]),
        .O(\axi_rdata[14]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_7 
       (.I0(slv_reg15[14]),
        .I1(slv_reg14[14]),
        .I2(sel0[1]),
        .I3(slv_reg13[14]),
        .I4(sel0[0]),
        .I5(slv_reg12[14]),
        .O(\axi_rdata[14]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_4 
       (.I0(slv_reg3[15]),
        .I1(slv_reg2[15]),
        .I2(sel0[1]),
        .I3(slv_reg1[15]),
        .I4(sel0[0]),
        .I5(slv_reg0[15]),
        .O(\axi_rdata[15]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[15]_i_5 
       (.I0(slv_reg7[15]),
        .I1(slv_reg6[15]),
        .I2(sel0[1]),
        .I3(slv_reg4__0[15]),
        .I4(sel0[0]),
        .O(\axi_rdata[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_6 
       (.I0(slv_reg11[15]),
        .I1(slv_reg10[15]),
        .I2(sel0[1]),
        .I3(slv_reg9[15]),
        .I4(sel0[0]),
        .I5(slv_reg8[15]),
        .O(\axi_rdata[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_7 
       (.I0(slv_reg15[15]),
        .I1(slv_reg14[15]),
        .I2(sel0[1]),
        .I3(slv_reg13[15]),
        .I4(sel0[0]),
        .I5(slv_reg12[15]),
        .O(\axi_rdata[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_4 
       (.I0(slv_reg3[16]),
        .I1(slv_reg2[16]),
        .I2(sel0[1]),
        .I3(slv_reg1[16]),
        .I4(sel0[0]),
        .I5(slv_reg0[16]),
        .O(\axi_rdata[16]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_5 
       (.I0(slv_reg7[16]),
        .I1(slv_reg6[16]),
        .I2(sel0[1]),
        .I3(\slv_reg5_reg_n_0_[16] ),
        .I4(sel0[0]),
        .I5(slv_reg4__0[16]),
        .O(\axi_rdata[16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_6 
       (.I0(slv_reg11[16]),
        .I1(slv_reg10[16]),
        .I2(sel0[1]),
        .I3(slv_reg9[16]),
        .I4(sel0[0]),
        .I5(slv_reg8[16]),
        .O(\axi_rdata[16]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_7 
       (.I0(slv_reg15[16]),
        .I1(slv_reg14[16]),
        .I2(sel0[1]),
        .I3(slv_reg13[16]),
        .I4(sel0[0]),
        .I5(slv_reg12[16]),
        .O(\axi_rdata[16]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_4 
       (.I0(slv_reg3[17]),
        .I1(slv_reg2[17]),
        .I2(sel0[1]),
        .I3(slv_reg1[17]),
        .I4(sel0[0]),
        .I5(slv_reg0[17]),
        .O(\axi_rdata[17]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_5 
       (.I0(slv_reg7[17]),
        .I1(slv_reg6[17]),
        .I2(sel0[1]),
        .I3(\slv_reg5_reg_n_0_[17] ),
        .I4(sel0[0]),
        .I5(slv_reg4__0[17]),
        .O(\axi_rdata[17]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_6 
       (.I0(slv_reg11[17]),
        .I1(slv_reg10[17]),
        .I2(sel0[1]),
        .I3(slv_reg9[17]),
        .I4(sel0[0]),
        .I5(slv_reg8[17]),
        .O(\axi_rdata[17]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_7 
       (.I0(slv_reg15[17]),
        .I1(slv_reg14[17]),
        .I2(sel0[1]),
        .I3(slv_reg13[17]),
        .I4(sel0[0]),
        .I5(slv_reg12[17]),
        .O(\axi_rdata[17]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_4 
       (.I0(slv_reg3[18]),
        .I1(slv_reg2[18]),
        .I2(sel0[1]),
        .I3(slv_reg1[18]),
        .I4(sel0[0]),
        .I5(slv_reg0[18]),
        .O(\axi_rdata[18]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_5 
       (.I0(slv_reg7[18]),
        .I1(slv_reg6[18]),
        .I2(sel0[1]),
        .I3(\slv_reg5_reg_n_0_[18] ),
        .I4(sel0[0]),
        .I5(slv_reg4__0[18]),
        .O(\axi_rdata[18]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_6 
       (.I0(slv_reg11[18]),
        .I1(slv_reg10[18]),
        .I2(sel0[1]),
        .I3(slv_reg9[18]),
        .I4(sel0[0]),
        .I5(slv_reg8[18]),
        .O(\axi_rdata[18]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_7 
       (.I0(slv_reg15[18]),
        .I1(slv_reg14[18]),
        .I2(sel0[1]),
        .I3(slv_reg13[18]),
        .I4(sel0[0]),
        .I5(slv_reg12[18]),
        .O(\axi_rdata[18]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_4 
       (.I0(slv_reg3[19]),
        .I1(slv_reg2[19]),
        .I2(sel0[1]),
        .I3(slv_reg1[19]),
        .I4(sel0[0]),
        .I5(slv_reg0[19]),
        .O(\axi_rdata[19]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_5 
       (.I0(slv_reg7[19]),
        .I1(slv_reg6[19]),
        .I2(sel0[1]),
        .I3(\slv_reg5_reg_n_0_[19] ),
        .I4(sel0[0]),
        .I5(slv_reg4__0[19]),
        .O(\axi_rdata[19]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_6 
       (.I0(slv_reg11[19]),
        .I1(slv_reg10[19]),
        .I2(sel0[1]),
        .I3(slv_reg9[19]),
        .I4(sel0[0]),
        .I5(slv_reg8[19]),
        .O(\axi_rdata[19]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_7 
       (.I0(slv_reg15[19]),
        .I1(slv_reg14[19]),
        .I2(sel0[1]),
        .I3(slv_reg13[19]),
        .I4(sel0[0]),
        .I5(slv_reg12[19]),
        .O(\axi_rdata[19]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_4 
       (.I0(slv_reg3[1]),
        .I1(slv_reg2[1]),
        .I2(sel0[1]),
        .I3(slv_reg1[1]),
        .I4(sel0[0]),
        .I5(slv_reg0[1]),
        .O(\axi_rdata[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_5 
       (.I0(slv_reg7[1]),
        .I1(slv_reg6[1]),
        .I2(sel0[1]),
        .I3(\slv_reg5_reg_n_0_[1] ),
        .I4(sel0[0]),
        .I5(slv_reg4[1]),
        .O(\axi_rdata[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_6 
       (.I0(slv_reg11[1]),
        .I1(slv_reg10[1]),
        .I2(sel0[1]),
        .I3(slv_reg9[1]),
        .I4(sel0[0]),
        .I5(slv_reg8[1]),
        .O(\axi_rdata[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_7 
       (.I0(slv_reg15[1]),
        .I1(slv_reg14[1]),
        .I2(sel0[1]),
        .I3(slv_reg13[1]),
        .I4(sel0[0]),
        .I5(slv_reg12[1]),
        .O(\axi_rdata[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_4 
       (.I0(slv_reg3[20]),
        .I1(slv_reg2[20]),
        .I2(sel0[1]),
        .I3(slv_reg1[20]),
        .I4(sel0[0]),
        .I5(slv_reg0[20]),
        .O(\axi_rdata[20]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_5 
       (.I0(slv_reg7[20]),
        .I1(slv_reg6[20]),
        .I2(sel0[1]),
        .I3(\slv_reg5_reg_n_0_[20] ),
        .I4(sel0[0]),
        .I5(slv_reg4__0[20]),
        .O(\axi_rdata[20]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_6 
       (.I0(slv_reg11[20]),
        .I1(slv_reg10[20]),
        .I2(sel0[1]),
        .I3(slv_reg9[20]),
        .I4(sel0[0]),
        .I5(slv_reg8[20]),
        .O(\axi_rdata[20]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_7 
       (.I0(slv_reg15[20]),
        .I1(slv_reg14[20]),
        .I2(sel0[1]),
        .I3(slv_reg13[20]),
        .I4(sel0[0]),
        .I5(slv_reg12[20]),
        .O(\axi_rdata[20]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_4 
       (.I0(slv_reg3[21]),
        .I1(slv_reg2[21]),
        .I2(sel0[1]),
        .I3(slv_reg1[21]),
        .I4(sel0[0]),
        .I5(slv_reg0[21]),
        .O(\axi_rdata[21]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_5 
       (.I0(slv_reg7[21]),
        .I1(slv_reg6[21]),
        .I2(sel0[1]),
        .I3(\slv_reg5_reg_n_0_[21] ),
        .I4(sel0[0]),
        .I5(slv_reg4__0[21]),
        .O(\axi_rdata[21]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_6 
       (.I0(slv_reg11[21]),
        .I1(slv_reg10[21]),
        .I2(sel0[1]),
        .I3(slv_reg9[21]),
        .I4(sel0[0]),
        .I5(slv_reg8[21]),
        .O(\axi_rdata[21]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_7 
       (.I0(slv_reg15[21]),
        .I1(slv_reg14[21]),
        .I2(sel0[1]),
        .I3(slv_reg13[21]),
        .I4(sel0[0]),
        .I5(slv_reg12[21]),
        .O(\axi_rdata[21]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_4 
       (.I0(slv_reg3[22]),
        .I1(slv_reg2[22]),
        .I2(sel0[1]),
        .I3(slv_reg1[22]),
        .I4(sel0[0]),
        .I5(slv_reg0[22]),
        .O(\axi_rdata[22]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_5 
       (.I0(slv_reg7[22]),
        .I1(slv_reg6[22]),
        .I2(sel0[1]),
        .I3(\slv_reg5_reg_n_0_[22] ),
        .I4(sel0[0]),
        .I5(slv_reg4__0[22]),
        .O(\axi_rdata[22]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_6 
       (.I0(slv_reg11[22]),
        .I1(slv_reg10[22]),
        .I2(sel0[1]),
        .I3(slv_reg9[22]),
        .I4(sel0[0]),
        .I5(slv_reg8[22]),
        .O(\axi_rdata[22]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_7 
       (.I0(slv_reg15[22]),
        .I1(slv_reg14[22]),
        .I2(sel0[1]),
        .I3(slv_reg13[22]),
        .I4(sel0[0]),
        .I5(slv_reg12[22]),
        .O(\axi_rdata[22]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_4 
       (.I0(slv_reg3[23]),
        .I1(slv_reg2[23]),
        .I2(sel0[1]),
        .I3(slv_reg1[23]),
        .I4(sel0[0]),
        .I5(slv_reg0[23]),
        .O(\axi_rdata[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_5 
       (.I0(slv_reg7[23]),
        .I1(slv_reg6[23]),
        .I2(sel0[1]),
        .I3(\slv_reg5_reg_n_0_[23] ),
        .I4(sel0[0]),
        .I5(slv_reg4__0[23]),
        .O(\axi_rdata[23]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_6 
       (.I0(slv_reg11[23]),
        .I1(slv_reg10[23]),
        .I2(sel0[1]),
        .I3(slv_reg9[23]),
        .I4(sel0[0]),
        .I5(slv_reg8[23]),
        .O(\axi_rdata[23]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_7 
       (.I0(slv_reg15[23]),
        .I1(slv_reg14[23]),
        .I2(sel0[1]),
        .I3(slv_reg13[23]),
        .I4(sel0[0]),
        .I5(slv_reg12[23]),
        .O(\axi_rdata[23]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_4 
       (.I0(slv_reg3[24]),
        .I1(slv_reg2[24]),
        .I2(sel0[1]),
        .I3(slv_reg1[24]),
        .I4(sel0[0]),
        .I5(slv_reg0[24]),
        .O(\axi_rdata[24]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_5 
       (.I0(slv_reg7[24]),
        .I1(slv_reg6[24]),
        .I2(sel0[1]),
        .I3(\slv_reg5_reg_n_0_[24] ),
        .I4(sel0[0]),
        .I5(slv_reg4__0[24]),
        .O(\axi_rdata[24]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_6 
       (.I0(slv_reg11[24]),
        .I1(slv_reg10[24]),
        .I2(sel0[1]),
        .I3(slv_reg9[24]),
        .I4(sel0[0]),
        .I5(slv_reg8[24]),
        .O(\axi_rdata[24]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_7 
       (.I0(slv_reg15[24]),
        .I1(slv_reg14[24]),
        .I2(sel0[1]),
        .I3(slv_reg13[24]),
        .I4(sel0[0]),
        .I5(slv_reg12[24]),
        .O(\axi_rdata[24]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_4 
       (.I0(slv_reg3[25]),
        .I1(slv_reg2[25]),
        .I2(sel0[1]),
        .I3(slv_reg1[25]),
        .I4(sel0[0]),
        .I5(slv_reg0[25]),
        .O(\axi_rdata[25]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_5 
       (.I0(slv_reg7[25]),
        .I1(slv_reg6[25]),
        .I2(sel0[1]),
        .I3(\slv_reg5_reg_n_0_[25] ),
        .I4(sel0[0]),
        .I5(slv_reg4__0[25]),
        .O(\axi_rdata[25]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_6 
       (.I0(slv_reg11[25]),
        .I1(slv_reg10[25]),
        .I2(sel0[1]),
        .I3(slv_reg9[25]),
        .I4(sel0[0]),
        .I5(slv_reg8[25]),
        .O(\axi_rdata[25]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_7 
       (.I0(slv_reg15[25]),
        .I1(slv_reg14[25]),
        .I2(sel0[1]),
        .I3(slv_reg13[25]),
        .I4(sel0[0]),
        .I5(slv_reg12[25]),
        .O(\axi_rdata[25]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_4 
       (.I0(slv_reg3[26]),
        .I1(slv_reg2[26]),
        .I2(sel0[1]),
        .I3(slv_reg1[26]),
        .I4(sel0[0]),
        .I5(slv_reg0[26]),
        .O(\axi_rdata[26]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_5 
       (.I0(slv_reg7[26]),
        .I1(slv_reg6[26]),
        .I2(sel0[1]),
        .I3(\slv_reg5_reg_n_0_[26] ),
        .I4(sel0[0]),
        .I5(slv_reg4__0[26]),
        .O(\axi_rdata[26]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_6 
       (.I0(slv_reg11[26]),
        .I1(slv_reg10[26]),
        .I2(sel0[1]),
        .I3(slv_reg9[26]),
        .I4(sel0[0]),
        .I5(slv_reg8[26]),
        .O(\axi_rdata[26]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_7 
       (.I0(slv_reg15[26]),
        .I1(slv_reg14[26]),
        .I2(sel0[1]),
        .I3(slv_reg13[26]),
        .I4(sel0[0]),
        .I5(slv_reg12[26]),
        .O(\axi_rdata[26]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_4 
       (.I0(slv_reg3[27]),
        .I1(slv_reg2[27]),
        .I2(sel0[1]),
        .I3(slv_reg1[27]),
        .I4(sel0[0]),
        .I5(slv_reg0[27]),
        .O(\axi_rdata[27]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_5 
       (.I0(slv_reg7[27]),
        .I1(slv_reg6[27]),
        .I2(sel0[1]),
        .I3(\slv_reg5_reg_n_0_[27] ),
        .I4(sel0[0]),
        .I5(slv_reg4__0[27]),
        .O(\axi_rdata[27]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_6 
       (.I0(slv_reg11[27]),
        .I1(slv_reg10[27]),
        .I2(sel0[1]),
        .I3(slv_reg9[27]),
        .I4(sel0[0]),
        .I5(slv_reg8[27]),
        .O(\axi_rdata[27]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_7 
       (.I0(slv_reg15[27]),
        .I1(slv_reg14[27]),
        .I2(sel0[1]),
        .I3(slv_reg13[27]),
        .I4(sel0[0]),
        .I5(slv_reg12[27]),
        .O(\axi_rdata[27]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_4 
       (.I0(slv_reg3[28]),
        .I1(slv_reg2[28]),
        .I2(sel0[1]),
        .I3(slv_reg1[28]),
        .I4(sel0[0]),
        .I5(slv_reg0[28]),
        .O(\axi_rdata[28]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_5 
       (.I0(slv_reg7[28]),
        .I1(slv_reg6[28]),
        .I2(sel0[1]),
        .I3(\slv_reg5_reg_n_0_[28] ),
        .I4(sel0[0]),
        .I5(slv_reg4__0[28]),
        .O(\axi_rdata[28]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_6 
       (.I0(slv_reg11[28]),
        .I1(slv_reg10[28]),
        .I2(sel0[1]),
        .I3(slv_reg9[28]),
        .I4(sel0[0]),
        .I5(slv_reg8[28]),
        .O(\axi_rdata[28]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_7 
       (.I0(slv_reg15[28]),
        .I1(slv_reg14[28]),
        .I2(sel0[1]),
        .I3(slv_reg13[28]),
        .I4(sel0[0]),
        .I5(slv_reg12[28]),
        .O(\axi_rdata[28]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_4 
       (.I0(slv_reg3[29]),
        .I1(slv_reg2[29]),
        .I2(sel0[1]),
        .I3(slv_reg1[29]),
        .I4(sel0[0]),
        .I5(slv_reg0[29]),
        .O(\axi_rdata[29]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_5 
       (.I0(slv_reg7[29]),
        .I1(slv_reg6[29]),
        .I2(sel0[1]),
        .I3(\slv_reg5_reg_n_0_[29] ),
        .I4(sel0[0]),
        .I5(slv_reg4__0[29]),
        .O(\axi_rdata[29]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_6 
       (.I0(slv_reg11[29]),
        .I1(slv_reg10[29]),
        .I2(sel0[1]),
        .I3(slv_reg9[29]),
        .I4(sel0[0]),
        .I5(slv_reg8[29]),
        .O(\axi_rdata[29]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_7 
       (.I0(slv_reg15[29]),
        .I1(slv_reg14[29]),
        .I2(sel0[1]),
        .I3(slv_reg13[29]),
        .I4(sel0[0]),
        .I5(slv_reg12[29]),
        .O(\axi_rdata[29]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_4 
       (.I0(slv_reg3[2]),
        .I1(slv_reg2[2]),
        .I2(sel0[1]),
        .I3(slv_reg1[2]),
        .I4(sel0[0]),
        .I5(slv_reg0[2]),
        .O(\axi_rdata[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_5 
       (.I0(slv_reg7[2]),
        .I1(slv_reg6[2]),
        .I2(sel0[1]),
        .I3(\slv_reg5_reg_n_0_[2] ),
        .I4(sel0[0]),
        .I5(slv_reg4__0[2]),
        .O(\axi_rdata[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_6 
       (.I0(slv_reg11[2]),
        .I1(slv_reg10[2]),
        .I2(sel0[1]),
        .I3(slv_reg9[2]),
        .I4(sel0[0]),
        .I5(slv_reg8[2]),
        .O(\axi_rdata[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_7 
       (.I0(slv_reg15[2]),
        .I1(slv_reg14[2]),
        .I2(sel0[1]),
        .I3(slv_reg13[2]),
        .I4(sel0[0]),
        .I5(slv_reg12[2]),
        .O(\axi_rdata[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_4 
       (.I0(slv_reg3[30]),
        .I1(slv_reg2[30]),
        .I2(sel0[1]),
        .I3(slv_reg1[30]),
        .I4(sel0[0]),
        .I5(slv_reg0[30]),
        .O(\axi_rdata[30]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_5 
       (.I0(slv_reg7[30]),
        .I1(slv_reg6[30]),
        .I2(sel0[1]),
        .I3(\slv_reg5_reg_n_0_[30] ),
        .I4(sel0[0]),
        .I5(slv_reg4__0[30]),
        .O(\axi_rdata[30]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_6 
       (.I0(slv_reg11[30]),
        .I1(slv_reg10[30]),
        .I2(sel0[1]),
        .I3(slv_reg9[30]),
        .I4(sel0[0]),
        .I5(slv_reg8[30]),
        .O(\axi_rdata[30]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_7 
       (.I0(slv_reg15[30]),
        .I1(slv_reg14[30]),
        .I2(sel0[1]),
        .I3(slv_reg13[30]),
        .I4(sel0[0]),
        .I5(slv_reg12[30]),
        .O(\axi_rdata[30]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_4 
       (.I0(slv_reg3[31]),
        .I1(slv_reg2[31]),
        .I2(sel0[1]),
        .I3(slv_reg1[31]),
        .I4(sel0[0]),
        .I5(slv_reg0[31]),
        .O(\axi_rdata[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_5 
       (.I0(slv_reg7[31]),
        .I1(slv_reg6[31]),
        .I2(sel0[1]),
        .I3(\slv_reg5_reg_n_0_[31] ),
        .I4(sel0[0]),
        .I5(slv_reg4__0[31]),
        .O(\axi_rdata[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_6 
       (.I0(slv_reg11[31]),
        .I1(slv_reg10[31]),
        .I2(sel0[1]),
        .I3(slv_reg9[31]),
        .I4(sel0[0]),
        .I5(slv_reg8[31]),
        .O(\axi_rdata[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_7 
       (.I0(slv_reg15[31]),
        .I1(slv_reg14[31]),
        .I2(sel0[1]),
        .I3(slv_reg13[31]),
        .I4(sel0[0]),
        .I5(slv_reg12[31]),
        .O(\axi_rdata[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_4 
       (.I0(slv_reg3[3]),
        .I1(slv_reg2[3]),
        .I2(sel0[1]),
        .I3(slv_reg1[3]),
        .I4(sel0[0]),
        .I5(slv_reg0[3]),
        .O(\axi_rdata[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_5 
       (.I0(slv_reg7[3]),
        .I1(slv_reg6[3]),
        .I2(sel0[1]),
        .I3(\slv_reg5_reg_n_0_[3] ),
        .I4(sel0[0]),
        .I5(slv_reg4__0[3]),
        .O(\axi_rdata[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_6 
       (.I0(slv_reg11[3]),
        .I1(slv_reg10[3]),
        .I2(sel0[1]),
        .I3(slv_reg9[3]),
        .I4(sel0[0]),
        .I5(slv_reg8[3]),
        .O(\axi_rdata[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_7 
       (.I0(slv_reg15[3]),
        .I1(slv_reg14[3]),
        .I2(sel0[1]),
        .I3(slv_reg13[3]),
        .I4(sel0[0]),
        .I5(slv_reg12[3]),
        .O(\axi_rdata[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_4 
       (.I0(slv_reg3[4]),
        .I1(slv_reg2[4]),
        .I2(sel0[1]),
        .I3(slv_reg1[4]),
        .I4(sel0[0]),
        .I5(slv_reg0[4]),
        .O(\axi_rdata[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_5 
       (.I0(slv_reg7[4]),
        .I1(slv_reg6[4]),
        .I2(sel0[1]),
        .I3(\slv_reg5_reg_n_0_[4] ),
        .I4(sel0[0]),
        .I5(slv_reg4__0[4]),
        .O(\axi_rdata[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_6 
       (.I0(slv_reg11[4]),
        .I1(slv_reg10[4]),
        .I2(sel0[1]),
        .I3(slv_reg9[4]),
        .I4(sel0[0]),
        .I5(slv_reg8[4]),
        .O(\axi_rdata[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_7 
       (.I0(slv_reg15[4]),
        .I1(slv_reg14[4]),
        .I2(sel0[1]),
        .I3(slv_reg13[4]),
        .I4(sel0[0]),
        .I5(slv_reg12[4]),
        .O(\axi_rdata[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_4 
       (.I0(slv_reg3[5]),
        .I1(slv_reg2[5]),
        .I2(sel0[1]),
        .I3(slv_reg1[5]),
        .I4(sel0[0]),
        .I5(slv_reg0[5]),
        .O(\axi_rdata[5]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[5]_i_5 
       (.I0(slv_reg7[5]),
        .I1(slv_reg6[5]),
        .I2(sel0[1]),
        .I3(slv_reg4__0[5]),
        .I4(sel0[0]),
        .O(\axi_rdata[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_6 
       (.I0(slv_reg11[5]),
        .I1(slv_reg10[5]),
        .I2(sel0[1]),
        .I3(slv_reg9[5]),
        .I4(sel0[0]),
        .I5(slv_reg8[5]),
        .O(\axi_rdata[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_7 
       (.I0(slv_reg15[5]),
        .I1(slv_reg14[5]),
        .I2(sel0[1]),
        .I3(slv_reg13[5]),
        .I4(sel0[0]),
        .I5(slv_reg12[5]),
        .O(\axi_rdata[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_4 
       (.I0(slv_reg3[6]),
        .I1(slv_reg2[6]),
        .I2(sel0[1]),
        .I3(slv_reg1[6]),
        .I4(sel0[0]),
        .I5(slv_reg0[6]),
        .O(\axi_rdata[6]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[6]_i_5 
       (.I0(slv_reg7[6]),
        .I1(slv_reg6[6]),
        .I2(sel0[1]),
        .I3(slv_reg4__0[6]),
        .I4(sel0[0]),
        .O(\axi_rdata[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_6 
       (.I0(slv_reg11[6]),
        .I1(slv_reg10[6]),
        .I2(sel0[1]),
        .I3(slv_reg9[6]),
        .I4(sel0[0]),
        .I5(slv_reg8[6]),
        .O(\axi_rdata[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_7 
       (.I0(slv_reg15[6]),
        .I1(slv_reg14[6]),
        .I2(sel0[1]),
        .I3(slv_reg13[6]),
        .I4(sel0[0]),
        .I5(slv_reg12[6]),
        .O(\axi_rdata[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_4 
       (.I0(slv_reg3[7]),
        .I1(slv_reg2[7]),
        .I2(sel0[1]),
        .I3(slv_reg1[7]),
        .I4(sel0[0]),
        .I5(slv_reg0[7]),
        .O(\axi_rdata[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[7]_i_5 
       (.I0(slv_reg7[7]),
        .I1(slv_reg6[7]),
        .I2(sel0[1]),
        .I3(slv_reg4__0[7]),
        .I4(sel0[0]),
        .O(\axi_rdata[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_6 
       (.I0(slv_reg11[7]),
        .I1(slv_reg10[7]),
        .I2(sel0[1]),
        .I3(slv_reg9[7]),
        .I4(sel0[0]),
        .I5(slv_reg8[7]),
        .O(\axi_rdata[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_7 
       (.I0(slv_reg15[7]),
        .I1(slv_reg14[7]),
        .I2(sel0[1]),
        .I3(slv_reg13[7]),
        .I4(sel0[0]),
        .I5(slv_reg12[7]),
        .O(\axi_rdata[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_4 
       (.I0(slv_reg3[8]),
        .I1(slv_reg2[8]),
        .I2(sel0[1]),
        .I3(slv_reg1[8]),
        .I4(sel0[0]),
        .I5(slv_reg0[8]),
        .O(\axi_rdata[8]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[8]_i_5 
       (.I0(slv_reg7[8]),
        .I1(slv_reg6[8]),
        .I2(sel0[1]),
        .I3(slv_reg4__0[8]),
        .I4(sel0[0]),
        .O(\axi_rdata[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_6 
       (.I0(slv_reg11[8]),
        .I1(slv_reg10[8]),
        .I2(sel0[1]),
        .I3(slv_reg9[8]),
        .I4(sel0[0]),
        .I5(slv_reg8[8]),
        .O(\axi_rdata[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_7 
       (.I0(slv_reg15[8]),
        .I1(slv_reg14[8]),
        .I2(sel0[1]),
        .I3(slv_reg13[8]),
        .I4(sel0[0]),
        .I5(slv_reg12[8]),
        .O(\axi_rdata[8]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_4 
       (.I0(slv_reg3[9]),
        .I1(slv_reg2[9]),
        .I2(sel0[1]),
        .I3(slv_reg1[9]),
        .I4(sel0[0]),
        .I5(slv_reg0[9]),
        .O(\axi_rdata[9]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[9]_i_5 
       (.I0(slv_reg7[9]),
        .I1(slv_reg6[9]),
        .I2(sel0[1]),
        .I3(slv_reg4__0[9]),
        .I4(sel0[0]),
        .O(\axi_rdata[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_6 
       (.I0(slv_reg11[9]),
        .I1(slv_reg10[9]),
        .I2(sel0[1]),
        .I3(slv_reg9[9]),
        .I4(sel0[0]),
        .I5(slv_reg8[9]),
        .O(\axi_rdata[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_7 
       (.I0(slv_reg15[9]),
        .I1(slv_reg14[9]),
        .I2(sel0[1]),
        .I3(slv_reg13[9]),
        .I4(sel0[0]),
        .I5(slv_reg12[9]),
        .O(\axi_rdata[9]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[0] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(axi_awready_i_1_n_0));
  MUXF8 \axi_rdata_reg[0]_i_1 
       (.I0(\axi_rdata_reg[0]_i_2_n_0 ),
        .I1(\axi_rdata_reg[0]_i_3_n_0 ),
        .O(reg_data_out[0]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[0]_i_2 
       (.I0(\axi_rdata[0]_i_4_n_0 ),
        .I1(\axi_rdata[0]_i_5_n_0 ),
        .O(\axi_rdata_reg[0]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[0]_i_3 
       (.I0(\axi_rdata[0]_i_6_n_0 ),
        .I1(\axi_rdata[0]_i_7_n_0 ),
        .O(\axi_rdata_reg[0]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[10] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(axi_awready_i_1_n_0));
  MUXF8 \axi_rdata_reg[10]_i_1 
       (.I0(\axi_rdata_reg[10]_i_2_n_0 ),
        .I1(\axi_rdata_reg[10]_i_3_n_0 ),
        .O(reg_data_out[10]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[10]_i_2 
       (.I0(\axi_rdata[10]_i_4_n_0 ),
        .I1(\axi_rdata[10]_i_5_n_0 ),
        .O(\axi_rdata_reg[10]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[10]_i_3 
       (.I0(\axi_rdata[10]_i_6_n_0 ),
        .I1(\axi_rdata[10]_i_7_n_0 ),
        .O(\axi_rdata_reg[10]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[11] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(axi_awready_i_1_n_0));
  MUXF8 \axi_rdata_reg[11]_i_1 
       (.I0(\axi_rdata_reg[11]_i_2_n_0 ),
        .I1(\axi_rdata_reg[11]_i_3_n_0 ),
        .O(reg_data_out[11]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[11]_i_2 
       (.I0(\axi_rdata[11]_i_4_n_0 ),
        .I1(\axi_rdata[11]_i_5_n_0 ),
        .O(\axi_rdata_reg[11]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[11]_i_3 
       (.I0(\axi_rdata[11]_i_6_n_0 ),
        .I1(\axi_rdata[11]_i_7_n_0 ),
        .O(\axi_rdata_reg[11]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[12] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(axi_awready_i_1_n_0));
  MUXF8 \axi_rdata_reg[12]_i_1 
       (.I0(\axi_rdata_reg[12]_i_2_n_0 ),
        .I1(\axi_rdata_reg[12]_i_3_n_0 ),
        .O(reg_data_out[12]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[12]_i_2 
       (.I0(\axi_rdata[12]_i_4_n_0 ),
        .I1(\axi_rdata[12]_i_5_n_0 ),
        .O(\axi_rdata_reg[12]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[12]_i_3 
       (.I0(\axi_rdata[12]_i_6_n_0 ),
        .I1(\axi_rdata[12]_i_7_n_0 ),
        .O(\axi_rdata_reg[12]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[13] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(axi_awready_i_1_n_0));
  MUXF8 \axi_rdata_reg[13]_i_1 
       (.I0(\axi_rdata_reg[13]_i_2_n_0 ),
        .I1(\axi_rdata_reg[13]_i_3_n_0 ),
        .O(reg_data_out[13]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[13]_i_2 
       (.I0(\axi_rdata[13]_i_4_n_0 ),
        .I1(\axi_rdata[13]_i_5_n_0 ),
        .O(\axi_rdata_reg[13]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[13]_i_3 
       (.I0(\axi_rdata[13]_i_6_n_0 ),
        .I1(\axi_rdata[13]_i_7_n_0 ),
        .O(\axi_rdata_reg[13]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[14] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(axi_awready_i_1_n_0));
  MUXF8 \axi_rdata_reg[14]_i_1 
       (.I0(\axi_rdata_reg[14]_i_2_n_0 ),
        .I1(\axi_rdata_reg[14]_i_3_n_0 ),
        .O(reg_data_out[14]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[14]_i_2 
       (.I0(\axi_rdata[14]_i_4_n_0 ),
        .I1(\axi_rdata[14]_i_5_n_0 ),
        .O(\axi_rdata_reg[14]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[14]_i_3 
       (.I0(\axi_rdata[14]_i_6_n_0 ),
        .I1(\axi_rdata[14]_i_7_n_0 ),
        .O(\axi_rdata_reg[14]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[15] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(axi_awready_i_1_n_0));
  MUXF8 \axi_rdata_reg[15]_i_1 
       (.I0(\axi_rdata_reg[15]_i_2_n_0 ),
        .I1(\axi_rdata_reg[15]_i_3_n_0 ),
        .O(reg_data_out[15]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[15]_i_2 
       (.I0(\axi_rdata[15]_i_4_n_0 ),
        .I1(\axi_rdata[15]_i_5_n_0 ),
        .O(\axi_rdata_reg[15]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[15]_i_3 
       (.I0(\axi_rdata[15]_i_6_n_0 ),
        .I1(\axi_rdata[15]_i_7_n_0 ),
        .O(\axi_rdata_reg[15]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[16] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(axi_awready_i_1_n_0));
  MUXF8 \axi_rdata_reg[16]_i_1 
       (.I0(\axi_rdata_reg[16]_i_2_n_0 ),
        .I1(\axi_rdata_reg[16]_i_3_n_0 ),
        .O(reg_data_out[16]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[16]_i_2 
       (.I0(\axi_rdata[16]_i_4_n_0 ),
        .I1(\axi_rdata[16]_i_5_n_0 ),
        .O(\axi_rdata_reg[16]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[16]_i_3 
       (.I0(\axi_rdata[16]_i_6_n_0 ),
        .I1(\axi_rdata[16]_i_7_n_0 ),
        .O(\axi_rdata_reg[16]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[17] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(axi_awready_i_1_n_0));
  MUXF8 \axi_rdata_reg[17]_i_1 
       (.I0(\axi_rdata_reg[17]_i_2_n_0 ),
        .I1(\axi_rdata_reg[17]_i_3_n_0 ),
        .O(reg_data_out[17]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[17]_i_2 
       (.I0(\axi_rdata[17]_i_4_n_0 ),
        .I1(\axi_rdata[17]_i_5_n_0 ),
        .O(\axi_rdata_reg[17]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[17]_i_3 
       (.I0(\axi_rdata[17]_i_6_n_0 ),
        .I1(\axi_rdata[17]_i_7_n_0 ),
        .O(\axi_rdata_reg[17]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[18] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(axi_awready_i_1_n_0));
  MUXF8 \axi_rdata_reg[18]_i_1 
       (.I0(\axi_rdata_reg[18]_i_2_n_0 ),
        .I1(\axi_rdata_reg[18]_i_3_n_0 ),
        .O(reg_data_out[18]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[18]_i_2 
       (.I0(\axi_rdata[18]_i_4_n_0 ),
        .I1(\axi_rdata[18]_i_5_n_0 ),
        .O(\axi_rdata_reg[18]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[18]_i_3 
       (.I0(\axi_rdata[18]_i_6_n_0 ),
        .I1(\axi_rdata[18]_i_7_n_0 ),
        .O(\axi_rdata_reg[18]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[19] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(axi_awready_i_1_n_0));
  MUXF8 \axi_rdata_reg[19]_i_1 
       (.I0(\axi_rdata_reg[19]_i_2_n_0 ),
        .I1(\axi_rdata_reg[19]_i_3_n_0 ),
        .O(reg_data_out[19]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[19]_i_2 
       (.I0(\axi_rdata[19]_i_4_n_0 ),
        .I1(\axi_rdata[19]_i_5_n_0 ),
        .O(\axi_rdata_reg[19]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[19]_i_3 
       (.I0(\axi_rdata[19]_i_6_n_0 ),
        .I1(\axi_rdata[19]_i_7_n_0 ),
        .O(\axi_rdata_reg[19]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[1] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(axi_awready_i_1_n_0));
  MUXF8 \axi_rdata_reg[1]_i_1 
       (.I0(\axi_rdata_reg[1]_i_2_n_0 ),
        .I1(\axi_rdata_reg[1]_i_3_n_0 ),
        .O(reg_data_out[1]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[1]_i_2 
       (.I0(\axi_rdata[1]_i_4_n_0 ),
        .I1(\axi_rdata[1]_i_5_n_0 ),
        .O(\axi_rdata_reg[1]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[1]_i_3 
       (.I0(\axi_rdata[1]_i_6_n_0 ),
        .I1(\axi_rdata[1]_i_7_n_0 ),
        .O(\axi_rdata_reg[1]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[20] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(axi_awready_i_1_n_0));
  MUXF8 \axi_rdata_reg[20]_i_1 
       (.I0(\axi_rdata_reg[20]_i_2_n_0 ),
        .I1(\axi_rdata_reg[20]_i_3_n_0 ),
        .O(reg_data_out[20]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[20]_i_2 
       (.I0(\axi_rdata[20]_i_4_n_0 ),
        .I1(\axi_rdata[20]_i_5_n_0 ),
        .O(\axi_rdata_reg[20]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[20]_i_3 
       (.I0(\axi_rdata[20]_i_6_n_0 ),
        .I1(\axi_rdata[20]_i_7_n_0 ),
        .O(\axi_rdata_reg[20]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[21] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(axi_awready_i_1_n_0));
  MUXF8 \axi_rdata_reg[21]_i_1 
       (.I0(\axi_rdata_reg[21]_i_2_n_0 ),
        .I1(\axi_rdata_reg[21]_i_3_n_0 ),
        .O(reg_data_out[21]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[21]_i_2 
       (.I0(\axi_rdata[21]_i_4_n_0 ),
        .I1(\axi_rdata[21]_i_5_n_0 ),
        .O(\axi_rdata_reg[21]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[21]_i_3 
       (.I0(\axi_rdata[21]_i_6_n_0 ),
        .I1(\axi_rdata[21]_i_7_n_0 ),
        .O(\axi_rdata_reg[21]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[22] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(axi_awready_i_1_n_0));
  MUXF8 \axi_rdata_reg[22]_i_1 
       (.I0(\axi_rdata_reg[22]_i_2_n_0 ),
        .I1(\axi_rdata_reg[22]_i_3_n_0 ),
        .O(reg_data_out[22]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[22]_i_2 
       (.I0(\axi_rdata[22]_i_4_n_0 ),
        .I1(\axi_rdata[22]_i_5_n_0 ),
        .O(\axi_rdata_reg[22]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[22]_i_3 
       (.I0(\axi_rdata[22]_i_6_n_0 ),
        .I1(\axi_rdata[22]_i_7_n_0 ),
        .O(\axi_rdata_reg[22]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[23] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(axi_awready_i_1_n_0));
  MUXF8 \axi_rdata_reg[23]_i_1 
       (.I0(\axi_rdata_reg[23]_i_2_n_0 ),
        .I1(\axi_rdata_reg[23]_i_3_n_0 ),
        .O(reg_data_out[23]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[23]_i_2 
       (.I0(\axi_rdata[23]_i_4_n_0 ),
        .I1(\axi_rdata[23]_i_5_n_0 ),
        .O(\axi_rdata_reg[23]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[23]_i_3 
       (.I0(\axi_rdata[23]_i_6_n_0 ),
        .I1(\axi_rdata[23]_i_7_n_0 ),
        .O(\axi_rdata_reg[23]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[24] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(axi_awready_i_1_n_0));
  MUXF8 \axi_rdata_reg[24]_i_1 
       (.I0(\axi_rdata_reg[24]_i_2_n_0 ),
        .I1(\axi_rdata_reg[24]_i_3_n_0 ),
        .O(reg_data_out[24]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[24]_i_2 
       (.I0(\axi_rdata[24]_i_4_n_0 ),
        .I1(\axi_rdata[24]_i_5_n_0 ),
        .O(\axi_rdata_reg[24]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[24]_i_3 
       (.I0(\axi_rdata[24]_i_6_n_0 ),
        .I1(\axi_rdata[24]_i_7_n_0 ),
        .O(\axi_rdata_reg[24]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[25] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(axi_awready_i_1_n_0));
  MUXF8 \axi_rdata_reg[25]_i_1 
       (.I0(\axi_rdata_reg[25]_i_2_n_0 ),
        .I1(\axi_rdata_reg[25]_i_3_n_0 ),
        .O(reg_data_out[25]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[25]_i_2 
       (.I0(\axi_rdata[25]_i_4_n_0 ),
        .I1(\axi_rdata[25]_i_5_n_0 ),
        .O(\axi_rdata_reg[25]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[25]_i_3 
       (.I0(\axi_rdata[25]_i_6_n_0 ),
        .I1(\axi_rdata[25]_i_7_n_0 ),
        .O(\axi_rdata_reg[25]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[26] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(axi_awready_i_1_n_0));
  MUXF8 \axi_rdata_reg[26]_i_1 
       (.I0(\axi_rdata_reg[26]_i_2_n_0 ),
        .I1(\axi_rdata_reg[26]_i_3_n_0 ),
        .O(reg_data_out[26]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[26]_i_2 
       (.I0(\axi_rdata[26]_i_4_n_0 ),
        .I1(\axi_rdata[26]_i_5_n_0 ),
        .O(\axi_rdata_reg[26]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[26]_i_3 
       (.I0(\axi_rdata[26]_i_6_n_0 ),
        .I1(\axi_rdata[26]_i_7_n_0 ),
        .O(\axi_rdata_reg[26]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[27] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(axi_awready_i_1_n_0));
  MUXF8 \axi_rdata_reg[27]_i_1 
       (.I0(\axi_rdata_reg[27]_i_2_n_0 ),
        .I1(\axi_rdata_reg[27]_i_3_n_0 ),
        .O(reg_data_out[27]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[27]_i_2 
       (.I0(\axi_rdata[27]_i_4_n_0 ),
        .I1(\axi_rdata[27]_i_5_n_0 ),
        .O(\axi_rdata_reg[27]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[27]_i_3 
       (.I0(\axi_rdata[27]_i_6_n_0 ),
        .I1(\axi_rdata[27]_i_7_n_0 ),
        .O(\axi_rdata_reg[27]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[28] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(axi_awready_i_1_n_0));
  MUXF8 \axi_rdata_reg[28]_i_1 
       (.I0(\axi_rdata_reg[28]_i_2_n_0 ),
        .I1(\axi_rdata_reg[28]_i_3_n_0 ),
        .O(reg_data_out[28]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[28]_i_2 
       (.I0(\axi_rdata[28]_i_4_n_0 ),
        .I1(\axi_rdata[28]_i_5_n_0 ),
        .O(\axi_rdata_reg[28]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[28]_i_3 
       (.I0(\axi_rdata[28]_i_6_n_0 ),
        .I1(\axi_rdata[28]_i_7_n_0 ),
        .O(\axi_rdata_reg[28]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[29] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(axi_awready_i_1_n_0));
  MUXF8 \axi_rdata_reg[29]_i_1 
       (.I0(\axi_rdata_reg[29]_i_2_n_0 ),
        .I1(\axi_rdata_reg[29]_i_3_n_0 ),
        .O(reg_data_out[29]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[29]_i_2 
       (.I0(\axi_rdata[29]_i_4_n_0 ),
        .I1(\axi_rdata[29]_i_5_n_0 ),
        .O(\axi_rdata_reg[29]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[29]_i_3 
       (.I0(\axi_rdata[29]_i_6_n_0 ),
        .I1(\axi_rdata[29]_i_7_n_0 ),
        .O(\axi_rdata_reg[29]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[2] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(axi_awready_i_1_n_0));
  MUXF8 \axi_rdata_reg[2]_i_1 
       (.I0(\axi_rdata_reg[2]_i_2_n_0 ),
        .I1(\axi_rdata_reg[2]_i_3_n_0 ),
        .O(reg_data_out[2]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[2]_i_2 
       (.I0(\axi_rdata[2]_i_4_n_0 ),
        .I1(\axi_rdata[2]_i_5_n_0 ),
        .O(\axi_rdata_reg[2]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[2]_i_3 
       (.I0(\axi_rdata[2]_i_6_n_0 ),
        .I1(\axi_rdata[2]_i_7_n_0 ),
        .O(\axi_rdata_reg[2]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[30] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(axi_awready_i_1_n_0));
  MUXF8 \axi_rdata_reg[30]_i_1 
       (.I0(\axi_rdata_reg[30]_i_2_n_0 ),
        .I1(\axi_rdata_reg[30]_i_3_n_0 ),
        .O(reg_data_out[30]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[30]_i_2 
       (.I0(\axi_rdata[30]_i_4_n_0 ),
        .I1(\axi_rdata[30]_i_5_n_0 ),
        .O(\axi_rdata_reg[30]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[30]_i_3 
       (.I0(\axi_rdata[30]_i_6_n_0 ),
        .I1(\axi_rdata[30]_i_7_n_0 ),
        .O(\axi_rdata_reg[30]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[31] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(axi_awready_i_1_n_0));
  MUXF8 \axi_rdata_reg[31]_i_1 
       (.I0(\axi_rdata_reg[31]_i_2_n_0 ),
        .I1(\axi_rdata_reg[31]_i_3_n_0 ),
        .O(reg_data_out[31]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[31]_i_2 
       (.I0(\axi_rdata[31]_i_4_n_0 ),
        .I1(\axi_rdata[31]_i_5_n_0 ),
        .O(\axi_rdata_reg[31]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[31]_i_3 
       (.I0(\axi_rdata[31]_i_6_n_0 ),
        .I1(\axi_rdata[31]_i_7_n_0 ),
        .O(\axi_rdata_reg[31]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[3] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(axi_awready_i_1_n_0));
  MUXF8 \axi_rdata_reg[3]_i_1 
       (.I0(\axi_rdata_reg[3]_i_2_n_0 ),
        .I1(\axi_rdata_reg[3]_i_3_n_0 ),
        .O(reg_data_out[3]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[3]_i_2 
       (.I0(\axi_rdata[3]_i_4_n_0 ),
        .I1(\axi_rdata[3]_i_5_n_0 ),
        .O(\axi_rdata_reg[3]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[3]_i_3 
       (.I0(\axi_rdata[3]_i_6_n_0 ),
        .I1(\axi_rdata[3]_i_7_n_0 ),
        .O(\axi_rdata_reg[3]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[4] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(axi_awready_i_1_n_0));
  MUXF8 \axi_rdata_reg[4]_i_1 
       (.I0(\axi_rdata_reg[4]_i_2_n_0 ),
        .I1(\axi_rdata_reg[4]_i_3_n_0 ),
        .O(reg_data_out[4]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[4]_i_2 
       (.I0(\axi_rdata[4]_i_4_n_0 ),
        .I1(\axi_rdata[4]_i_5_n_0 ),
        .O(\axi_rdata_reg[4]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[4]_i_3 
       (.I0(\axi_rdata[4]_i_6_n_0 ),
        .I1(\axi_rdata[4]_i_7_n_0 ),
        .O(\axi_rdata_reg[4]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[5] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(axi_awready_i_1_n_0));
  MUXF8 \axi_rdata_reg[5]_i_1 
       (.I0(\axi_rdata_reg[5]_i_2_n_0 ),
        .I1(\axi_rdata_reg[5]_i_3_n_0 ),
        .O(reg_data_out[5]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[5]_i_2 
       (.I0(\axi_rdata[5]_i_4_n_0 ),
        .I1(\axi_rdata[5]_i_5_n_0 ),
        .O(\axi_rdata_reg[5]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[5]_i_3 
       (.I0(\axi_rdata[5]_i_6_n_0 ),
        .I1(\axi_rdata[5]_i_7_n_0 ),
        .O(\axi_rdata_reg[5]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[6] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(axi_awready_i_1_n_0));
  MUXF8 \axi_rdata_reg[6]_i_1 
       (.I0(\axi_rdata_reg[6]_i_2_n_0 ),
        .I1(\axi_rdata_reg[6]_i_3_n_0 ),
        .O(reg_data_out[6]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[6]_i_2 
       (.I0(\axi_rdata[6]_i_4_n_0 ),
        .I1(\axi_rdata[6]_i_5_n_0 ),
        .O(\axi_rdata_reg[6]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[6]_i_3 
       (.I0(\axi_rdata[6]_i_6_n_0 ),
        .I1(\axi_rdata[6]_i_7_n_0 ),
        .O(\axi_rdata_reg[6]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[7] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(axi_awready_i_1_n_0));
  MUXF8 \axi_rdata_reg[7]_i_1 
       (.I0(\axi_rdata_reg[7]_i_2_n_0 ),
        .I1(\axi_rdata_reg[7]_i_3_n_0 ),
        .O(reg_data_out[7]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[7]_i_2 
       (.I0(\axi_rdata[7]_i_4_n_0 ),
        .I1(\axi_rdata[7]_i_5_n_0 ),
        .O(\axi_rdata_reg[7]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[7]_i_3 
       (.I0(\axi_rdata[7]_i_6_n_0 ),
        .I1(\axi_rdata[7]_i_7_n_0 ),
        .O(\axi_rdata_reg[7]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[8] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(axi_awready_i_1_n_0));
  MUXF8 \axi_rdata_reg[8]_i_1 
       (.I0(\axi_rdata_reg[8]_i_2_n_0 ),
        .I1(\axi_rdata_reg[8]_i_3_n_0 ),
        .O(reg_data_out[8]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[8]_i_2 
       (.I0(\axi_rdata[8]_i_4_n_0 ),
        .I1(\axi_rdata[8]_i_5_n_0 ),
        .O(\axi_rdata_reg[8]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[8]_i_3 
       (.I0(\axi_rdata[8]_i_6_n_0 ),
        .I1(\axi_rdata[8]_i_7_n_0 ),
        .O(\axi_rdata_reg[8]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[9] 
       (.C(clk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(axi_awready_i_1_n_0));
  MUXF8 \axi_rdata_reg[9]_i_1 
       (.I0(\axi_rdata_reg[9]_i_2_n_0 ),
        .I1(\axi_rdata_reg[9]_i_3_n_0 ),
        .O(reg_data_out[9]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[9]_i_2 
       (.I0(\axi_rdata[9]_i_4_n_0 ),
        .I1(\axi_rdata[9]_i_5_n_0 ),
        .O(\axi_rdata_reg[9]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[9]_i_3 
       (.I0(\axi_rdata[9]_i_6_n_0 ),
        .I1(\axi_rdata[9]_i_7_n_0 ),
        .O(\axi_rdata_reg[9]_i_3_n_0 ),
        .S(sel0[2]));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(S_AXI_ARREADY),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_rvalid_reg
       (.C(clk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h0800)) 
    axi_wready_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_WREADY),
        .I3(aw_en_reg_n_0),
        .O(axi_wready0));
  FDRE #(
    .INIT(1'b0)) 
    axi_wready_reg
       (.C(clk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(axi_awready_i_1_n_0));
  (* BRAM_ADDR_SIZE = "14" *) 
  (* BRAM_DATA_SIZE = "32" *) 
  (* BRAM_DEPTH = "32768" *) 
  (* CLK_RATE = "200000000" *) 
  (* DEFUALT_RATE = "100" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  sampleDetect_tl sampleDetector
       (.addr(addra),
        .baudRate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,slv_reg1[22:0]}),
        .bramEnable(ena),
        .bramWe(NLW_sampleDetector_bramWe_UNCONNECTED),
        .canID(slv_reg0),
        .clk(clk),
        .dIn(canIn),
        .enable(slv_reg4[1]),
        .interrupt(interrupt),
        .invalidSignal(invalidSig),
        .numSigs(slv_reg3[15:0]),
        .outSwitch(enOut),
        .playbackRate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,slv_reg2[22:0]}),
        .readData(douta),
        .resetBusy(1'b0),
        .resetN(resetn),
        .sampleOut(dOut),
        .setValues(slv_reg4[0]),
        .sigSizeWords(slv_reg3[31:16]),
        .stateDbg(metaState),
        .validSigNum(validSigNum),
        .writeData(NLW_sampleDetector_writeData_UNCONNECTED[31:0]));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \slv_reg0[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[0]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(s00_axi_wstrb[1]),
        .O(\slv_reg0[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \slv_reg0[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[0]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(s00_axi_wstrb[2]),
        .O(\slv_reg0[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \slv_reg0[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[0]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(s00_axi_wstrb[3]),
        .O(\slv_reg0[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg0[31]_i_2 
       (.I0(S_AXI_WREADY),
        .I1(S_AXI_AWREADY),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .O(slv_reg_wren__0));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \slv_reg0[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[0]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(s00_axi_wstrb[0]),
        .O(\slv_reg0[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[0] 
       (.C(clk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg0[0]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[10] 
       (.C(clk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg0[10]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[11] 
       (.C(clk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg0[11]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[12] 
       (.C(clk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg0[12]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[13] 
       (.C(clk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg0[13]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[14] 
       (.C(clk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg0[14]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[15] 
       (.C(clk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg0[15]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[16] 
       (.C(clk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg0[16]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[17] 
       (.C(clk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg0[17]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[18] 
       (.C(clk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg0[18]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[19] 
       (.C(clk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg0[19]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[1] 
       (.C(clk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg0[1]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[20] 
       (.C(clk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg0[20]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[21] 
       (.C(clk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg0[21]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[22] 
       (.C(clk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg0[22]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[23] 
       (.C(clk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg0[23]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[24] 
       (.C(clk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg0[24]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[25] 
       (.C(clk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg0[25]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[26] 
       (.C(clk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg0[26]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[27] 
       (.C(clk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg0[27]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[28] 
       (.C(clk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg0[28]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[29] 
       (.C(clk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg0[29]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[2] 
       (.C(clk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg0[2]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[30] 
       (.C(clk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg0[30]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[31] 
       (.C(clk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg0[31]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[3] 
       (.C(clk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg0[3]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[4] 
       (.C(clk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg0[4]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[5] 
       (.C(clk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg0[5]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[6] 
       (.C(clk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg0[6]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[7] 
       (.C(clk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg0[7]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[8] 
       (.C(clk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg0[8]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[9] 
       (.C(clk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg0[9]),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg10[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[3]),
        .I2(s00_axi_wstrb[1]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(p_0_in[2]),
        .O(\slv_reg10[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg10[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[3]),
        .I2(s00_axi_wstrb[2]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(p_0_in[2]),
        .O(\slv_reg10[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg10[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[3]),
        .I2(s00_axi_wstrb[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(p_0_in[2]),
        .O(\slv_reg10[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg10[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[3]),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(p_0_in[2]),
        .O(\slv_reg10[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg10_reg[0] 
       (.C(clk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg10[0]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg10_reg[10] 
       (.C(clk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg10[10]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg10_reg[11] 
       (.C(clk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg10[11]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg10_reg[12] 
       (.C(clk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg10[12]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg10_reg[13] 
       (.C(clk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg10[13]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg10_reg[14] 
       (.C(clk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg10[14]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg10_reg[15] 
       (.C(clk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg10[15]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg10_reg[16] 
       (.C(clk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg10[16]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg10_reg[17] 
       (.C(clk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg10[17]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg10_reg[18] 
       (.C(clk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg10[18]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg10_reg[19] 
       (.C(clk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg10[19]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg10_reg[1] 
       (.C(clk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg10[1]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg10_reg[20] 
       (.C(clk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg10[20]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg10_reg[21] 
       (.C(clk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg10[21]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg10_reg[22] 
       (.C(clk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg10[22]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg10_reg[23] 
       (.C(clk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg10[23]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg10_reg[24] 
       (.C(clk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg10[24]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg10_reg[25] 
       (.C(clk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg10[25]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg10_reg[26] 
       (.C(clk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg10[26]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg10_reg[27] 
       (.C(clk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg10[27]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg10_reg[28] 
       (.C(clk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg10[28]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg10_reg[29] 
       (.C(clk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg10[29]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg10_reg[2] 
       (.C(clk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg10[2]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg10_reg[30] 
       (.C(clk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg10[30]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg10_reg[31] 
       (.C(clk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg10[31]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg10_reg[3] 
       (.C(clk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg10[3]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg10_reg[4] 
       (.C(clk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg10[4]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg10_reg[5] 
       (.C(clk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg10[5]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg10_reg[6] 
       (.C(clk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg10[6]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg10_reg[7] 
       (.C(clk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg10[7]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg10_reg[8] 
       (.C(clk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg10[8]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg10_reg[9] 
       (.C(clk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg10[9]),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg11[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[3]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(p_0_in[2]),
        .O(\slv_reg11[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg11[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[3]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(p_0_in[2]),
        .O(\slv_reg11[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg11[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[3]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(p_0_in[2]),
        .O(\slv_reg11[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg11[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[3]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(p_0_in[2]),
        .O(\slv_reg11[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg11_reg[0] 
       (.C(clk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg11[0]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg11_reg[10] 
       (.C(clk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg11[10]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg11_reg[11] 
       (.C(clk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg11[11]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg11_reg[12] 
       (.C(clk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg11[12]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg11_reg[13] 
       (.C(clk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg11[13]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg11_reg[14] 
       (.C(clk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg11[14]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg11_reg[15] 
       (.C(clk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg11[15]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg11_reg[16] 
       (.C(clk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg11[16]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg11_reg[17] 
       (.C(clk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg11[17]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg11_reg[18] 
       (.C(clk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg11[18]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg11_reg[19] 
       (.C(clk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg11[19]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg11_reg[1] 
       (.C(clk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg11[1]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg11_reg[20] 
       (.C(clk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg11[20]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg11_reg[21] 
       (.C(clk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg11[21]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg11_reg[22] 
       (.C(clk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg11[22]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg11_reg[23] 
       (.C(clk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg11[23]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg11_reg[24] 
       (.C(clk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg11[24]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg11_reg[25] 
       (.C(clk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg11[25]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg11_reg[26] 
       (.C(clk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg11[26]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg11_reg[27] 
       (.C(clk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg11[27]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg11_reg[28] 
       (.C(clk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg11[28]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg11_reg[29] 
       (.C(clk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg11[29]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg11_reg[2] 
       (.C(clk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg11[2]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg11_reg[30] 
       (.C(clk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg11[30]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg11_reg[31] 
       (.C(clk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg11[31]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg11_reg[3] 
       (.C(clk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg11[3]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg11_reg[4] 
       (.C(clk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg11[4]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg11_reg[5] 
       (.C(clk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg11[5]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg11_reg[6] 
       (.C(clk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg11[6]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg11_reg[7] 
       (.C(clk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg11[7]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg11_reg[8] 
       (.C(clk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg11[8]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg11_reg[9] 
       (.C(clk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg11[9]),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg12[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[3]),
        .I2(s00_axi_wstrb[1]),
        .I3(p_0_in[2]),
        .I4(p_0_in[0]),
        .I5(p_0_in[1]),
        .O(\slv_reg12[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg12[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[3]),
        .I2(s00_axi_wstrb[2]),
        .I3(p_0_in[2]),
        .I4(p_0_in[0]),
        .I5(p_0_in[1]),
        .O(\slv_reg12[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg12[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[3]),
        .I2(s00_axi_wstrb[3]),
        .I3(p_0_in[2]),
        .I4(p_0_in[0]),
        .I5(p_0_in[1]),
        .O(\slv_reg12[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg12[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[3]),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in[2]),
        .I4(p_0_in[0]),
        .I5(p_0_in[1]),
        .O(\slv_reg12[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg12_reg[0] 
       (.C(clk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg12[0]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg12_reg[10] 
       (.C(clk),
        .CE(\slv_reg12[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg12[10]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg12_reg[11] 
       (.C(clk),
        .CE(\slv_reg12[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg12[11]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg12_reg[12] 
       (.C(clk),
        .CE(\slv_reg12[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg12[12]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg12_reg[13] 
       (.C(clk),
        .CE(\slv_reg12[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg12[13]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg12_reg[14] 
       (.C(clk),
        .CE(\slv_reg12[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg12[14]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg12_reg[15] 
       (.C(clk),
        .CE(\slv_reg12[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg12[15]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg12_reg[16] 
       (.C(clk),
        .CE(\slv_reg12[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg12[16]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg12_reg[17] 
       (.C(clk),
        .CE(\slv_reg12[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg12[17]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg12_reg[18] 
       (.C(clk),
        .CE(\slv_reg12[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg12[18]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg12_reg[19] 
       (.C(clk),
        .CE(\slv_reg12[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg12[19]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg12_reg[1] 
       (.C(clk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg12[1]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg12_reg[20] 
       (.C(clk),
        .CE(\slv_reg12[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg12[20]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg12_reg[21] 
       (.C(clk),
        .CE(\slv_reg12[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg12[21]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg12_reg[22] 
       (.C(clk),
        .CE(\slv_reg12[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg12[22]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg12_reg[23] 
       (.C(clk),
        .CE(\slv_reg12[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg12[23]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg12_reg[24] 
       (.C(clk),
        .CE(\slv_reg12[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg12[24]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg12_reg[25] 
       (.C(clk),
        .CE(\slv_reg12[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg12[25]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg12_reg[26] 
       (.C(clk),
        .CE(\slv_reg12[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg12[26]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg12_reg[27] 
       (.C(clk),
        .CE(\slv_reg12[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg12[27]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg12_reg[28] 
       (.C(clk),
        .CE(\slv_reg12[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg12[28]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg12_reg[29] 
       (.C(clk),
        .CE(\slv_reg12[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg12[29]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg12_reg[2] 
       (.C(clk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg12[2]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg12_reg[30] 
       (.C(clk),
        .CE(\slv_reg12[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg12[30]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg12_reg[31] 
       (.C(clk),
        .CE(\slv_reg12[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg12[31]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg12_reg[3] 
       (.C(clk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg12[3]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg12_reg[4] 
       (.C(clk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg12[4]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg12_reg[5] 
       (.C(clk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg12[5]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg12_reg[6] 
       (.C(clk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg12[6]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg12_reg[7] 
       (.C(clk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg12[7]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg12_reg[8] 
       (.C(clk),
        .CE(\slv_reg12[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg12[8]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg12_reg[9] 
       (.C(clk),
        .CE(\slv_reg12[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg12[9]),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg13[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(p_0_in[0]),
        .I4(s00_axi_wstrb[1]),
        .I5(p_0_in[1]),
        .O(\slv_reg13[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg13[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(p_0_in[0]),
        .I4(s00_axi_wstrb[2]),
        .I5(p_0_in[1]),
        .O(\slv_reg13[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg13[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(p_0_in[0]),
        .I4(s00_axi_wstrb[3]),
        .I5(p_0_in[1]),
        .O(\slv_reg13[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg13[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(p_0_in[0]),
        .I4(s00_axi_wstrb[0]),
        .I5(p_0_in[1]),
        .O(\slv_reg13[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg13_reg[0] 
       (.C(clk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg13[0]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg13_reg[10] 
       (.C(clk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg13[10]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg13_reg[11] 
       (.C(clk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg13[11]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg13_reg[12] 
       (.C(clk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg13[12]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg13_reg[13] 
       (.C(clk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg13[13]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg13_reg[14] 
       (.C(clk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg13[14]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg13_reg[15] 
       (.C(clk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg13[15]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg13_reg[16] 
       (.C(clk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg13[16]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg13_reg[17] 
       (.C(clk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg13[17]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg13_reg[18] 
       (.C(clk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg13[18]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg13_reg[19] 
       (.C(clk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg13[19]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg13_reg[1] 
       (.C(clk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg13[1]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg13_reg[20] 
       (.C(clk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg13[20]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg13_reg[21] 
       (.C(clk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg13[21]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg13_reg[22] 
       (.C(clk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg13[22]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg13_reg[23] 
       (.C(clk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg13[23]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg13_reg[24] 
       (.C(clk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg13[24]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg13_reg[25] 
       (.C(clk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg13[25]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg13_reg[26] 
       (.C(clk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg13[26]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg13_reg[27] 
       (.C(clk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg13[27]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg13_reg[28] 
       (.C(clk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg13[28]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg13_reg[29] 
       (.C(clk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg13[29]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg13_reg[2] 
       (.C(clk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg13[2]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg13_reg[30] 
       (.C(clk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg13[30]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg13_reg[31] 
       (.C(clk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg13[31]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg13_reg[3] 
       (.C(clk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg13[3]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg13_reg[4] 
       (.C(clk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg13[4]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg13_reg[5] 
       (.C(clk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg13[5]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg13_reg[6] 
       (.C(clk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg13[6]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg13_reg[7] 
       (.C(clk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg13[7]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg13_reg[8] 
       (.C(clk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg13[8]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg13_reg[9] 
       (.C(clk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg13[9]),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg14[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(s00_axi_wstrb[1]),
        .I4(p_0_in[1]),
        .I5(p_0_in[0]),
        .O(\slv_reg14[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg14[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(s00_axi_wstrb[2]),
        .I4(p_0_in[1]),
        .I5(p_0_in[0]),
        .O(\slv_reg14[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg14[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(s00_axi_wstrb[3]),
        .I4(p_0_in[1]),
        .I5(p_0_in[0]),
        .O(\slv_reg14[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg14[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .I3(s00_axi_wstrb[0]),
        .I4(p_0_in[1]),
        .I5(p_0_in[0]),
        .O(\slv_reg14[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg14_reg[0] 
       (.C(clk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg14[0]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg14_reg[10] 
       (.C(clk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg14[10]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg14_reg[11] 
       (.C(clk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg14[11]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg14_reg[12] 
       (.C(clk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg14[12]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg14_reg[13] 
       (.C(clk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg14[13]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg14_reg[14] 
       (.C(clk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg14[14]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg14_reg[15] 
       (.C(clk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg14[15]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg14_reg[16] 
       (.C(clk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg14[16]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg14_reg[17] 
       (.C(clk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg14[17]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg14_reg[18] 
       (.C(clk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg14[18]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg14_reg[19] 
       (.C(clk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg14[19]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg14_reg[1] 
       (.C(clk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg14[1]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg14_reg[20] 
       (.C(clk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg14[20]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg14_reg[21] 
       (.C(clk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg14[21]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg14_reg[22] 
       (.C(clk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg14[22]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg14_reg[23] 
       (.C(clk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg14[23]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg14_reg[24] 
       (.C(clk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg14[24]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg14_reg[25] 
       (.C(clk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg14[25]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg14_reg[26] 
       (.C(clk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg14[26]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg14_reg[27] 
       (.C(clk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg14[27]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg14_reg[28] 
       (.C(clk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg14[28]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg14_reg[29] 
       (.C(clk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg14[29]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg14_reg[2] 
       (.C(clk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg14[2]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg14_reg[30] 
       (.C(clk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg14[30]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg14_reg[31] 
       (.C(clk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg14[31]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg14_reg[3] 
       (.C(clk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg14[3]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg14_reg[4] 
       (.C(clk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg14[4]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg14_reg[5] 
       (.C(clk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg14[5]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg14_reg[6] 
       (.C(clk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg14[6]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg14_reg[7] 
       (.C(clk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg14[7]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg14_reg[8] 
       (.C(clk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg14[8]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg14_reg[9] 
       (.C(clk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg14[9]),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \slv_reg15[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(s00_axi_wstrb[1]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(p_0_in[3]),
        .O(\slv_reg15[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \slv_reg15[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(s00_axi_wstrb[2]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(p_0_in[3]),
        .O(\slv_reg15[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \slv_reg15[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(s00_axi_wstrb[3]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(p_0_in[3]),
        .O(\slv_reg15[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \slv_reg15[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(p_0_in[3]),
        .O(\slv_reg15[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg15_reg[0] 
       (.C(clk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg15[0]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg15_reg[10] 
       (.C(clk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg15[10]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg15_reg[11] 
       (.C(clk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg15[11]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg15_reg[12] 
       (.C(clk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg15[12]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg15_reg[13] 
       (.C(clk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg15[13]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg15_reg[14] 
       (.C(clk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg15[14]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg15_reg[15] 
       (.C(clk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg15[15]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg15_reg[16] 
       (.C(clk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg15[16]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg15_reg[17] 
       (.C(clk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg15[17]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg15_reg[18] 
       (.C(clk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg15[18]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg15_reg[19] 
       (.C(clk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg15[19]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg15_reg[1] 
       (.C(clk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg15[1]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg15_reg[20] 
       (.C(clk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg15[20]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg15_reg[21] 
       (.C(clk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg15[21]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg15_reg[22] 
       (.C(clk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg15[22]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg15_reg[23] 
       (.C(clk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg15[23]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg15_reg[24] 
       (.C(clk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg15[24]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg15_reg[25] 
       (.C(clk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg15[25]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg15_reg[26] 
       (.C(clk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg15[26]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg15_reg[27] 
       (.C(clk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg15[27]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg15_reg[28] 
       (.C(clk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg15[28]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg15_reg[29] 
       (.C(clk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg15[29]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg15_reg[2] 
       (.C(clk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg15[2]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg15_reg[30] 
       (.C(clk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg15[30]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg15_reg[31] 
       (.C(clk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg15[31]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg15_reg[3] 
       (.C(clk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg15[3]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg15_reg[4] 
       (.C(clk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg15[4]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg15_reg[5] 
       (.C(clk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg15[5]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg15_reg[6] 
       (.C(clk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg15[6]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg15_reg[7] 
       (.C(clk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg15[7]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg15_reg[8] 
       (.C(clk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg15[8]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg15_reg[9] 
       (.C(clk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg15[9]),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg1[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(p_0_in[0]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg1[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(p_0_in[0]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg1[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(p_0_in[0]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg1[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(p_0_in[0]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[0] 
       (.C(clk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg1[0]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[10] 
       (.C(clk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg1[10]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[11] 
       (.C(clk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg1[11]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[12] 
       (.C(clk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg1[12]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[13] 
       (.C(clk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg1[13]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[14] 
       (.C(clk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg1[14]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[15] 
       (.C(clk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg1[15]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[16] 
       (.C(clk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg1[16]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[17] 
       (.C(clk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg1[17]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[18] 
       (.C(clk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg1[18]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[19] 
       (.C(clk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg1[19]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[1] 
       (.C(clk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg1[1]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[20] 
       (.C(clk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg1[20]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[21] 
       (.C(clk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg1[21]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[22] 
       (.C(clk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg1[22]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[23] 
       (.C(clk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg1[23]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[24] 
       (.C(clk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg1[24]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[25] 
       (.C(clk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg1[25]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[26] 
       (.C(clk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg1[26]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[27] 
       (.C(clk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg1[27]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[28] 
       (.C(clk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg1[28]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[29] 
       (.C(clk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg1[29]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[2] 
       (.C(clk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg1[2]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[30] 
       (.C(clk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg1[30]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[31] 
       (.C(clk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg1[31]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[3] 
       (.C(clk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg1[3]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[4] 
       (.C(clk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg1[4]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[5] 
       (.C(clk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg1[5]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[6] 
       (.C(clk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg1[6]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[7] 
       (.C(clk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg1[7]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[8] 
       (.C(clk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg1[8]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[9] 
       (.C(clk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg1[9]),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg2[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[3]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .I5(p_0_in[1]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg2[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[3]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .I5(p_0_in[1]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg2[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[3]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .I5(p_0_in[1]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg2[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[3]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .I5(p_0_in[1]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[0] 
       (.C(clk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg2[0]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[10] 
       (.C(clk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg2[10]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[11] 
       (.C(clk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg2[11]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[12] 
       (.C(clk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg2[12]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[13] 
       (.C(clk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg2[13]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[14] 
       (.C(clk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg2[14]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[15] 
       (.C(clk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg2[15]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[16] 
       (.C(clk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg2[16]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[17] 
       (.C(clk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg2[17]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[18] 
       (.C(clk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg2[18]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[19] 
       (.C(clk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg2[19]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[1] 
       (.C(clk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg2[1]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[20] 
       (.C(clk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg2[20]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[21] 
       (.C(clk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg2[21]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[22] 
       (.C(clk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg2[22]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[23] 
       (.C(clk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg2[23]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[24] 
       (.C(clk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg2[24]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[25] 
       (.C(clk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg2[25]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[26] 
       (.C(clk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg2[26]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[27] 
       (.C(clk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg2[27]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[28] 
       (.C(clk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg2[28]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[29] 
       (.C(clk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg2[29]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[2] 
       (.C(clk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg2[2]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[30] 
       (.C(clk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg2[30]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[31] 
       (.C(clk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg2[31]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[3] 
       (.C(clk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg2[3]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[4] 
       (.C(clk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg2[4]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[5] 
       (.C(clk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg2[5]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[6] 
       (.C(clk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg2[6]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[7] 
       (.C(clk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg2[7]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[8] 
       (.C(clk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg2[8]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[9] 
       (.C(clk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg2[9]),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg3[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(p_0_in[3]),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg3[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(p_0_in[3]),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg3[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(p_0_in[3]),
        .O(\slv_reg3[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg3[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(p_0_in[3]),
        .O(\slv_reg3[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[0] 
       (.C(clk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg3[0]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[10] 
       (.C(clk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg3[10]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[11] 
       (.C(clk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg3[11]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[12] 
       (.C(clk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg3[12]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[13] 
       (.C(clk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg3[13]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[14] 
       (.C(clk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg3[14]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[15] 
       (.C(clk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg3[15]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[16] 
       (.C(clk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg3[16]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[17] 
       (.C(clk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg3[17]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[18] 
       (.C(clk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg3[18]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[19] 
       (.C(clk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg3[19]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[1] 
       (.C(clk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg3[1]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[20] 
       (.C(clk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg3[20]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[21] 
       (.C(clk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg3[21]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[22] 
       (.C(clk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg3[22]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[23] 
       (.C(clk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg3[23]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[24] 
       (.C(clk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg3[24]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[25] 
       (.C(clk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg3[25]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[26] 
       (.C(clk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg3[26]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[27] 
       (.C(clk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg3[27]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[28] 
       (.C(clk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg3[28]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[29] 
       (.C(clk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg3[29]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[2] 
       (.C(clk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg3[2]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[30] 
       (.C(clk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg3[30]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[31] 
       (.C(clk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg3[31]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[3] 
       (.C(clk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg3[3]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[4] 
       (.C(clk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg3[4]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[5] 
       (.C(clk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg3[5]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[6] 
       (.C(clk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg3[6]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[7] 
       (.C(clk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg3[7]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[8] 
       (.C(clk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg3[8]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[9] 
       (.C(clk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg3[9]),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg4[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(p_0_in[2]),
        .O(\slv_reg4[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg4[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(p_0_in[2]),
        .O(\slv_reg4[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg4[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(p_0_in[2]),
        .O(\slv_reg4[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg4[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(p_0_in[2]),
        .O(\slv_reg4[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg4_reg[0] 
       (.C(clk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg4[0]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg4_reg[10] 
       (.C(clk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg4__0[10]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg4_reg[11] 
       (.C(clk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg4__0[11]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg4_reg[12] 
       (.C(clk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg4__0[12]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg4_reg[13] 
       (.C(clk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg4__0[13]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg4_reg[14] 
       (.C(clk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg4__0[14]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg4_reg[15] 
       (.C(clk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg4__0[15]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg4_reg[16] 
       (.C(clk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg4__0[16]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg4_reg[17] 
       (.C(clk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg4__0[17]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg4_reg[18] 
       (.C(clk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg4__0[18]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg4_reg[19] 
       (.C(clk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg4__0[19]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg4_reg[1] 
       (.C(clk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg4[1]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg4_reg[20] 
       (.C(clk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg4__0[20]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg4_reg[21] 
       (.C(clk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg4__0[21]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg4_reg[22] 
       (.C(clk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg4__0[22]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg4_reg[23] 
       (.C(clk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg4__0[23]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg4_reg[24] 
       (.C(clk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg4__0[24]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg4_reg[25] 
       (.C(clk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg4__0[25]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg4_reg[26] 
       (.C(clk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg4__0[26]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg4_reg[27] 
       (.C(clk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg4__0[27]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg4_reg[28] 
       (.C(clk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg4__0[28]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg4_reg[29] 
       (.C(clk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg4__0[29]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg4_reg[2] 
       (.C(clk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg4__0[2]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg4_reg[30] 
       (.C(clk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg4__0[30]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg4_reg[31] 
       (.C(clk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg4__0[31]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg4_reg[3] 
       (.C(clk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg4__0[3]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg4_reg[4] 
       (.C(clk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg4__0[4]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg4_reg[5] 
       (.C(clk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg4__0[5]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg4_reg[6] 
       (.C(clk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg4__0[6]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg4_reg[7] 
       (.C(clk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg4__0[7]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg4_reg[8] 
       (.C(clk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg4__0[8]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg4_reg[9] 
       (.C(clk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg4__0[9]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg5_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(metaState[0]),
        .Q(\slv_reg5_reg_n_0_[0] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg5_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(validSigNum[0]),
        .Q(\slv_reg5_reg_n_0_[16] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg5_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(validSigNum[1]),
        .Q(\slv_reg5_reg_n_0_[17] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg5_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(validSigNum[2]),
        .Q(\slv_reg5_reg_n_0_[18] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg5_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(validSigNum[3]),
        .Q(\slv_reg5_reg_n_0_[19] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg5_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(metaState[1]),
        .Q(\slv_reg5_reg_n_0_[1] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg5_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(validSigNum[4]),
        .Q(\slv_reg5_reg_n_0_[20] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg5_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(validSigNum[5]),
        .Q(\slv_reg5_reg_n_0_[21] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg5_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(validSigNum[6]),
        .Q(\slv_reg5_reg_n_0_[22] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg5_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(validSigNum[7]),
        .Q(\slv_reg5_reg_n_0_[23] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg5_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(validSigNum[8]),
        .Q(\slv_reg5_reg_n_0_[24] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg5_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(validSigNum[9]),
        .Q(\slv_reg5_reg_n_0_[25] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg5_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(validSigNum[10]),
        .Q(\slv_reg5_reg_n_0_[26] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg5_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(validSigNum[11]),
        .Q(\slv_reg5_reg_n_0_[27] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg5_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(validSigNum[12]),
        .Q(\slv_reg5_reg_n_0_[28] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg5_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(validSigNum[13]),
        .Q(\slv_reg5_reg_n_0_[29] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg5_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(metaState[2]),
        .Q(\slv_reg5_reg_n_0_[2] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg5_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(validSigNum[14]),
        .Q(\slv_reg5_reg_n_0_[30] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg5_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(validSigNum[15]),
        .Q(\slv_reg5_reg_n_0_[31] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg5_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(metaState[3]),
        .Q(\slv_reg5_reg_n_0_[3] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg5_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(invalidSig),
        .Q(\slv_reg5_reg_n_0_[4] ),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg6[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(p_0_in[3]),
        .O(\slv_reg6[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg6[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(p_0_in[3]),
        .O(\slv_reg6[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg6[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(p_0_in[3]),
        .O(\slv_reg6[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg6[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(p_0_in[3]),
        .O(\slv_reg6[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg6_reg[0] 
       (.C(clk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg6[0]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg6_reg[10] 
       (.C(clk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg6[10]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg6_reg[11] 
       (.C(clk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg6[11]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg6_reg[12] 
       (.C(clk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg6[12]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg6_reg[13] 
       (.C(clk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg6[13]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg6_reg[14] 
       (.C(clk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg6[14]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg6_reg[15] 
       (.C(clk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg6[15]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg6_reg[16] 
       (.C(clk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg6[16]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg6_reg[17] 
       (.C(clk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg6[17]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg6_reg[18] 
       (.C(clk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg6[18]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg6_reg[19] 
       (.C(clk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg6[19]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg6_reg[1] 
       (.C(clk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg6[1]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg6_reg[20] 
       (.C(clk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg6[20]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg6_reg[21] 
       (.C(clk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg6[21]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg6_reg[22] 
       (.C(clk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg6[22]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg6_reg[23] 
       (.C(clk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg6[23]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg6_reg[24] 
       (.C(clk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg6[24]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg6_reg[25] 
       (.C(clk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg6[25]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg6_reg[26] 
       (.C(clk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg6[26]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg6_reg[27] 
       (.C(clk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg6[27]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg6_reg[28] 
       (.C(clk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg6[28]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg6_reg[29] 
       (.C(clk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg6[29]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg6_reg[2] 
       (.C(clk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg6[2]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg6_reg[30] 
       (.C(clk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg6[30]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg6_reg[31] 
       (.C(clk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg6[31]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg6_reg[3] 
       (.C(clk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg6[3]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg6_reg[4] 
       (.C(clk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg6[4]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg6_reg[5] 
       (.C(clk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg6[5]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg6_reg[6] 
       (.C(clk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg6[6]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg6_reg[7] 
       (.C(clk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg6[7]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg6_reg[8] 
       (.C(clk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg6[8]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg6_reg[9] 
       (.C(clk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg6[9]),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg7[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(s00_axi_wstrb[1]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(p_0_in[3]),
        .O(\slv_reg7[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg7[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(s00_axi_wstrb[2]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(p_0_in[3]),
        .O(\slv_reg7[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg7[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(s00_axi_wstrb[3]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(p_0_in[3]),
        .O(\slv_reg7[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg7[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(p_0_in[3]),
        .O(\slv_reg7[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg7_reg[0] 
       (.C(clk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg7[0]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg7_reg[10] 
       (.C(clk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg7[10]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg7_reg[11] 
       (.C(clk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg7[11]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg7_reg[12] 
       (.C(clk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg7[12]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg7_reg[13] 
       (.C(clk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg7[13]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg7_reg[14] 
       (.C(clk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg7[14]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg7_reg[15] 
       (.C(clk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg7[15]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg7_reg[16] 
       (.C(clk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg7[16]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg7_reg[17] 
       (.C(clk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg7[17]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg7_reg[18] 
       (.C(clk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg7[18]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg7_reg[19] 
       (.C(clk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg7[19]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg7_reg[1] 
       (.C(clk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg7[1]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg7_reg[20] 
       (.C(clk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg7[20]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg7_reg[21] 
       (.C(clk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg7[21]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg7_reg[22] 
       (.C(clk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg7[22]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg7_reg[23] 
       (.C(clk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg7[23]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg7_reg[24] 
       (.C(clk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg7[24]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg7_reg[25] 
       (.C(clk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg7[25]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg7_reg[26] 
       (.C(clk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg7[26]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg7_reg[27] 
       (.C(clk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg7[27]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg7_reg[28] 
       (.C(clk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg7[28]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg7_reg[29] 
       (.C(clk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg7[29]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg7_reg[2] 
       (.C(clk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg7[2]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg7_reg[30] 
       (.C(clk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg7[30]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg7_reg[31] 
       (.C(clk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg7[31]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg7_reg[3] 
       (.C(clk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg7[3]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg7_reg[4] 
       (.C(clk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg7[4]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg7_reg[5] 
       (.C(clk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg7[5]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg7_reg[6] 
       (.C(clk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg7[6]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg7_reg[7] 
       (.C(clk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg7[7]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg7_reg[8] 
       (.C(clk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg7[8]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg7_reg[9] 
       (.C(clk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg7[9]),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg8[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[3]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .I5(s00_axi_wstrb[1]),
        .O(\slv_reg8[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg8[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[3]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .I5(s00_axi_wstrb[2]),
        .O(\slv_reg8[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg8[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[3]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .I5(s00_axi_wstrb[3]),
        .O(\slv_reg8[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg8[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[3]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .I5(s00_axi_wstrb[0]),
        .O(\slv_reg8[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg8_reg[0] 
       (.C(clk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg8[0]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg8_reg[10] 
       (.C(clk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg8[10]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg8_reg[11] 
       (.C(clk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg8[11]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg8_reg[12] 
       (.C(clk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg8[12]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg8_reg[13] 
       (.C(clk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg8[13]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg8_reg[14] 
       (.C(clk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg8[14]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg8_reg[15] 
       (.C(clk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg8[15]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg8_reg[16] 
       (.C(clk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg8[16]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg8_reg[17] 
       (.C(clk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg8[17]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg8_reg[18] 
       (.C(clk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg8[18]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg8_reg[19] 
       (.C(clk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg8[19]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg8_reg[1] 
       (.C(clk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg8[1]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg8_reg[20] 
       (.C(clk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg8[20]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg8_reg[21] 
       (.C(clk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg8[21]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg8_reg[22] 
       (.C(clk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg8[22]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg8_reg[23] 
       (.C(clk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg8[23]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg8_reg[24] 
       (.C(clk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg8[24]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg8_reg[25] 
       (.C(clk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg8[25]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg8_reg[26] 
       (.C(clk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg8[26]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg8_reg[27] 
       (.C(clk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg8[27]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg8_reg[28] 
       (.C(clk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg8[28]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg8_reg[29] 
       (.C(clk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg8[29]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg8_reg[2] 
       (.C(clk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg8[2]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg8_reg[30] 
       (.C(clk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg8[30]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg8_reg[31] 
       (.C(clk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg8[31]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg8_reg[3] 
       (.C(clk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg8[3]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg8_reg[4] 
       (.C(clk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg8[4]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg8_reg[5] 
       (.C(clk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg8[5]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg8_reg[6] 
       (.C(clk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg8[6]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg8_reg[7] 
       (.C(clk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg8[7]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg8_reg[8] 
       (.C(clk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg8[8]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg8_reg[9] 
       (.C(clk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg8[9]),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg9[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[3]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[1]),
        .I4(p_0_in[1]),
        .I5(p_0_in[2]),
        .O(\slv_reg9[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg9[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[3]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[2]),
        .I4(p_0_in[1]),
        .I5(p_0_in[2]),
        .O(\slv_reg9[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg9[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[3]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[3]),
        .I4(p_0_in[1]),
        .I5(p_0_in[2]),
        .O(\slv_reg9[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg9[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[3]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[0]),
        .I4(p_0_in[1]),
        .I5(p_0_in[2]),
        .O(\slv_reg9[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg9_reg[0] 
       (.C(clk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg9[0]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg9_reg[10] 
       (.C(clk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg9[10]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg9_reg[11] 
       (.C(clk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg9[11]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg9_reg[12] 
       (.C(clk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg9[12]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg9_reg[13] 
       (.C(clk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg9[13]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg9_reg[14] 
       (.C(clk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg9[14]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg9_reg[15] 
       (.C(clk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg9[15]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg9_reg[16] 
       (.C(clk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg9[16]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg9_reg[17] 
       (.C(clk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg9[17]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg9_reg[18] 
       (.C(clk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg9[18]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg9_reg[19] 
       (.C(clk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg9[19]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg9_reg[1] 
       (.C(clk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg9[1]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg9_reg[20] 
       (.C(clk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg9[20]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg9_reg[21] 
       (.C(clk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg9[21]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg9_reg[22] 
       (.C(clk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg9[22]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg9_reg[23] 
       (.C(clk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg9[23]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg9_reg[24] 
       (.C(clk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg9[24]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg9_reg[25] 
       (.C(clk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg9[25]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg9_reg[26] 
       (.C(clk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg9[26]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg9_reg[27] 
       (.C(clk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg9[27]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg9_reg[28] 
       (.C(clk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg9[28]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg9_reg[29] 
       (.C(clk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg9[29]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg9_reg[2] 
       (.C(clk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg9[2]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg9_reg[30] 
       (.C(clk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg9[30]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg9_reg[31] 
       (.C(clk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg9[31]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg9_reg[3] 
       (.C(clk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg9[3]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg9_reg[4] 
       (.C(clk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg9[4]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg9_reg[5] 
       (.C(clk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg9[5]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg9_reg[6] 
       (.C(clk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg9[6]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg9_reg[7] 
       (.C(clk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg9[7]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg9_reg[8] 
       (.C(clk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg9[8]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg9_reg[9] 
       (.C(clk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg9[9]),
        .R(axi_awready_i_1_n_0));
  LUT3 #(
    .INIT(8'h20)) 
    slv_reg_rden
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_rvalid),
        .I2(S_AXI_ARREADY),
        .O(slv_reg_rden__0));
endmodule

module bramController
   (dout,
    addr,
    D,
    \currState_reg[1]_0 ,
    \currState_reg[1]_1 ,
    bramEnable,
    clk,
    readData,
    \currState_reg[0]_0 ,
    out,
    \currInit_reg[0] ,
    \currState_reg[3]_0 ,
    outSwitch_INST_0_i_1,
    outSwitch_INST_0_i_2_0,
    outSwitch_INST_0_i_2_1,
    requestAddr_reg,
    resetN,
    currReq,
    \FSM_onehot_currState_reg[2] ,
    sigSizeWords);
  output [15:0]dout;
  output [13:0]addr;
  output [0:0]D;
  output \currState_reg[1]_0 ;
  output \currState_reg[1]_1 ;
  output bramEnable;
  input clk;
  input [31:0]readData;
  input \currState_reg[0]_0 ;
  input out;
  input \currInit_reg[0] ;
  input [2:0]\currState_reg[3]_0 ;
  input outSwitch_INST_0_i_1;
  input outSwitch_INST_0_i_2_0;
  input [0:0]outSwitch_INST_0_i_2_1;
  input [13:0]requestAddr_reg;
  input resetN;
  input [1:0]currReq;
  input \FSM_onehot_currState_reg[2] ;
  input [15:0]sigSizeWords;

  wire [0:0]D;
  wire \FSM_onehot_currState_reg[2] ;
  wire [13:0]addr;
  wire \addr[11]_i_2_n_0 ;
  wire \addr[11]_i_3_n_0 ;
  wire \addr[11]_i_4_n_0 ;
  wire \addr[11]_i_5_n_0 ;
  wire \addr[13]_i_1_n_0 ;
  wire \addr[13]_i_3_n_0 ;
  wire \addr[13]_i_4_n_0 ;
  wire \addr[3]_i_2_n_0 ;
  wire \addr[3]_i_3_n_0 ;
  wire \addr[3]_i_4_n_0 ;
  wire \addr[3]_i_5_n_0 ;
  wire \addr[3]_i_6_n_0 ;
  wire \addr[7]_i_2_n_0 ;
  wire \addr[7]_i_3_n_0 ;
  wire \addr[7]_i_4_n_0 ;
  wire \addr[7]_i_5_n_0 ;
  wire \addr_reg[11]_i_1_n_0 ;
  wire \addr_reg[11]_i_1_n_1 ;
  wire \addr_reg[11]_i_1_n_2 ;
  wire \addr_reg[11]_i_1_n_3 ;
  wire \addr_reg[11]_i_1_n_4 ;
  wire \addr_reg[11]_i_1_n_5 ;
  wire \addr_reg[11]_i_1_n_6 ;
  wire \addr_reg[11]_i_1_n_7 ;
  wire \addr_reg[13]_i_2_n_3 ;
  wire \addr_reg[13]_i_2_n_6 ;
  wire \addr_reg[13]_i_2_n_7 ;
  wire \addr_reg[3]_i_1_n_0 ;
  wire \addr_reg[3]_i_1_n_1 ;
  wire \addr_reg[3]_i_1_n_2 ;
  wire \addr_reg[3]_i_1_n_3 ;
  wire \addr_reg[3]_i_1_n_4 ;
  wire \addr_reg[3]_i_1_n_5 ;
  wire \addr_reg[3]_i_1_n_6 ;
  wire \addr_reg[3]_i_1_n_7 ;
  wire \addr_reg[7]_i_1_n_0 ;
  wire \addr_reg[7]_i_1_n_1 ;
  wire \addr_reg[7]_i_1_n_2 ;
  wire \addr_reg[7]_i_1_n_3 ;
  wire \addr_reg[7]_i_1_n_4 ;
  wire \addr_reg[7]_i_1_n_5 ;
  wire \addr_reg[7]_i_1_n_6 ;
  wire \addr_reg[7]_i_1_n_7 ;
  wire bramEnable;
  wire clk;
  wire \currInit_reg[0] ;
  wire [1:0]currReq;
  wire \currState[0]_i_2_n_0 ;
  wire \currState[1]_i_1__2_n_0 ;
  wire \currState[1]_i_2__0_n_0 ;
  wire \currState[2]_i_1__2_n_0 ;
  wire \currState_reg[0]_0 ;
  wire \currState_reg[1]_0 ;
  wire \currState_reg[1]_1 ;
  wire [2:0]\currState_reg[3]_0 ;
  wire \currState_reg_n_0_[0] ;
  wire \currState_reg_n_0_[1] ;
  wire \currState_reg_n_0_[2] ;
  wire [0:0]data3;
  wire [15:0]dataBRAM;
  wire [15:0]dout;
  wire \i[0]_i_3_n_0 ;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_6_n_0;
  wire i__carry__0_i_7_n_0;
  wire i__carry__0_i_8_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8_n_0;
  wire [15:0]i_reg;
  wire \i_reg[0]_i_2_n_0 ;
  wire \i_reg[0]_i_2_n_1 ;
  wire \i_reg[0]_i_2_n_2 ;
  wire \i_reg[0]_i_2_n_3 ;
  wire \i_reg[0]_i_2_n_4 ;
  wire \i_reg[0]_i_2_n_5 ;
  wire \i_reg[0]_i_2_n_6 ;
  wire \i_reg[0]_i_2_n_7 ;
  wire \i_reg[12]_i_1_n_1 ;
  wire \i_reg[12]_i_1_n_2 ;
  wire \i_reg[12]_i_1_n_3 ;
  wire \i_reg[12]_i_1_n_4 ;
  wire \i_reg[12]_i_1_n_5 ;
  wire \i_reg[12]_i_1_n_6 ;
  wire \i_reg[12]_i_1_n_7 ;
  wire \i_reg[4]_i_1_n_0 ;
  wire \i_reg[4]_i_1_n_1 ;
  wire \i_reg[4]_i_1_n_2 ;
  wire \i_reg[4]_i_1_n_3 ;
  wire \i_reg[4]_i_1_n_4 ;
  wire \i_reg[4]_i_1_n_5 ;
  wire \i_reg[4]_i_1_n_6 ;
  wire \i_reg[4]_i_1_n_7 ;
  wire \i_reg[8]_i_1_n_0 ;
  wire \i_reg[8]_i_1_n_1 ;
  wire \i_reg[8]_i_1_n_2 ;
  wire \i_reg[8]_i_1_n_3 ;
  wire \i_reg[8]_i_1_n_4 ;
  wire \i_reg[8]_i_1_n_5 ;
  wire \i_reg[8]_i_1_n_6 ;
  wire \i_reg[8]_i_1_n_7 ;
  wire [3:0]nextState;
  wire \nextState1_inferred__1/i__carry__0_n_0 ;
  wire \nextState1_inferred__1/i__carry__0_n_1 ;
  wire \nextState1_inferred__1/i__carry__0_n_2 ;
  wire \nextState1_inferred__1/i__carry__0_n_3 ;
  wire \nextState1_inferred__1/i__carry_n_0 ;
  wire \nextState1_inferred__1/i__carry_n_1 ;
  wire \nextState1_inferred__1/i__carry_n_2 ;
  wire \nextState1_inferred__1/i__carry_n_3 ;
  wire out;
  wire outSwitch_INST_0_i_1;
  wire outSwitch_INST_0_i_2_0;
  wire [0:0]outSwitch_INST_0_i_2_1;
  wire outSwitch_INST_0_i_4_n_0;
  wire outSwitch_INST_0_i_5_n_0;
  wire rd_rst_busy;
  wire read;
  wire [31:0]readData;
  wire [13:0]requestAddr_reg;
  wire resetN;
  wire sampleOut_INST_0_i_4_n_0;
  wire sampleOut_INST_0_i_5_n_0;
  wire sel;
  wire [15:0]sigSizeWords;
  wire [15:0]storedReads;
  wire \storedReads[15]_i_1_n_0 ;
  wire wr_en;
  wire wr_rst_busy;
  wire xpm_fifo_sync_inst_i_1_n_0;
  wire [3:1]\NLW_addr_reg[13]_i_2_CO_UNCONNECTED ;
  wire [3:2]\NLW_addr_reg[13]_i_2_O_UNCONNECTED ;
  wire [3:3]\NLW_i_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_nextState1_inferred__1/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_nextState1_inferred__1/i__carry__0_O_UNCONNECTED ;
  wire NLW_xpm_fifo_sync_inst_almost_empty_UNCONNECTED;
  wire NLW_xpm_fifo_sync_inst_almost_full_UNCONNECTED;
  wire NLW_xpm_fifo_sync_inst_data_valid_UNCONNECTED;
  wire NLW_xpm_fifo_sync_inst_dbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_sync_inst_empty_UNCONNECTED;
  wire NLW_xpm_fifo_sync_inst_full_UNCONNECTED;
  wire NLW_xpm_fifo_sync_inst_overflow_UNCONNECTED;
  wire NLW_xpm_fifo_sync_inst_prog_empty_UNCONNECTED;
  wire NLW_xpm_fifo_sync_inst_prog_full_UNCONNECTED;
  wire NLW_xpm_fifo_sync_inst_sbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_sync_inst_underflow_UNCONNECTED;
  wire NLW_xpm_fifo_sync_inst_wr_ack_UNCONNECTED;
  wire [0:0]NLW_xpm_fifo_sync_inst_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_xpm_fifo_sync_inst_wr_data_count_UNCONNECTED;

  LUT5 #(
    .INIT(32'hFFFE0002)) 
    \addr[11]_i_2 
       (.I0(requestAddr_reg[11]),
        .I1(\currState_reg_n_0_[0] ),
        .I2(\currState_reg_n_0_[1] ),
        .I3(\currState_reg_n_0_[2] ),
        .I4(addr[11]),
        .O(\addr[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0002)) 
    \addr[11]_i_3 
       (.I0(requestAddr_reg[10]),
        .I1(\currState_reg_n_0_[0] ),
        .I2(\currState_reg_n_0_[1] ),
        .I3(\currState_reg_n_0_[2] ),
        .I4(addr[10]),
        .O(\addr[11]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0002)) 
    \addr[11]_i_4 
       (.I0(requestAddr_reg[9]),
        .I1(\currState_reg_n_0_[0] ),
        .I2(\currState_reg_n_0_[1] ),
        .I3(\currState_reg_n_0_[2] ),
        .I4(addr[9]),
        .O(\addr[11]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0002)) 
    \addr[11]_i_5 
       (.I0(requestAddr_reg[8]),
        .I1(\currState_reg_n_0_[0] ),
        .I2(\currState_reg_n_0_[1] ),
        .I3(\currState_reg_n_0_[2] ),
        .I4(addr[8]),
        .O(\addr[11]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h81)) 
    \addr[13]_i_1 
       (.I0(\currState_reg_n_0_[0] ),
        .I1(\currState_reg_n_0_[1] ),
        .I2(\currState_reg_n_0_[2] ),
        .O(\addr[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0002)) 
    \addr[13]_i_3 
       (.I0(requestAddr_reg[13]),
        .I1(\currState_reg_n_0_[0] ),
        .I2(\currState_reg_n_0_[1] ),
        .I3(\currState_reg_n_0_[2] ),
        .I4(addr[13]),
        .O(\addr[13]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0002)) 
    \addr[13]_i_4 
       (.I0(requestAddr_reg[12]),
        .I1(\currState_reg_n_0_[0] ),
        .I2(\currState_reg_n_0_[1] ),
        .I3(\currState_reg_n_0_[2] ),
        .I4(addr[12]),
        .O(\addr[13]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0002)) 
    \addr[3]_i_2 
       (.I0(requestAddr_reg[0]),
        .I1(\currState_reg_n_0_[0] ),
        .I2(\currState_reg_n_0_[1] ),
        .I3(\currState_reg_n_0_[2] ),
        .I4(addr[0]),
        .O(\addr[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0002)) 
    \addr[3]_i_3 
       (.I0(requestAddr_reg[3]),
        .I1(\currState_reg_n_0_[0] ),
        .I2(\currState_reg_n_0_[1] ),
        .I3(\currState_reg_n_0_[2] ),
        .I4(addr[3]),
        .O(\addr[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0002)) 
    \addr[3]_i_4 
       (.I0(requestAddr_reg[2]),
        .I1(\currState_reg_n_0_[0] ),
        .I2(\currState_reg_n_0_[1] ),
        .I3(\currState_reg_n_0_[2] ),
        .I4(addr[2]),
        .O(\addr[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0002)) 
    \addr[3]_i_5 
       (.I0(requestAddr_reg[1]),
        .I1(\currState_reg_n_0_[0] ),
        .I2(\currState_reg_n_0_[1] ),
        .I3(\currState_reg_n_0_[2] ),
        .I4(addr[1]),
        .O(\addr[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h5555555C)) 
    \addr[3]_i_6 
       (.I0(addr[0]),
        .I1(requestAddr_reg[0]),
        .I2(\currState_reg_n_0_[2] ),
        .I3(\currState_reg_n_0_[1] ),
        .I4(\currState_reg_n_0_[0] ),
        .O(\addr[3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0002)) 
    \addr[7]_i_2 
       (.I0(requestAddr_reg[7]),
        .I1(\currState_reg_n_0_[0] ),
        .I2(\currState_reg_n_0_[1] ),
        .I3(\currState_reg_n_0_[2] ),
        .I4(addr[7]),
        .O(\addr[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0002)) 
    \addr[7]_i_3 
       (.I0(requestAddr_reg[6]),
        .I1(\currState_reg_n_0_[0] ),
        .I2(\currState_reg_n_0_[1] ),
        .I3(\currState_reg_n_0_[2] ),
        .I4(addr[6]),
        .O(\addr[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0002)) 
    \addr[7]_i_4 
       (.I0(requestAddr_reg[5]),
        .I1(\currState_reg_n_0_[0] ),
        .I2(\currState_reg_n_0_[1] ),
        .I3(\currState_reg_n_0_[2] ),
        .I4(addr[5]),
        .O(\addr[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0002)) 
    \addr[7]_i_5 
       (.I0(requestAddr_reg[4]),
        .I1(\currState_reg_n_0_[0] ),
        .I2(\currState_reg_n_0_[1] ),
        .I3(\currState_reg_n_0_[2] ),
        .I4(addr[4]),
        .O(\addr[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[0] 
       (.C(clk),
        .CE(\addr[13]_i_1_n_0 ),
        .D(\addr_reg[3]_i_1_n_7 ),
        .Q(addr[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[10] 
       (.C(clk),
        .CE(\addr[13]_i_1_n_0 ),
        .D(\addr_reg[11]_i_1_n_5 ),
        .Q(addr[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[11] 
       (.C(clk),
        .CE(\addr[13]_i_1_n_0 ),
        .D(\addr_reg[11]_i_1_n_4 ),
        .Q(addr[11]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \addr_reg[11]_i_1 
       (.CI(\addr_reg[7]_i_1_n_0 ),
        .CO({\addr_reg[11]_i_1_n_0 ,\addr_reg[11]_i_1_n_1 ,\addr_reg[11]_i_1_n_2 ,\addr_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\addr_reg[11]_i_1_n_4 ,\addr_reg[11]_i_1_n_5 ,\addr_reg[11]_i_1_n_6 ,\addr_reg[11]_i_1_n_7 }),
        .S({\addr[11]_i_2_n_0 ,\addr[11]_i_3_n_0 ,\addr[11]_i_4_n_0 ,\addr[11]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[12] 
       (.C(clk),
        .CE(\addr[13]_i_1_n_0 ),
        .D(\addr_reg[13]_i_2_n_7 ),
        .Q(addr[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[13] 
       (.C(clk),
        .CE(\addr[13]_i_1_n_0 ),
        .D(\addr_reg[13]_i_2_n_6 ),
        .Q(addr[13]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \addr_reg[13]_i_2 
       (.CI(\addr_reg[11]_i_1_n_0 ),
        .CO({\NLW_addr_reg[13]_i_2_CO_UNCONNECTED [3:1],\addr_reg[13]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_addr_reg[13]_i_2_O_UNCONNECTED [3:2],\addr_reg[13]_i_2_n_6 ,\addr_reg[13]_i_2_n_7 }),
        .S({1'b0,1'b0,\addr[13]_i_3_n_0 ,\addr[13]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[1] 
       (.C(clk),
        .CE(\addr[13]_i_1_n_0 ),
        .D(\addr_reg[3]_i_1_n_6 ),
        .Q(addr[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[2] 
       (.C(clk),
        .CE(\addr[13]_i_1_n_0 ),
        .D(\addr_reg[3]_i_1_n_5 ),
        .Q(addr[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[3] 
       (.C(clk),
        .CE(\addr[13]_i_1_n_0 ),
        .D(\addr_reg[3]_i_1_n_4 ),
        .Q(addr[3]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \addr_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\addr_reg[3]_i_1_n_0 ,\addr_reg[3]_i_1_n_1 ,\addr_reg[3]_i_1_n_2 ,\addr_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\addr[3]_i_2_n_0 }),
        .O({\addr_reg[3]_i_1_n_4 ,\addr_reg[3]_i_1_n_5 ,\addr_reg[3]_i_1_n_6 ,\addr_reg[3]_i_1_n_7 }),
        .S({\addr[3]_i_3_n_0 ,\addr[3]_i_4_n_0 ,\addr[3]_i_5_n_0 ,\addr[3]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[4] 
       (.C(clk),
        .CE(\addr[13]_i_1_n_0 ),
        .D(\addr_reg[7]_i_1_n_7 ),
        .Q(addr[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[5] 
       (.C(clk),
        .CE(\addr[13]_i_1_n_0 ),
        .D(\addr_reg[7]_i_1_n_6 ),
        .Q(addr[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[6] 
       (.C(clk),
        .CE(\addr[13]_i_1_n_0 ),
        .D(\addr_reg[7]_i_1_n_5 ),
        .Q(addr[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[7] 
       (.C(clk),
        .CE(\addr[13]_i_1_n_0 ),
        .D(\addr_reg[7]_i_1_n_4 ),
        .Q(addr[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \addr_reg[7]_i_1 
       (.CI(\addr_reg[3]_i_1_n_0 ),
        .CO({\addr_reg[7]_i_1_n_0 ,\addr_reg[7]_i_1_n_1 ,\addr_reg[7]_i_1_n_2 ,\addr_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\addr_reg[7]_i_1_n_4 ,\addr_reg[7]_i_1_n_5 ,\addr_reg[7]_i_1_n_6 ,\addr_reg[7]_i_1_n_7 }),
        .S({\addr[7]_i_2_n_0 ,\addr[7]_i_3_n_0 ,\addr[7]_i_4_n_0 ,\addr[7]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[8] 
       (.C(clk),
        .CE(\addr[13]_i_1_n_0 ),
        .D(\addr_reg[11]_i_1_n_7 ),
        .Q(addr[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg[9] 
       (.C(clk),
        .CE(\addr[13]_i_1_n_0 ),
        .D(\addr_reg[11]_i_1_n_6 ),
        .Q(addr[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h7C)) 
    bramEnable_INST_0
       (.I0(\currState_reg_n_0_[0] ),
        .I1(\currState_reg_n_0_[1] ),
        .I2(\currState_reg_n_0_[2] ),
        .O(bramEnable));
  LUT6 #(
    .INIT(64'h000005050F0FFC0C)) 
    \currInit[0]_i_1 
       (.I0(out),
        .I1(\currInit_reg[0] ),
        .I2(\currState_reg[3]_0 [2]),
        .I3(data3),
        .I4(\currState_reg[3]_0 [1]),
        .I5(\currState_reg[3]_0 [0]),
        .O(D));
  LUT6 #(
    .INIT(64'hACAFACAFACAFACAC)) 
    \currState[0]_i_1 
       (.I0(\currState_reg[0]_0 ),
        .I1(\currState[0]_i_2_n_0 ),
        .I2(data3),
        .I3(\currState_reg_n_0_[0] ),
        .I4(\currState_reg_n_0_[2] ),
        .I5(\currState_reg_n_0_[1] ),
        .O(nextState[0]));
  LUT6 #(
    .INIT(64'h000000000000EEE2)) 
    \currState[0]_i_2 
       (.I0(resetN),
        .I1(\currState_reg_n_0_[0] ),
        .I2(wr_rst_busy),
        .I3(rd_rst_busy),
        .I4(\currState_reg_n_0_[1] ),
        .I5(\currState_reg_n_0_[2] ),
        .O(\currState[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5100444451114444)) 
    \currState[1]_i_1__2 
       (.I0(data3),
        .I1(\currState_reg_n_0_[1] ),
        .I2(\nextState1_inferred__1/i__carry__0_n_0 ),
        .I3(\currState_reg_n_0_[2] ),
        .I4(\currState_reg_n_0_[0] ),
        .I5(\currState[1]_i_2__0_n_0 ),
        .O(\currState[1]_i_1__2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \currState[1]_i_2__0 
       (.I0(rd_rst_busy),
        .I1(wr_rst_busy),
        .O(\currState[1]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h1540)) 
    \currState[2]_i_1__2 
       (.I0(data3),
        .I1(\currState_reg_n_0_[0] ),
        .I2(\currState_reg_n_0_[1] ),
        .I3(\currState_reg_n_0_[2] ),
        .O(\currState[2]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h5555300055550000)) 
    \currState[3]_i_1 
       (.I0(\currState_reg[0]_0 ),
        .I1(\nextState1_inferred__1/i__carry__0_n_0 ),
        .I2(\currState_reg_n_0_[2] ),
        .I3(\currState_reg_n_0_[1] ),
        .I4(data3),
        .I5(\currState_reg_n_0_[0] ),
        .O(nextState[3]));
  FDRE #(
    .INIT(1'b0)) 
    \currState_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(nextState[0]),
        .Q(\currState_reg_n_0_[0] ),
        .R(xpm_fifo_sync_inst_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \currState_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\currState[1]_i_1__2_n_0 ),
        .Q(\currState_reg_n_0_[1] ),
        .R(xpm_fifo_sync_inst_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \currState_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\currState[2]_i_1__2_n_0 ),
        .Q(\currState_reg_n_0_[2] ),
        .R(xpm_fifo_sync_inst_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \currState_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(nextState[3]),
        .Q(data3),
        .R(xpm_fifo_sync_inst_i_1_n_0));
  LUT3 #(
    .INIT(8'h20)) 
    \i[0]_i_1 
       (.I0(\currState_reg_n_0_[2] ),
        .I1(\currState_reg_n_0_[0] ),
        .I2(\currState_reg_n_0_[1] ),
        .O(sel));
  LUT1 #(
    .INIT(2'h1)) 
    \i[0]_i_3 
       (.I0(i_reg[0]),
        .O(\i[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_1
       (.I0(storedReads[15]),
        .I1(i_reg[15]),
        .I2(storedReads[14]),
        .I3(i_reg[14]),
        .O(i__carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_2
       (.I0(storedReads[13]),
        .I1(i_reg[13]),
        .I2(storedReads[12]),
        .I3(i_reg[12]),
        .O(i__carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_3
       (.I0(storedReads[11]),
        .I1(i_reg[11]),
        .I2(storedReads[10]),
        .I3(i_reg[10]),
        .O(i__carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_4
       (.I0(storedReads[9]),
        .I1(i_reg[9]),
        .I2(storedReads[8]),
        .I3(i_reg[8]),
        .O(i__carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_5
       (.I0(i_reg[15]),
        .I1(storedReads[15]),
        .I2(i_reg[14]),
        .I3(storedReads[14]),
        .O(i__carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_6
       (.I0(i_reg[13]),
        .I1(storedReads[13]),
        .I2(i_reg[12]),
        .I3(storedReads[12]),
        .O(i__carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_7
       (.I0(i_reg[11]),
        .I1(storedReads[11]),
        .I2(i_reg[10]),
        .I3(storedReads[10]),
        .O(i__carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_8
       (.I0(i_reg[9]),
        .I1(storedReads[9]),
        .I2(i_reg[8]),
        .I3(storedReads[8]),
        .O(i__carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_1
       (.I0(storedReads[7]),
        .I1(i_reg[7]),
        .I2(storedReads[6]),
        .I3(i_reg[6]),
        .O(i__carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_2
       (.I0(storedReads[5]),
        .I1(i_reg[5]),
        .I2(storedReads[4]),
        .I3(i_reg[4]),
        .O(i__carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_3
       (.I0(storedReads[3]),
        .I1(i_reg[3]),
        .I2(storedReads[2]),
        .I3(i_reg[2]),
        .O(i__carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_4
       (.I0(storedReads[1]),
        .I1(i_reg[1]),
        .I2(storedReads[0]),
        .I3(i_reg[0]),
        .O(i__carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5
       (.I0(i_reg[7]),
        .I1(storedReads[7]),
        .I2(i_reg[6]),
        .I3(storedReads[6]),
        .O(i__carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6
       (.I0(i_reg[5]),
        .I1(storedReads[5]),
        .I2(i_reg[4]),
        .I3(storedReads[4]),
        .O(i__carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7
       (.I0(i_reg[3]),
        .I1(storedReads[3]),
        .I2(i_reg[2]),
        .I3(storedReads[2]),
        .O(i__carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8
       (.I0(i_reg[1]),
        .I1(storedReads[1]),
        .I2(i_reg[0]),
        .I3(storedReads[0]),
        .O(i__carry_i_8_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[0] 
       (.C(clk),
        .CE(sel),
        .D(\i_reg[0]_i_2_n_7 ),
        .Q(i_reg[0]),
        .R(xpm_fifo_sync_inst_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\i_reg[0]_i_2_n_0 ,\i_reg[0]_i_2_n_1 ,\i_reg[0]_i_2_n_2 ,\i_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\i_reg[0]_i_2_n_4 ,\i_reg[0]_i_2_n_5 ,\i_reg[0]_i_2_n_6 ,\i_reg[0]_i_2_n_7 }),
        .S({i_reg[3:1],\i[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[10] 
       (.C(clk),
        .CE(sel),
        .D(\i_reg[8]_i_1_n_5 ),
        .Q(i_reg[10]),
        .R(xpm_fifo_sync_inst_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[11] 
       (.C(clk),
        .CE(sel),
        .D(\i_reg[8]_i_1_n_4 ),
        .Q(i_reg[11]),
        .R(xpm_fifo_sync_inst_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[12] 
       (.C(clk),
        .CE(sel),
        .D(\i_reg[12]_i_1_n_7 ),
        .Q(i_reg[12]),
        .R(xpm_fifo_sync_inst_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_reg[12]_i_1 
       (.CI(\i_reg[8]_i_1_n_0 ),
        .CO({\NLW_i_reg[12]_i_1_CO_UNCONNECTED [3],\i_reg[12]_i_1_n_1 ,\i_reg[12]_i_1_n_2 ,\i_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_reg[12]_i_1_n_4 ,\i_reg[12]_i_1_n_5 ,\i_reg[12]_i_1_n_6 ,\i_reg[12]_i_1_n_7 }),
        .S(i_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[13] 
       (.C(clk),
        .CE(sel),
        .D(\i_reg[12]_i_1_n_6 ),
        .Q(i_reg[13]),
        .R(xpm_fifo_sync_inst_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[14] 
       (.C(clk),
        .CE(sel),
        .D(\i_reg[12]_i_1_n_5 ),
        .Q(i_reg[14]),
        .R(xpm_fifo_sync_inst_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[15] 
       (.C(clk),
        .CE(sel),
        .D(\i_reg[12]_i_1_n_4 ),
        .Q(i_reg[15]),
        .R(xpm_fifo_sync_inst_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[1] 
       (.C(clk),
        .CE(sel),
        .D(\i_reg[0]_i_2_n_6 ),
        .Q(i_reg[1]),
        .R(xpm_fifo_sync_inst_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[2] 
       (.C(clk),
        .CE(sel),
        .D(\i_reg[0]_i_2_n_5 ),
        .Q(i_reg[2]),
        .R(xpm_fifo_sync_inst_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[3] 
       (.C(clk),
        .CE(sel),
        .D(\i_reg[0]_i_2_n_4 ),
        .Q(i_reg[3]),
        .R(xpm_fifo_sync_inst_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[4] 
       (.C(clk),
        .CE(sel),
        .D(\i_reg[4]_i_1_n_7 ),
        .Q(i_reg[4]),
        .R(xpm_fifo_sync_inst_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_reg[4]_i_1 
       (.CI(\i_reg[0]_i_2_n_0 ),
        .CO({\i_reg[4]_i_1_n_0 ,\i_reg[4]_i_1_n_1 ,\i_reg[4]_i_1_n_2 ,\i_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_reg[4]_i_1_n_4 ,\i_reg[4]_i_1_n_5 ,\i_reg[4]_i_1_n_6 ,\i_reg[4]_i_1_n_7 }),
        .S(i_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[5] 
       (.C(clk),
        .CE(sel),
        .D(\i_reg[4]_i_1_n_6 ),
        .Q(i_reg[5]),
        .R(xpm_fifo_sync_inst_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[6] 
       (.C(clk),
        .CE(sel),
        .D(\i_reg[4]_i_1_n_5 ),
        .Q(i_reg[6]),
        .R(xpm_fifo_sync_inst_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[7] 
       (.C(clk),
        .CE(sel),
        .D(\i_reg[4]_i_1_n_4 ),
        .Q(i_reg[7]),
        .R(xpm_fifo_sync_inst_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[8] 
       (.C(clk),
        .CE(sel),
        .D(\i_reg[8]_i_1_n_7 ),
        .Q(i_reg[8]),
        .R(xpm_fifo_sync_inst_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \i_reg[8]_i_1 
       (.CI(\i_reg[4]_i_1_n_0 ),
        .CO({\i_reg[8]_i_1_n_0 ,\i_reg[8]_i_1_n_1 ,\i_reg[8]_i_1_n_2 ,\i_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_reg[8]_i_1_n_4 ,\i_reg[8]_i_1_n_5 ,\i_reg[8]_i_1_n_6 ,\i_reg[8]_i_1_n_7 }),
        .S(i_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[9] 
       (.C(clk),
        .CE(sel),
        .D(\i_reg[8]_i_1_n_6 ),
        .Q(i_reg[9]),
        .R(xpm_fifo_sync_inst_i_1_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \nextState1_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\nextState1_inferred__1/i__carry_n_0 ,\nextState1_inferred__1/i__carry_n_1 ,\nextState1_inferred__1/i__carry_n_2 ,\nextState1_inferred__1/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}),
        .O(\NLW_nextState1_inferred__1/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0,i__carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \nextState1_inferred__1/i__carry__0 
       (.CI(\nextState1_inferred__1/i__carry_n_0 ),
        .CO({\nextState1_inferred__1/i__carry__0_n_0 ,\nextState1_inferred__1/i__carry__0_n_1 ,\nextState1_inferred__1/i__carry__0_n_2 ,\nextState1_inferred__1/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}),
        .O(\NLW_nextState1_inferred__1/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_5_n_0,i__carry__0_i_6_n_0,i__carry__0_i_7_n_0,i__carry__0_i_8_n_0}));
  MUXF7 outSwitch_INST_0_i_2
       (.I0(outSwitch_INST_0_i_4_n_0),
        .I1(outSwitch_INST_0_i_5_n_0),
        .O(\currState_reg[1]_1 ),
        .S(outSwitch_INST_0_i_1));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    outSwitch_INST_0_i_4
       (.I0(dataBRAM[7]),
        .I1(dataBRAM[5]),
        .I2(outSwitch_INST_0_i_2_0),
        .I3(dataBRAM[3]),
        .I4(outSwitch_INST_0_i_2_1),
        .I5(dataBRAM[1]),
        .O(outSwitch_INST_0_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    outSwitch_INST_0_i_5
       (.I0(dataBRAM[15]),
        .I1(dataBRAM[13]),
        .I2(outSwitch_INST_0_i_2_0),
        .I3(dataBRAM[11]),
        .I4(outSwitch_INST_0_i_2_1),
        .I5(dataBRAM[9]),
        .O(outSwitch_INST_0_i_5_n_0));
  oneshot_4 readOS
       (.\FSM_onehot_currState_reg[2]_0 (\FSM_onehot_currState_reg[2] ),
        .clk(clk),
        .read(read));
  MUXF7 sampleOut_INST_0_i_2
       (.I0(sampleOut_INST_0_i_4_n_0),
        .I1(sampleOut_INST_0_i_5_n_0),
        .O(\currState_reg[1]_0 ),
        .S(outSwitch_INST_0_i_1));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sampleOut_INST_0_i_4
       (.I0(dataBRAM[6]),
        .I1(dataBRAM[4]),
        .I2(outSwitch_INST_0_i_2_0),
        .I3(dataBRAM[2]),
        .I4(outSwitch_INST_0_i_2_1),
        .I5(dataBRAM[0]),
        .O(sampleOut_INST_0_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sampleOut_INST_0_i_5
       (.I0(dataBRAM[14]),
        .I1(dataBRAM[12]),
        .I2(outSwitch_INST_0_i_2_0),
        .I3(dataBRAM[10]),
        .I4(outSwitch_INST_0_i_2_1),
        .I5(dataBRAM[8]),
        .O(sampleOut_INST_0_i_5_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    \storedReads[15]_i_1 
       (.I0(\currState_reg_n_0_[0] ),
        .I1(\currState_reg_n_0_[1] ),
        .I2(\currState_reg_n_0_[2] ),
        .O(\storedReads[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \storedReads_reg[0] 
       (.C(clk),
        .CE(\storedReads[15]_i_1_n_0 ),
        .D(sigSizeWords[0]),
        .Q(storedReads[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \storedReads_reg[10] 
       (.C(clk),
        .CE(\storedReads[15]_i_1_n_0 ),
        .D(sigSizeWords[10]),
        .Q(storedReads[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \storedReads_reg[11] 
       (.C(clk),
        .CE(\storedReads[15]_i_1_n_0 ),
        .D(sigSizeWords[11]),
        .Q(storedReads[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \storedReads_reg[12] 
       (.C(clk),
        .CE(\storedReads[15]_i_1_n_0 ),
        .D(sigSizeWords[12]),
        .Q(storedReads[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \storedReads_reg[13] 
       (.C(clk),
        .CE(\storedReads[15]_i_1_n_0 ),
        .D(sigSizeWords[13]),
        .Q(storedReads[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \storedReads_reg[14] 
       (.C(clk),
        .CE(\storedReads[15]_i_1_n_0 ),
        .D(sigSizeWords[14]),
        .Q(storedReads[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \storedReads_reg[15] 
       (.C(clk),
        .CE(\storedReads[15]_i_1_n_0 ),
        .D(sigSizeWords[15]),
        .Q(storedReads[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \storedReads_reg[1] 
       (.C(clk),
        .CE(\storedReads[15]_i_1_n_0 ),
        .D(sigSizeWords[1]),
        .Q(storedReads[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \storedReads_reg[2] 
       (.C(clk),
        .CE(\storedReads[15]_i_1_n_0 ),
        .D(sigSizeWords[2]),
        .Q(storedReads[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \storedReads_reg[3] 
       (.C(clk),
        .CE(\storedReads[15]_i_1_n_0 ),
        .D(sigSizeWords[3]),
        .Q(storedReads[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \storedReads_reg[4] 
       (.C(clk),
        .CE(\storedReads[15]_i_1_n_0 ),
        .D(sigSizeWords[4]),
        .Q(storedReads[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \storedReads_reg[5] 
       (.C(clk),
        .CE(\storedReads[15]_i_1_n_0 ),
        .D(sigSizeWords[5]),
        .Q(storedReads[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \storedReads_reg[6] 
       (.C(clk),
        .CE(\storedReads[15]_i_1_n_0 ),
        .D(sigSizeWords[6]),
        .Q(storedReads[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \storedReads_reg[7] 
       (.C(clk),
        .CE(\storedReads[15]_i_1_n_0 ),
        .D(sigSizeWords[7]),
        .Q(storedReads[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \storedReads_reg[8] 
       (.C(clk),
        .CE(\storedReads[15]_i_1_n_0 ),
        .D(sigSizeWords[8]),
        .Q(storedReads[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \storedReads_reg[9] 
       (.C(clk),
        .CE(\storedReads[15]_i_1_n_0 ),
        .D(sigSizeWords[9]),
        .Q(storedReads[9]),
        .R(1'b0));
  (* CASCADE_HEIGHT = "0" *) 
  (* DOUT_RESET_VALUE = "0" *) 
  (* ECC_MODE = "no_ecc" *) 
  (* EN_ADV_FEATURE_SYNC = "16'b0000000000000000" *) 
  (* FIFO_MEMORY_TYPE = "distributed" *) 
  (* FIFO_READ_LATENCY = "1" *) 
  (* FIFO_WRITE_DEPTH = "256" *) 
  (* FULL_RESET_VALUE = "0" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* PROG_EMPTY_THRESH = "10" *) 
  (* PROG_FULL_THRESH = "10" *) 
  (* P_COMMON_CLOCK = "1" *) 
  (* P_ECC_MODE = "0" *) 
  (* P_FIFO_MEMORY_TYPE = "1" *) 
  (* P_READ_MODE = "1" *) 
  (* P_WAKEUP_TIME = "2" *) 
  (* RD_DATA_COUNT_WIDTH = "1" *) 
  (* READ_DATA_WIDTH = "32" *) 
  (* READ_MODE = "fwft" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "0000" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH = "32" *) 
  (* WR_DATA_COUNT_WIDTH = "1" *) 
  (* XPM_MODULE = "TRUE" *) 
  xpm_fifo_sync xpm_fifo_sync_inst
       (.almost_empty(NLW_xpm_fifo_sync_inst_almost_empty_UNCONNECTED),
        .almost_full(NLW_xpm_fifo_sync_inst_almost_full_UNCONNECTED),
        .data_valid(NLW_xpm_fifo_sync_inst_data_valid_UNCONNECTED),
        .dbiterr(NLW_xpm_fifo_sync_inst_dbiterr_UNCONNECTED),
        .din(readData),
        .dout({dout,dataBRAM}),
        .empty(NLW_xpm_fifo_sync_inst_empty_UNCONNECTED),
        .full(NLW_xpm_fifo_sync_inst_full_UNCONNECTED),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(NLW_xpm_fifo_sync_inst_overflow_UNCONNECTED),
        .prog_empty(NLW_xpm_fifo_sync_inst_prog_empty_UNCONNECTED),
        .prog_full(NLW_xpm_fifo_sync_inst_prog_full_UNCONNECTED),
        .rd_data_count(NLW_xpm_fifo_sync_inst_rd_data_count_UNCONNECTED[0]),
        .rd_en(read),
        .rd_rst_busy(rd_rst_busy),
        .rst(xpm_fifo_sync_inst_i_1_n_0),
        .sbiterr(NLW_xpm_fifo_sync_inst_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .underflow(NLW_xpm_fifo_sync_inst_underflow_UNCONNECTED),
        .wr_ack(NLW_xpm_fifo_sync_inst_wr_ack_UNCONNECTED),
        .wr_clk(clk),
        .wr_data_count(NLW_xpm_fifo_sync_inst_wr_data_count_UNCONNECTED[0]),
        .wr_en(wr_en),
        .wr_rst_busy(wr_rst_busy));
  LUT6 #(
    .INIT(64'hEFEFEFEEFFFFFFFF)) 
    xpm_fifo_sync_inst_i_1
       (.I0(currReq[0]),
        .I1(currReq[1]),
        .I2(\currState_reg[3]_0 [2]),
        .I3(\currState_reg[3]_0 [0]),
        .I4(\currState_reg[3]_0 [1]),
        .I5(resetN),
        .O(xpm_fifo_sync_inst_i_1_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    xpm_fifo_sync_inst_i_2
       (.I0(\currState_reg_n_0_[2] ),
        .I1(\currState_reg_n_0_[1] ),
        .I2(\currState_reg_n_0_[0] ),
        .O(wr_en));
endmodule

module clkUnit
   (clkOut,
    \currInit_reg[2] ,
    clk,
    playbackRate,
    out);
  output clkOut;
  output \currInit_reg[2] ;
  input clk;
  input [22:0]playbackRate;
  input [2:0]out;

  wire clk;
  wire clkOut;
  wire clkOut_i_1__0_n_0;
  wire count0_carry__0_i_1__0_n_0;
  wire count0_carry__0_i_2__0_n_0;
  wire count0_carry__0_i_3__0_n_0;
  wire count0_carry__0_i_4__0_n_0;
  wire count0_carry__0_n_0;
  wire count0_carry__0_n_1;
  wire count0_carry__0_n_2;
  wire count0_carry__0_n_3;
  wire count0_carry_i_1__0_n_0;
  wire count0_carry_i_2__0_n_0;
  wire count0_carry_i_3__0_n_0;
  wire count0_carry_i_4__0_n_0;
  wire count0_carry_n_0;
  wire count0_carry_n_1;
  wire count0_carry_n_2;
  wire count0_carry_n_3;
  wire \count[0]_i_1_n_0 ;
  wire \count[0]_i_3__0_n_0 ;
  wire [22:0]count_reg;
  wire \count_reg[0]_i_2__0_n_0 ;
  wire \count_reg[0]_i_2__0_n_1 ;
  wire \count_reg[0]_i_2__0_n_2 ;
  wire \count_reg[0]_i_2__0_n_3 ;
  wire \count_reg[0]_i_2__0_n_4 ;
  wire \count_reg[0]_i_2__0_n_5 ;
  wire \count_reg[0]_i_2__0_n_6 ;
  wire \count_reg[0]_i_2__0_n_7 ;
  wire \count_reg[12]_i_1__0_n_0 ;
  wire \count_reg[12]_i_1__0_n_1 ;
  wire \count_reg[12]_i_1__0_n_2 ;
  wire \count_reg[12]_i_1__0_n_3 ;
  wire \count_reg[12]_i_1__0_n_4 ;
  wire \count_reg[12]_i_1__0_n_5 ;
  wire \count_reg[12]_i_1__0_n_6 ;
  wire \count_reg[12]_i_1__0_n_7 ;
  wire \count_reg[16]_i_1__0_n_0 ;
  wire \count_reg[16]_i_1__0_n_1 ;
  wire \count_reg[16]_i_1__0_n_2 ;
  wire \count_reg[16]_i_1__0_n_3 ;
  wire \count_reg[16]_i_1__0_n_4 ;
  wire \count_reg[16]_i_1__0_n_5 ;
  wire \count_reg[16]_i_1__0_n_6 ;
  wire \count_reg[16]_i_1__0_n_7 ;
  wire \count_reg[20]_i_1__0_n_2 ;
  wire \count_reg[20]_i_1__0_n_3 ;
  wire \count_reg[20]_i_1__0_n_5 ;
  wire \count_reg[20]_i_1__0_n_6 ;
  wire \count_reg[20]_i_1__0_n_7 ;
  wire \count_reg[4]_i_1__0_n_0 ;
  wire \count_reg[4]_i_1__0_n_1 ;
  wire \count_reg[4]_i_1__0_n_2 ;
  wire \count_reg[4]_i_1__0_n_3 ;
  wire \count_reg[4]_i_1__0_n_4 ;
  wire \count_reg[4]_i_1__0_n_5 ;
  wire \count_reg[4]_i_1__0_n_6 ;
  wire \count_reg[4]_i_1__0_n_7 ;
  wire \count_reg[8]_i_1__0_n_0 ;
  wire \count_reg[8]_i_1__0_n_1 ;
  wire \count_reg[8]_i_1__0_n_2 ;
  wire \count_reg[8]_i_1__0_n_3 ;
  wire \count_reg[8]_i_1__0_n_4 ;
  wire \count_reg[8]_i_1__0_n_5 ;
  wire \count_reg[8]_i_1__0_n_6 ;
  wire \count_reg[8]_i_1__0_n_7 ;
  wire \currInit_reg[2] ;
  wire goal0_carry__0_i_1__0_n_0;
  wire goal0_carry__0_i_2_n_0;
  wire goal0_carry__0_i_3__0_n_0;
  wire goal0_carry__0_i_4__0_n_0;
  wire goal0_carry__0_n_0;
  wire goal0_carry__0_n_1;
  wire goal0_carry__0_n_2;
  wire goal0_carry__0_n_3;
  wire goal0_carry__0_n_4;
  wire goal0_carry__0_n_5;
  wire goal0_carry__0_n_6;
  wire goal0_carry__0_n_7;
  wire goal0_carry__1_i_1__0_n_0;
  wire goal0_carry__1_i_2__0_n_0;
  wire goal0_carry__1_i_3_n_0;
  wire goal0_carry__1_i_4__0_n_0;
  wire goal0_carry__1_n_0;
  wire goal0_carry__1_n_1;
  wire goal0_carry__1_n_2;
  wire goal0_carry__1_n_3;
  wire goal0_carry__1_n_4;
  wire goal0_carry__1_n_5;
  wire goal0_carry__1_n_6;
  wire goal0_carry__1_n_7;
  wire goal0_carry__2_i_1_n_0;
  wire goal0_carry__2_i_2__0_n_0;
  wire goal0_carry__2_i_3__0_n_0;
  wire goal0_carry__2_i_4_n_0;
  wire goal0_carry__2_n_0;
  wire goal0_carry__2_n_1;
  wire goal0_carry__2_n_2;
  wire goal0_carry__2_n_3;
  wire goal0_carry__2_n_4;
  wire goal0_carry__2_n_5;
  wire goal0_carry__2_n_6;
  wire goal0_carry__2_n_7;
  wire goal0_carry__3_i_1__0_n_0;
  wire goal0_carry__3_i_2_n_0;
  wire goal0_carry__3_i_3__0_n_0;
  wire goal0_carry__3_i_4__0_n_0;
  wire goal0_carry__3_n_0;
  wire goal0_carry__3_n_1;
  wire goal0_carry__3_n_2;
  wire goal0_carry__3_n_3;
  wire goal0_carry__3_n_4;
  wire goal0_carry__3_n_5;
  wire goal0_carry__3_n_6;
  wire goal0_carry__3_n_7;
  wire goal0_carry__4_i_1_n_0;
  wire goal0_carry__4_i_2_n_0;
  wire goal0_carry__4_n_3;
  wire goal0_carry__4_n_6;
  wire goal0_carry__4_n_7;
  wire goal0_carry_i_1_n_0;
  wire goal0_carry_i_2__0_n_0;
  wire goal0_carry_i_3__0_n_0;
  wire goal0_carry_i_4_n_0;
  wire goal0_carry_n_0;
  wire goal0_carry_n_1;
  wire goal0_carry_n_2;
  wire goal0_carry_n_3;
  wire goal0_carry_n_4;
  wire goal0_carry_n_5;
  wire goal0_carry_n_6;
  wire goal0_carry_n_7;
  wire \goal[0]_i_1__0_n_0 ;
  wire \goal[22]_i_1__0_n_0 ;
  wire \goal[22]_i_3__0_n_0 ;
  wire \goal[22]_i_4__0_n_0 ;
  wire \goal[22]_i_5__0_n_0 ;
  wire \goal[22]_i_6__0_n_0 ;
  wire \goal[22]_i_7_n_0 ;
  wire \goal_reg_n_0_[0] ;
  wire \goal_reg_n_0_[10] ;
  wire \goal_reg_n_0_[11] ;
  wire \goal_reg_n_0_[12] ;
  wire \goal_reg_n_0_[13] ;
  wire \goal_reg_n_0_[14] ;
  wire \goal_reg_n_0_[15] ;
  wire \goal_reg_n_0_[16] ;
  wire \goal_reg_n_0_[17] ;
  wire \goal_reg_n_0_[18] ;
  wire \goal_reg_n_0_[19] ;
  wire \goal_reg_n_0_[1] ;
  wire \goal_reg_n_0_[20] ;
  wire \goal_reg_n_0_[21] ;
  wire \goal_reg_n_0_[22] ;
  wire \goal_reg_n_0_[2] ;
  wire \goal_reg_n_0_[3] ;
  wire \goal_reg_n_0_[4] ;
  wire \goal_reg_n_0_[5] ;
  wire \goal_reg_n_0_[6] ;
  wire \goal_reg_n_0_[7] ;
  wire \goal_reg_n_0_[8] ;
  wire \goal_reg_n_0_[9] ;
  wire [2:0]out;
  wire [22:0]playbackRate;
  wire [3:0]NLW_count0_carry_O_UNCONNECTED;
  wire [3:0]NLW_count0_carry__0_O_UNCONNECTED;
  wire [3:2]\NLW_count_reg[20]_i_1__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_count_reg[20]_i_1__0_O_UNCONNECTED ;
  wire [3:1]NLW_goal0_carry__4_CO_UNCONNECTED;
  wire [3:2]NLW_goal0_carry__4_O_UNCONNECTED;

  LUT5 #(
    .INIT(32'h6666FFF6)) 
    clkOut_i_1__0
       (.I0(clkOut),
        .I1(count0_carry__0_n_0),
        .I2(out[1]),
        .I3(out[0]),
        .I4(out[2]),
        .O(clkOut_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clkOut_reg
       (.C(clk),
        .CE(1'b1),
        .D(clkOut_i_1__0_n_0),
        .Q(clkOut),
        .R(1'b0));
  CARRY4 count0_carry
       (.CI(1'b0),
        .CO({count0_carry_n_0,count0_carry_n_1,count0_carry_n_2,count0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_count0_carry_O_UNCONNECTED[3:0]),
        .S({count0_carry_i_1__0_n_0,count0_carry_i_2__0_n_0,count0_carry_i_3__0_n_0,count0_carry_i_4__0_n_0}));
  CARRY4 count0_carry__0
       (.CI(count0_carry_n_0),
        .CO({count0_carry__0_n_0,count0_carry__0_n_1,count0_carry__0_n_2,count0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_count0_carry__0_O_UNCONNECTED[3:0]),
        .S({count0_carry__0_i_1__0_n_0,count0_carry__0_i_2__0_n_0,count0_carry__0_i_3__0_n_0,count0_carry__0_i_4__0_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    count0_carry__0_i_1__0
       (.I0(\goal_reg_n_0_[22] ),
        .I1(count_reg[22]),
        .I2(\goal_reg_n_0_[21] ),
        .I3(count_reg[21]),
        .O(count0_carry__0_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    count0_carry__0_i_2__0
       (.I0(count_reg[18]),
        .I1(\goal_reg_n_0_[18] ),
        .I2(count_reg[19]),
        .I3(\goal_reg_n_0_[19] ),
        .I4(\goal_reg_n_0_[20] ),
        .I5(count_reg[20]),
        .O(count0_carry__0_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    count0_carry__0_i_3__0
       (.I0(count_reg[15]),
        .I1(\goal_reg_n_0_[15] ),
        .I2(count_reg[16]),
        .I3(\goal_reg_n_0_[16] ),
        .I4(\goal_reg_n_0_[17] ),
        .I5(count_reg[17]),
        .O(count0_carry__0_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    count0_carry__0_i_4__0
       (.I0(count_reg[12]),
        .I1(\goal_reg_n_0_[12] ),
        .I2(count_reg[13]),
        .I3(\goal_reg_n_0_[13] ),
        .I4(\goal_reg_n_0_[14] ),
        .I5(count_reg[14]),
        .O(count0_carry__0_i_4__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    count0_carry_i_1__0
       (.I0(count_reg[9]),
        .I1(\goal_reg_n_0_[9] ),
        .I2(count_reg[10]),
        .I3(\goal_reg_n_0_[10] ),
        .I4(\goal_reg_n_0_[11] ),
        .I5(count_reg[11]),
        .O(count0_carry_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    count0_carry_i_2__0
       (.I0(count_reg[6]),
        .I1(\goal_reg_n_0_[6] ),
        .I2(count_reg[7]),
        .I3(\goal_reg_n_0_[7] ),
        .I4(\goal_reg_n_0_[8] ),
        .I5(count_reg[8]),
        .O(count0_carry_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    count0_carry_i_3__0
       (.I0(count_reg[3]),
        .I1(\goal_reg_n_0_[3] ),
        .I2(count_reg[4]),
        .I3(\goal_reg_n_0_[4] ),
        .I4(\goal_reg_n_0_[5] ),
        .I5(count_reg[5]),
        .O(count0_carry_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    count0_carry_i_4__0
       (.I0(count_reg[1]),
        .I1(\goal_reg_n_0_[1] ),
        .I2(count_reg[0]),
        .I3(\goal_reg_n_0_[0] ),
        .I4(\goal_reg_n_0_[2] ),
        .I5(count_reg[2]),
        .O(count0_carry_i_4__0_n_0));
  LUT4 #(
    .INIT(16'hAAFE)) 
    \count[0]_i_1 
       (.I0(count0_carry__0_n_0),
        .I1(out[1]),
        .I2(out[0]),
        .I3(out[2]),
        .O(\count[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_3__0 
       (.I0(count_reg[0]),
        .O(\count[0]_i_3__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[0]_i_2__0_n_7 ),
        .Q(count_reg[0]),
        .R(\count[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[0]_i_2__0 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_2__0_n_0 ,\count_reg[0]_i_2__0_n_1 ,\count_reg[0]_i_2__0_n_2 ,\count_reg[0]_i_2__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_reg[0]_i_2__0_n_4 ,\count_reg[0]_i_2__0_n_5 ,\count_reg[0]_i_2__0_n_6 ,\count_reg[0]_i_2__0_n_7 }),
        .S({count_reg[3:1],\count[0]_i_3__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[8]_i_1__0_n_5 ),
        .Q(count_reg[10]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[8]_i_1__0_n_4 ),
        .Q(count_reg[11]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[12]_i_1__0_n_7 ),
        .Q(count_reg[12]),
        .R(\count[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[12]_i_1__0 
       (.CI(\count_reg[8]_i_1__0_n_0 ),
        .CO({\count_reg[12]_i_1__0_n_0 ,\count_reg[12]_i_1__0_n_1 ,\count_reg[12]_i_1__0_n_2 ,\count_reg[12]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[12]_i_1__0_n_4 ,\count_reg[12]_i_1__0_n_5 ,\count_reg[12]_i_1__0_n_6 ,\count_reg[12]_i_1__0_n_7 }),
        .S(count_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[12]_i_1__0_n_6 ),
        .Q(count_reg[13]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[12]_i_1__0_n_5 ),
        .Q(count_reg[14]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[12]_i_1__0_n_4 ),
        .Q(count_reg[15]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[16]_i_1__0_n_7 ),
        .Q(count_reg[16]),
        .R(\count[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[16]_i_1__0 
       (.CI(\count_reg[12]_i_1__0_n_0 ),
        .CO({\count_reg[16]_i_1__0_n_0 ,\count_reg[16]_i_1__0_n_1 ,\count_reg[16]_i_1__0_n_2 ,\count_reg[16]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[16]_i_1__0_n_4 ,\count_reg[16]_i_1__0_n_5 ,\count_reg[16]_i_1__0_n_6 ,\count_reg[16]_i_1__0_n_7 }),
        .S(count_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[16]_i_1__0_n_6 ),
        .Q(count_reg[17]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[16]_i_1__0_n_5 ),
        .Q(count_reg[18]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[16]_i_1__0_n_4 ),
        .Q(count_reg[19]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[0]_i_2__0_n_6 ),
        .Q(count_reg[1]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[20]_i_1__0_n_7 ),
        .Q(count_reg[20]),
        .R(\count[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[20]_i_1__0 
       (.CI(\count_reg[16]_i_1__0_n_0 ),
        .CO({\NLW_count_reg[20]_i_1__0_CO_UNCONNECTED [3:2],\count_reg[20]_i_1__0_n_2 ,\count_reg[20]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_reg[20]_i_1__0_O_UNCONNECTED [3],\count_reg[20]_i_1__0_n_5 ,\count_reg[20]_i_1__0_n_6 ,\count_reg[20]_i_1__0_n_7 }),
        .S({1'b0,count_reg[22:20]}));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[20]_i_1__0_n_6 ),
        .Q(count_reg[21]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[20]_i_1__0_n_5 ),
        .Q(count_reg[22]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[0]_i_2__0_n_5 ),
        .Q(count_reg[2]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[0]_i_2__0_n_4 ),
        .Q(count_reg[3]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[4]_i_1__0_n_7 ),
        .Q(count_reg[4]),
        .R(\count[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[4]_i_1__0 
       (.CI(\count_reg[0]_i_2__0_n_0 ),
        .CO({\count_reg[4]_i_1__0_n_0 ,\count_reg[4]_i_1__0_n_1 ,\count_reg[4]_i_1__0_n_2 ,\count_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_1__0_n_4 ,\count_reg[4]_i_1__0_n_5 ,\count_reg[4]_i_1__0_n_6 ,\count_reg[4]_i_1__0_n_7 }),
        .S(count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[4]_i_1__0_n_6 ),
        .Q(count_reg[5]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[4]_i_1__0_n_5 ),
        .Q(count_reg[6]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[4]_i_1__0_n_4 ),
        .Q(count_reg[7]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[8]_i_1__0_n_7 ),
        .Q(count_reg[8]),
        .R(\count[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[8]_i_1__0 
       (.CI(\count_reg[4]_i_1__0_n_0 ),
        .CO({\count_reg[8]_i_1__0_n_0 ,\count_reg[8]_i_1__0_n_1 ,\count_reg[8]_i_1__0_n_2 ,\count_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_1__0_n_4 ,\count_reg[8]_i_1__0_n_5 ,\count_reg[8]_i_1__0_n_6 ,\count_reg[8]_i_1__0_n_7 }),
        .S(count_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[8]_i_1__0_n_6 ),
        .Q(count_reg[9]),
        .R(\count[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 goal0_carry
       (.CI(1'b0),
        .CO({goal0_carry_n_0,goal0_carry_n_1,goal0_carry_n_2,goal0_carry_n_3}),
        .CYINIT(playbackRate[0]),
        .DI(playbackRate[4:1]),
        .O({goal0_carry_n_4,goal0_carry_n_5,goal0_carry_n_6,goal0_carry_n_7}),
        .S({goal0_carry_i_1_n_0,goal0_carry_i_2__0_n_0,goal0_carry_i_3__0_n_0,goal0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 goal0_carry__0
       (.CI(goal0_carry_n_0),
        .CO({goal0_carry__0_n_0,goal0_carry__0_n_1,goal0_carry__0_n_2,goal0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(playbackRate[8:5]),
        .O({goal0_carry__0_n_4,goal0_carry__0_n_5,goal0_carry__0_n_6,goal0_carry__0_n_7}),
        .S({goal0_carry__0_i_1__0_n_0,goal0_carry__0_i_2_n_0,goal0_carry__0_i_3__0_n_0,goal0_carry__0_i_4__0_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    goal0_carry__0_i_1__0
       (.I0(playbackRate[8]),
        .O(goal0_carry__0_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    goal0_carry__0_i_2
       (.I0(playbackRate[7]),
        .O(goal0_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    goal0_carry__0_i_3__0
       (.I0(playbackRate[6]),
        .O(goal0_carry__0_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    goal0_carry__0_i_4__0
       (.I0(playbackRate[5]),
        .O(goal0_carry__0_i_4__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 goal0_carry__1
       (.CI(goal0_carry__0_n_0),
        .CO({goal0_carry__1_n_0,goal0_carry__1_n_1,goal0_carry__1_n_2,goal0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(playbackRate[12:9]),
        .O({goal0_carry__1_n_4,goal0_carry__1_n_5,goal0_carry__1_n_6,goal0_carry__1_n_7}),
        .S({goal0_carry__1_i_1__0_n_0,goal0_carry__1_i_2__0_n_0,goal0_carry__1_i_3_n_0,goal0_carry__1_i_4__0_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    goal0_carry__1_i_1__0
       (.I0(playbackRate[12]),
        .O(goal0_carry__1_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    goal0_carry__1_i_2__0
       (.I0(playbackRate[11]),
        .O(goal0_carry__1_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    goal0_carry__1_i_3
       (.I0(playbackRate[10]),
        .O(goal0_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    goal0_carry__1_i_4__0
       (.I0(playbackRate[9]),
        .O(goal0_carry__1_i_4__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 goal0_carry__2
       (.CI(goal0_carry__1_n_0),
        .CO({goal0_carry__2_n_0,goal0_carry__2_n_1,goal0_carry__2_n_2,goal0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(playbackRate[16:13]),
        .O({goal0_carry__2_n_4,goal0_carry__2_n_5,goal0_carry__2_n_6,goal0_carry__2_n_7}),
        .S({goal0_carry__2_i_1_n_0,goal0_carry__2_i_2__0_n_0,goal0_carry__2_i_3__0_n_0,goal0_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    goal0_carry__2_i_1
       (.I0(playbackRate[16]),
        .O(goal0_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    goal0_carry__2_i_2__0
       (.I0(playbackRate[15]),
        .O(goal0_carry__2_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    goal0_carry__2_i_3__0
       (.I0(playbackRate[14]),
        .O(goal0_carry__2_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    goal0_carry__2_i_4
       (.I0(playbackRate[13]),
        .O(goal0_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 goal0_carry__3
       (.CI(goal0_carry__2_n_0),
        .CO({goal0_carry__3_n_0,goal0_carry__3_n_1,goal0_carry__3_n_2,goal0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(playbackRate[20:17]),
        .O({goal0_carry__3_n_4,goal0_carry__3_n_5,goal0_carry__3_n_6,goal0_carry__3_n_7}),
        .S({goal0_carry__3_i_1__0_n_0,goal0_carry__3_i_2_n_0,goal0_carry__3_i_3__0_n_0,goal0_carry__3_i_4__0_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    goal0_carry__3_i_1__0
       (.I0(playbackRate[20]),
        .O(goal0_carry__3_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    goal0_carry__3_i_2
       (.I0(playbackRate[19]),
        .O(goal0_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    goal0_carry__3_i_3__0
       (.I0(playbackRate[18]),
        .O(goal0_carry__3_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    goal0_carry__3_i_4__0
       (.I0(playbackRate[17]),
        .O(goal0_carry__3_i_4__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 goal0_carry__4
       (.CI(goal0_carry__3_n_0),
        .CO({NLW_goal0_carry__4_CO_UNCONNECTED[3:1],goal0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,playbackRate[21]}),
        .O({NLW_goal0_carry__4_O_UNCONNECTED[3:2],goal0_carry__4_n_6,goal0_carry__4_n_7}),
        .S({1'b0,1'b0,goal0_carry__4_i_1_n_0,goal0_carry__4_i_2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    goal0_carry__4_i_1
       (.I0(playbackRate[22]),
        .O(goal0_carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    goal0_carry__4_i_2
       (.I0(playbackRate[21]),
        .O(goal0_carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    goal0_carry_i_1
       (.I0(playbackRate[4]),
        .O(goal0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    goal0_carry_i_2__0
       (.I0(playbackRate[3]),
        .O(goal0_carry_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    goal0_carry_i_3__0
       (.I0(playbackRate[2]),
        .O(goal0_carry_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    goal0_carry_i_4
       (.I0(playbackRate[1]),
        .O(goal0_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    \goal[0]_i_1__0 
       (.I0(playbackRate[14]),
        .I1(playbackRate[19]),
        .I2(playbackRate[12]),
        .I3(\goal[22]_i_3__0_n_0 ),
        .I4(\goal[22]_i_4__0_n_0 ),
        .I5(playbackRate[0]),
        .O(\goal[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \goal[22]_i_1__0 
       (.I0(playbackRate[14]),
        .I1(playbackRate[19]),
        .I2(playbackRate[12]),
        .I3(\goal[22]_i_3__0_n_0 ),
        .I4(\currInit_reg[2] ),
        .I5(\goal[22]_i_4__0_n_0 ),
        .O(\goal[22]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h54)) 
    \goal[22]_i_2__0 
       (.I0(out[2]),
        .I1(out[0]),
        .I2(out[1]),
        .O(\currInit_reg[2] ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \goal[22]_i_3__0 
       (.I0(playbackRate[13]),
        .I1(playbackRate[5]),
        .I2(playbackRate[2]),
        .I3(playbackRate[11]),
        .O(\goal[22]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \goal[22]_i_4__0 
       (.I0(\goal[22]_i_5__0_n_0 ),
        .I1(playbackRate[3]),
        .I2(playbackRate[17]),
        .I3(playbackRate[21]),
        .I4(playbackRate[8]),
        .I5(\goal[22]_i_6__0_n_0 ),
        .O(\goal[22]_i_4__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \goal[22]_i_5__0 
       (.I0(playbackRate[0]),
        .I1(playbackRate[18]),
        .I2(playbackRate[16]),
        .I3(playbackRate[1]),
        .O(\goal[22]_i_5__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \goal[22]_i_6__0 
       (.I0(playbackRate[6]),
        .I1(playbackRate[22]),
        .I2(playbackRate[20]),
        .I3(playbackRate[7]),
        .I4(\goal[22]_i_7_n_0 ),
        .O(\goal[22]_i_6__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \goal[22]_i_7 
       (.I0(playbackRate[10]),
        .I1(playbackRate[9]),
        .I2(playbackRate[4]),
        .I3(playbackRate[15]),
        .O(\goal[22]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \goal_reg[0] 
       (.C(clk),
        .CE(\currInit_reg[2] ),
        .D(\goal[0]_i_1__0_n_0 ),
        .Q(\goal_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goal_reg[10] 
       (.C(clk),
        .CE(\currInit_reg[2] ),
        .D(goal0_carry__1_n_6),
        .Q(\goal_reg_n_0_[10] ),
        .R(\goal[22]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \goal_reg[11] 
       (.C(clk),
        .CE(\currInit_reg[2] ),
        .D(goal0_carry__1_n_5),
        .Q(\goal_reg_n_0_[11] ),
        .R(\goal[22]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \goal_reg[12] 
       (.C(clk),
        .CE(\currInit_reg[2] ),
        .D(goal0_carry__1_n_4),
        .Q(\goal_reg_n_0_[12] ),
        .R(\goal[22]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \goal_reg[13] 
       (.C(clk),
        .CE(\currInit_reg[2] ),
        .D(goal0_carry__2_n_7),
        .Q(\goal_reg_n_0_[13] ),
        .R(\goal[22]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \goal_reg[14] 
       (.C(clk),
        .CE(\currInit_reg[2] ),
        .D(goal0_carry__2_n_6),
        .Q(\goal_reg_n_0_[14] ),
        .R(\goal[22]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \goal_reg[15] 
       (.C(clk),
        .CE(\currInit_reg[2] ),
        .D(goal0_carry__2_n_5),
        .Q(\goal_reg_n_0_[15] ),
        .R(\goal[22]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \goal_reg[16] 
       (.C(clk),
        .CE(\currInit_reg[2] ),
        .D(goal0_carry__2_n_4),
        .Q(\goal_reg_n_0_[16] ),
        .R(\goal[22]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \goal_reg[17] 
       (.C(clk),
        .CE(\currInit_reg[2] ),
        .D(goal0_carry__3_n_7),
        .Q(\goal_reg_n_0_[17] ),
        .R(\goal[22]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \goal_reg[18] 
       (.C(clk),
        .CE(\currInit_reg[2] ),
        .D(goal0_carry__3_n_6),
        .Q(\goal_reg_n_0_[18] ),
        .R(\goal[22]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \goal_reg[19] 
       (.C(clk),
        .CE(\currInit_reg[2] ),
        .D(goal0_carry__3_n_5),
        .Q(\goal_reg_n_0_[19] ),
        .R(\goal[22]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \goal_reg[1] 
       (.C(clk),
        .CE(\currInit_reg[2] ),
        .D(goal0_carry_n_7),
        .Q(\goal_reg_n_0_[1] ),
        .R(\goal[22]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \goal_reg[20] 
       (.C(clk),
        .CE(\currInit_reg[2] ),
        .D(goal0_carry__3_n_4),
        .Q(\goal_reg_n_0_[20] ),
        .R(\goal[22]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \goal_reg[21] 
       (.C(clk),
        .CE(\currInit_reg[2] ),
        .D(goal0_carry__4_n_7),
        .Q(\goal_reg_n_0_[21] ),
        .R(\goal[22]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \goal_reg[22] 
       (.C(clk),
        .CE(\currInit_reg[2] ),
        .D(goal0_carry__4_n_6),
        .Q(\goal_reg_n_0_[22] ),
        .R(\goal[22]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \goal_reg[2] 
       (.C(clk),
        .CE(\currInit_reg[2] ),
        .D(goal0_carry_n_6),
        .Q(\goal_reg_n_0_[2] ),
        .R(\goal[22]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \goal_reg[3] 
       (.C(clk),
        .CE(\currInit_reg[2] ),
        .D(goal0_carry_n_5),
        .Q(\goal_reg_n_0_[3] ),
        .R(\goal[22]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \goal_reg[4] 
       (.C(clk),
        .CE(\currInit_reg[2] ),
        .D(goal0_carry_n_4),
        .Q(\goal_reg_n_0_[4] ),
        .R(\goal[22]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \goal_reg[5] 
       (.C(clk),
        .CE(\currInit_reg[2] ),
        .D(goal0_carry__0_n_7),
        .Q(\goal_reg_n_0_[5] ),
        .R(\goal[22]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \goal_reg[6] 
       (.C(clk),
        .CE(\currInit_reg[2] ),
        .D(goal0_carry__0_n_6),
        .Q(\goal_reg_n_0_[6] ),
        .R(\goal[22]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \goal_reg[7] 
       (.C(clk),
        .CE(\currInit_reg[2] ),
        .D(goal0_carry__0_n_5),
        .Q(\goal_reg_n_0_[7] ),
        .R(\goal[22]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \goal_reg[8] 
       (.C(clk),
        .CE(\currInit_reg[2] ),
        .D(goal0_carry__0_n_4),
        .Q(\goal_reg_n_0_[8] ),
        .R(\goal[22]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \goal_reg[9] 
       (.C(clk),
        .CE(\currInit_reg[2] ),
        .D(goal0_carry__1_n_7),
        .Q(\goal_reg_n_0_[9] ),
        .R(\goal[22]_i_1__0_n_0 ));
endmodule

(* ORIG_REF_NAME = "clkUnit" *) 
module clkUnit_0
   (disableClk_reg_inv,
    \count_reg[4]_0 ,
    canClk,
    multi_reg,
    disableClk_reg_inv_0,
    disableClk_reg_inv_1,
    clk,
    baudRate,
    E,
    prevClkVal,
    out,
    multi,
    threeSamplePoint,
    multi_reg_0,
    prevClkVal_reg,
    resetN);
  output [0:0]disableClk_reg_inv;
  output \count_reg[4]_0 ;
  output canClk;
  output multi_reg;
  output disableClk_reg_inv_0;
  output disableClk_reg_inv_1;
  input clk;
  input [22:0]baudRate;
  input [0:0]E;
  input prevClkVal;
  input [2:0]out;
  input multi;
  input threeSamplePoint;
  input multi_reg_0;
  input [3:0]prevClkVal_reg;
  input resetN;

  wire [0:0]E;
  wire \FSM_onehot_currState[2]_i_3_n_0 ;
  wire \FSM_onehot_currState[2]_i_4_n_0 ;
  wire \FSM_onehot_currState[2]_i_5_n_0 ;
  wire \FSM_onehot_currState[2]_i_6_n_0 ;
  wire [22:0]baudRate;
  wire canClk;
  wire canReferenceSig;
  wire clk;
  wire clkOut_i_1_n_0;
  wire [22:0]count;
  wire count0_carry__0_i_1_n_0;
  wire count0_carry__0_i_2_n_0;
  wire count0_carry__0_i_3_n_0;
  wire count0_carry__0_i_4_n_0;
  wire count0_carry__0_n_0;
  wire count0_carry__0_n_1;
  wire count0_carry__0_n_2;
  wire count0_carry__0_n_3;
  wire count0_carry_i_1_n_0;
  wire count0_carry_i_2_n_0;
  wire count0_carry_i_3_n_0;
  wire count0_carry_i_4_n_0;
  wire count0_carry_n_0;
  wire count0_carry_n_1;
  wire count0_carry_n_2;
  wire count0_carry_n_3;
  wire \count[0]_i_1__1_n_0 ;
  wire \count[0]_i_3_n_0 ;
  wire \count_reg[0]_i_2_n_0 ;
  wire \count_reg[0]_i_2_n_1 ;
  wire \count_reg[0]_i_2_n_2 ;
  wire \count_reg[0]_i_2_n_3 ;
  wire \count_reg[0]_i_2_n_4 ;
  wire \count_reg[0]_i_2_n_5 ;
  wire \count_reg[0]_i_2_n_6 ;
  wire \count_reg[0]_i_2_n_7 ;
  wire \count_reg[12]_i_1_n_0 ;
  wire \count_reg[12]_i_1_n_1 ;
  wire \count_reg[12]_i_1_n_2 ;
  wire \count_reg[12]_i_1_n_3 ;
  wire \count_reg[12]_i_1_n_4 ;
  wire \count_reg[12]_i_1_n_5 ;
  wire \count_reg[12]_i_1_n_6 ;
  wire \count_reg[12]_i_1_n_7 ;
  wire \count_reg[16]_i_1_n_0 ;
  wire \count_reg[16]_i_1_n_1 ;
  wire \count_reg[16]_i_1_n_2 ;
  wire \count_reg[16]_i_1_n_3 ;
  wire \count_reg[16]_i_1_n_4 ;
  wire \count_reg[16]_i_1_n_5 ;
  wire \count_reg[16]_i_1_n_6 ;
  wire \count_reg[16]_i_1_n_7 ;
  wire \count_reg[20]_i_1_n_2 ;
  wire \count_reg[20]_i_1_n_3 ;
  wire \count_reg[20]_i_1_n_5 ;
  wire \count_reg[20]_i_1_n_6 ;
  wire \count_reg[20]_i_1_n_7 ;
  wire \count_reg[4]_0 ;
  wire \count_reg[4]_i_1_n_0 ;
  wire \count_reg[4]_i_1_n_1 ;
  wire \count_reg[4]_i_1_n_2 ;
  wire \count_reg[4]_i_1_n_3 ;
  wire \count_reg[4]_i_1_n_4 ;
  wire \count_reg[4]_i_1_n_5 ;
  wire \count_reg[4]_i_1_n_6 ;
  wire \count_reg[4]_i_1_n_7 ;
  wire \count_reg[8]_i_1_n_0 ;
  wire \count_reg[8]_i_1_n_1 ;
  wire \count_reg[8]_i_1_n_2 ;
  wire \count_reg[8]_i_1_n_3 ;
  wire \count_reg[8]_i_1_n_4 ;
  wire \count_reg[8]_i_1_n_5 ;
  wire \count_reg[8]_i_1_n_6 ;
  wire \count_reg[8]_i_1_n_7 ;
  wire [0:0]disableClk_reg_inv;
  wire disableClk_reg_inv_0;
  wire disableClk_reg_inv_1;
  wire [22:0]goal;
  wire [22:0]goal0;
  wire goal0_carry__0_i_1_n_0;
  wire goal0_carry__0_i_2__0_n_0;
  wire goal0_carry__0_i_3_n_0;
  wire goal0_carry__0_i_4_n_0;
  wire goal0_carry__0_n_0;
  wire goal0_carry__0_n_1;
  wire goal0_carry__0_n_2;
  wire goal0_carry__0_n_3;
  wire goal0_carry__1_i_1_n_0;
  wire goal0_carry__1_i_2_n_0;
  wire goal0_carry__1_i_3__0_n_0;
  wire goal0_carry__1_i_4_n_0;
  wire goal0_carry__1_n_0;
  wire goal0_carry__1_n_1;
  wire goal0_carry__1_n_2;
  wire goal0_carry__1_n_3;
  wire goal0_carry__2_i_1__0_n_0;
  wire goal0_carry__2_i_2_n_0;
  wire goal0_carry__2_i_3_n_0;
  wire goal0_carry__2_i_4__0_n_0;
  wire goal0_carry__2_n_0;
  wire goal0_carry__2_n_1;
  wire goal0_carry__2_n_2;
  wire goal0_carry__2_n_3;
  wire goal0_carry__3_i_1_n_0;
  wire goal0_carry__3_i_2__0_n_0;
  wire goal0_carry__3_i_3_n_0;
  wire goal0_carry__3_i_4_n_0;
  wire goal0_carry__3_n_0;
  wire goal0_carry__3_n_1;
  wire goal0_carry__3_n_2;
  wire goal0_carry__3_n_3;
  wire goal0_carry__4_i_1__0_n_0;
  wire goal0_carry__4_i_2__0_n_0;
  wire goal0_carry__4_n_3;
  wire goal0_carry_i_1__0_n_0;
  wire goal0_carry_i_2_n_0;
  wire goal0_carry_i_3_n_0;
  wire goal0_carry_i_4__0_n_0;
  wire goal0_carry_n_0;
  wire goal0_carry_n_1;
  wire goal0_carry_n_2;
  wire goal0_carry_n_3;
  wire \goal[22]_i_1_n_0 ;
  wire \goal[22]_i_2_n_0 ;
  wire \goal[22]_i_3_n_0 ;
  wire \goal[22]_i_4_n_0 ;
  wire \goal[22]_i_5_n_0 ;
  wire \goal[22]_i_6_n_0 ;
  wire multi;
  wire multi_i_2_n_0;
  wire multi_i_3_n_0;
  wire multi_i_4_n_0;
  wire multi_i_5_n_0;
  wire multi_i_6_n_0;
  wire multi_reg;
  wire multi_reg_0;
  wire [2:0]out;
  wire prevClkVal;
  wire [3:0]prevClkVal_reg;
  wire resetN;
  wire threeSamplePoint;
  wire [3:0]NLW_count0_carry_O_UNCONNECTED;
  wire [3:0]NLW_count0_carry__0_O_UNCONNECTED;
  wire [3:2]\NLW_count_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_count_reg[20]_i_1_O_UNCONNECTED ;
  wire [3:1]NLW_goal0_carry__4_CO_UNCONNECTED;
  wire [3:2]NLW_goal0_carry__4_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hEEEBFFFFFFFFFFFF)) 
    \FSM_onehot_currState[2]_i_2 
       (.I0(\FSM_onehot_currState[2]_i_3_n_0 ),
        .I1(count[4]),
        .I2(count[3]),
        .I3(count[2]),
        .I4(\FSM_onehot_currState[2]_i_4_n_0 ),
        .I5(multi_i_3_n_0),
        .O(\count_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFB090FFFF)) 
    \FSM_onehot_currState[2]_i_3 
       (.I0(count[2]),
        .I1(count[1]),
        .I2(count[3]),
        .I3(count[0]),
        .I4(canClk),
        .I5(\FSM_onehot_currState[2]_i_5_n_0 ),
        .O(\FSM_onehot_currState[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h10111111)) 
    \FSM_onehot_currState[2]_i_4 
       (.I0(\FSM_onehot_currState[2]_i_6_n_0 ),
        .I1(multi_i_5_n_0),
        .I2(count[3]),
        .I3(count[1]),
        .I4(count[0]),
        .O(\FSM_onehot_currState[2]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_currState[2]_i_5 
       (.I0(count[15]),
        .I1(count[7]),
        .I2(count[14]),
        .I3(count[10]),
        .O(\FSM_onehot_currState[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0EFF0E0E0EFF0EFF)) 
    \FSM_onehot_currState[2]_i_6 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(out[2]),
        .I3(multi),
        .I4(count[3]),
        .I5(count[2]),
        .O(\FSM_onehot_currState[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \canClkCounter[4]_i_2 
       (.I0(E),
        .I1(canReferenceSig),
        .I2(prevClkVal),
        .O(disableClk_reg_inv));
  LUT3 #(
    .INIT(8'h4F)) 
    canClkPrevValue_i_1
       (.I0(E),
        .I1(canReferenceSig),
        .I2(resetN),
        .O(disableClk_reg_inv_1));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hF6)) 
    clkOut_i_1
       (.I0(canReferenceSig),
        .I1(count0_carry__0_n_0),
        .I2(E),
        .O(clkOut_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clkOut_reg
       (.C(clk),
        .CE(1'b1),
        .D(clkOut_i_1_n_0),
        .Q(canReferenceSig),
        .R(1'b0));
  CARRY4 count0_carry
       (.CI(1'b0),
        .CO({count0_carry_n_0,count0_carry_n_1,count0_carry_n_2,count0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_count0_carry_O_UNCONNECTED[3:0]),
        .S({count0_carry_i_1_n_0,count0_carry_i_2_n_0,count0_carry_i_3_n_0,count0_carry_i_4_n_0}));
  CARRY4 count0_carry__0
       (.CI(count0_carry_n_0),
        .CO({count0_carry__0_n_0,count0_carry__0_n_1,count0_carry__0_n_2,count0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_count0_carry__0_O_UNCONNECTED[3:0]),
        .S({count0_carry__0_i_1_n_0,count0_carry__0_i_2_n_0,count0_carry__0_i_3_n_0,count0_carry__0_i_4_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    count0_carry__0_i_1
       (.I0(goal[22]),
        .I1(count[22]),
        .I2(goal[21]),
        .I3(count[21]),
        .O(count0_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    count0_carry__0_i_2
       (.I0(count[20]),
        .I1(goal[20]),
        .I2(count[18]),
        .I3(goal[18]),
        .I4(goal[19]),
        .I5(count[19]),
        .O(count0_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    count0_carry__0_i_3
       (.I0(count[15]),
        .I1(goal[15]),
        .I2(count[16]),
        .I3(goal[16]),
        .I4(goal[17]),
        .I5(count[17]),
        .O(count0_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    count0_carry__0_i_4
       (.I0(count[12]),
        .I1(goal[12]),
        .I2(count[13]),
        .I3(goal[13]),
        .I4(goal[14]),
        .I5(count[14]),
        .O(count0_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    count0_carry_i_1
       (.I0(count[9]),
        .I1(goal[9]),
        .I2(count[10]),
        .I3(goal[10]),
        .I4(goal[11]),
        .I5(count[11]),
        .O(count0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    count0_carry_i_2
       (.I0(count[6]),
        .I1(goal[6]),
        .I2(count[7]),
        .I3(goal[7]),
        .I4(goal[8]),
        .I5(count[8]),
        .O(count0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    count0_carry_i_3
       (.I0(count[3]),
        .I1(goal[3]),
        .I2(count[4]),
        .I3(goal[4]),
        .I4(goal[5]),
        .I5(count[5]),
        .O(count0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    count0_carry_i_4
       (.I0(goal[2]),
        .I1(count[2]),
        .I2(count[0]),
        .I3(goal[0]),
        .I4(count[1]),
        .I5(goal[1]),
        .O(count0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    \count[0]_i_1__1 
       (.I0(count0_carry__0_n_0),
        .I1(E),
        .O(\count[0]_i_1__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_3 
       (.I0(count[0]),
        .O(\count[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[0]_i_2_n_7 ),
        .Q(count[0]),
        .R(\count[0]_i_1__1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_2_n_0 ,\count_reg[0]_i_2_n_1 ,\count_reg[0]_i_2_n_2 ,\count_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_reg[0]_i_2_n_4 ,\count_reg[0]_i_2_n_5 ,\count_reg[0]_i_2_n_6 ,\count_reg[0]_i_2_n_7 }),
        .S({count[3:1],\count[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_5 ),
        .Q(count[10]),
        .R(\count[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_4 ),
        .Q(count[11]),
        .R(\count[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_7 ),
        .Q(count[12]),
        .R(\count[0]_i_1__1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[12]_i_1 
       (.CI(\count_reg[8]_i_1_n_0 ),
        .CO({\count_reg[12]_i_1_n_0 ,\count_reg[12]_i_1_n_1 ,\count_reg[12]_i_1_n_2 ,\count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[12]_i_1_n_4 ,\count_reg[12]_i_1_n_5 ,\count_reg[12]_i_1_n_6 ,\count_reg[12]_i_1_n_7 }),
        .S(count[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_6 ),
        .Q(count[13]),
        .R(\count[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_5 ),
        .Q(count[14]),
        .R(\count[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_4 ),
        .Q(count[15]),
        .R(\count[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_7 ),
        .Q(count[16]),
        .R(\count[0]_i_1__1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[16]_i_1 
       (.CI(\count_reg[12]_i_1_n_0 ),
        .CO({\count_reg[16]_i_1_n_0 ,\count_reg[16]_i_1_n_1 ,\count_reg[16]_i_1_n_2 ,\count_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[16]_i_1_n_4 ,\count_reg[16]_i_1_n_5 ,\count_reg[16]_i_1_n_6 ,\count_reg[16]_i_1_n_7 }),
        .S(count[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_6 ),
        .Q(count[17]),
        .R(\count[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_5 ),
        .Q(count[18]),
        .R(\count[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_4 ),
        .Q(count[19]),
        .R(\count[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[0]_i_2_n_6 ),
        .Q(count[1]),
        .R(\count[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[20]_i_1_n_7 ),
        .Q(count[20]),
        .R(\count[0]_i_1__1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[20]_i_1 
       (.CI(\count_reg[16]_i_1_n_0 ),
        .CO({\NLW_count_reg[20]_i_1_CO_UNCONNECTED [3:2],\count_reg[20]_i_1_n_2 ,\count_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_reg[20]_i_1_O_UNCONNECTED [3],\count_reg[20]_i_1_n_5 ,\count_reg[20]_i_1_n_6 ,\count_reg[20]_i_1_n_7 }),
        .S({1'b0,count[22:20]}));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[20]_i_1_n_6 ),
        .Q(count[21]),
        .R(\count[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[20]_i_1_n_5 ),
        .Q(count[22]),
        .R(\count[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[0]_i_2_n_5 ),
        .Q(count[2]),
        .R(\count[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[0]_i_2_n_4 ),
        .Q(count[3]),
        .R(\count[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_7 ),
        .Q(count[4]),
        .R(\count[0]_i_1__1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[4]_i_1 
       (.CI(\count_reg[0]_i_2_n_0 ),
        .CO({\count_reg[4]_i_1_n_0 ,\count_reg[4]_i_1_n_1 ,\count_reg[4]_i_1_n_2 ,\count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_1_n_4 ,\count_reg[4]_i_1_n_5 ,\count_reg[4]_i_1_n_6 ,\count_reg[4]_i_1_n_7 }),
        .S(count[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_6 ),
        .Q(count[5]),
        .R(\count[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_5 ),
        .Q(count[6]),
        .R(\count[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_4 ),
        .Q(count[7]),
        .R(\count[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_7 ),
        .Q(count[8]),
        .R(\count[0]_i_1__1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[8]_i_1 
       (.CI(\count_reg[4]_i_1_n_0 ),
        .CO({\count_reg[8]_i_1_n_0 ,\count_reg[8]_i_1_n_1 ,\count_reg[8]_i_1_n_2 ,\count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_1_n_4 ,\count_reg[8]_i_1_n_5 ,\count_reg[8]_i_1_n_6 ,\count_reg[8]_i_1_n_7 }),
        .S(count[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_6 ),
        .Q(count[9]),
        .R(\count[0]_i_1__1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 goal0_carry
       (.CI(1'b0),
        .CO({goal0_carry_n_0,goal0_carry_n_1,goal0_carry_n_2,goal0_carry_n_3}),
        .CYINIT(baudRate[0]),
        .DI(baudRate[4:1]),
        .O(goal0[4:1]),
        .S({goal0_carry_i_1__0_n_0,goal0_carry_i_2_n_0,goal0_carry_i_3_n_0,goal0_carry_i_4__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 goal0_carry__0
       (.CI(goal0_carry_n_0),
        .CO({goal0_carry__0_n_0,goal0_carry__0_n_1,goal0_carry__0_n_2,goal0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(baudRate[8:5]),
        .O(goal0[8:5]),
        .S({goal0_carry__0_i_1_n_0,goal0_carry__0_i_2__0_n_0,goal0_carry__0_i_3_n_0,goal0_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    goal0_carry__0_i_1
       (.I0(baudRate[8]),
        .O(goal0_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    goal0_carry__0_i_2__0
       (.I0(baudRate[7]),
        .O(goal0_carry__0_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    goal0_carry__0_i_3
       (.I0(baudRate[6]),
        .O(goal0_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    goal0_carry__0_i_4
       (.I0(baudRate[5]),
        .O(goal0_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 goal0_carry__1
       (.CI(goal0_carry__0_n_0),
        .CO({goal0_carry__1_n_0,goal0_carry__1_n_1,goal0_carry__1_n_2,goal0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(baudRate[12:9]),
        .O(goal0[12:9]),
        .S({goal0_carry__1_i_1_n_0,goal0_carry__1_i_2_n_0,goal0_carry__1_i_3__0_n_0,goal0_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    goal0_carry__1_i_1
       (.I0(baudRate[12]),
        .O(goal0_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    goal0_carry__1_i_2
       (.I0(baudRate[11]),
        .O(goal0_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    goal0_carry__1_i_3__0
       (.I0(baudRate[10]),
        .O(goal0_carry__1_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    goal0_carry__1_i_4
       (.I0(baudRate[9]),
        .O(goal0_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 goal0_carry__2
       (.CI(goal0_carry__1_n_0),
        .CO({goal0_carry__2_n_0,goal0_carry__2_n_1,goal0_carry__2_n_2,goal0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(baudRate[16:13]),
        .O(goal0[16:13]),
        .S({goal0_carry__2_i_1__0_n_0,goal0_carry__2_i_2_n_0,goal0_carry__2_i_3_n_0,goal0_carry__2_i_4__0_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    goal0_carry__2_i_1__0
       (.I0(baudRate[16]),
        .O(goal0_carry__2_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    goal0_carry__2_i_2
       (.I0(baudRate[15]),
        .O(goal0_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    goal0_carry__2_i_3
       (.I0(baudRate[14]),
        .O(goal0_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    goal0_carry__2_i_4__0
       (.I0(baudRate[13]),
        .O(goal0_carry__2_i_4__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 goal0_carry__3
       (.CI(goal0_carry__2_n_0),
        .CO({goal0_carry__3_n_0,goal0_carry__3_n_1,goal0_carry__3_n_2,goal0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(baudRate[20:17]),
        .O(goal0[20:17]),
        .S({goal0_carry__3_i_1_n_0,goal0_carry__3_i_2__0_n_0,goal0_carry__3_i_3_n_0,goal0_carry__3_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    goal0_carry__3_i_1
       (.I0(baudRate[20]),
        .O(goal0_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    goal0_carry__3_i_2__0
       (.I0(baudRate[19]),
        .O(goal0_carry__3_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    goal0_carry__3_i_3
       (.I0(baudRate[18]),
        .O(goal0_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    goal0_carry__3_i_4
       (.I0(baudRate[17]),
        .O(goal0_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 goal0_carry__4
       (.CI(goal0_carry__3_n_0),
        .CO({NLW_goal0_carry__4_CO_UNCONNECTED[3:1],goal0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,baudRate[21]}),
        .O({NLW_goal0_carry__4_O_UNCONNECTED[3:2],goal0[22:21]}),
        .S({1'b0,1'b0,goal0_carry__4_i_1__0_n_0,goal0_carry__4_i_2__0_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    goal0_carry__4_i_1__0
       (.I0(baudRate[22]),
        .O(goal0_carry__4_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    goal0_carry__4_i_2__0
       (.I0(baudRate[21]),
        .O(goal0_carry__4_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    goal0_carry_i_1__0
       (.I0(baudRate[4]),
        .O(goal0_carry_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    goal0_carry_i_2
       (.I0(baudRate[3]),
        .O(goal0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    goal0_carry_i_3
       (.I0(baudRate[2]),
        .O(goal0_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    goal0_carry_i_4__0
       (.I0(baudRate[1]),
        .O(goal0_carry_i_4__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \goal[0]_i_1 
       (.I0(baudRate[0]),
        .O(goal0[0]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \goal[22]_i_1 
       (.I0(\goal[22]_i_2_n_0 ),
        .I1(baudRate[7]),
        .I2(baudRate[8]),
        .I3(baudRate[21]),
        .I4(baudRate[11]),
        .I5(\goal[22]_i_3_n_0 ),
        .O(\goal[22]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \goal[22]_i_2 
       (.I0(baudRate[5]),
        .I1(baudRate[12]),
        .I2(baudRate[10]),
        .I3(baudRate[4]),
        .O(\goal[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \goal[22]_i_3 
       (.I0(\goal[22]_i_4_n_0 ),
        .I1(baudRate[3]),
        .I2(baudRate[9]),
        .I3(baudRate[16]),
        .I4(baudRate[0]),
        .I5(\goal[22]_i_5_n_0 ),
        .O(\goal[22]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \goal[22]_i_4 
       (.I0(baudRate[13]),
        .I1(baudRate[15]),
        .I2(baudRate[1]),
        .I3(baudRate[18]),
        .O(\goal[22]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \goal[22]_i_5 
       (.I0(baudRate[6]),
        .I1(baudRate[2]),
        .I2(baudRate[20]),
        .I3(baudRate[19]),
        .I4(\goal[22]_i_6_n_0 ),
        .O(\goal[22]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hFFFB)) 
    \goal[22]_i_6 
       (.I0(baudRate[17]),
        .I1(E),
        .I2(baudRate[22]),
        .I3(baudRate[14]),
        .O(\goal[22]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \goal_reg[0] 
       (.C(clk),
        .CE(E),
        .D(goal0[0]),
        .Q(goal[0]),
        .R(\goal[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \goal_reg[10] 
       (.C(clk),
        .CE(E),
        .D(goal0[10]),
        .Q(goal[10]),
        .R(\goal[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \goal_reg[11] 
       (.C(clk),
        .CE(E),
        .D(goal0[11]),
        .Q(goal[11]),
        .R(\goal[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \goal_reg[12] 
       (.C(clk),
        .CE(E),
        .D(goal0[12]),
        .Q(goal[12]),
        .R(\goal[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \goal_reg[13] 
       (.C(clk),
        .CE(E),
        .D(goal0[13]),
        .Q(goal[13]),
        .R(\goal[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \goal_reg[14] 
       (.C(clk),
        .CE(E),
        .D(goal0[14]),
        .Q(goal[14]),
        .R(\goal[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \goal_reg[15] 
       (.C(clk),
        .CE(E),
        .D(goal0[15]),
        .Q(goal[15]),
        .R(\goal[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \goal_reg[16] 
       (.C(clk),
        .CE(E),
        .D(goal0[16]),
        .Q(goal[16]),
        .R(\goal[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \goal_reg[17] 
       (.C(clk),
        .CE(E),
        .D(goal0[17]),
        .Q(goal[17]),
        .R(\goal[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \goal_reg[18] 
       (.C(clk),
        .CE(E),
        .D(goal0[18]),
        .Q(goal[18]),
        .R(\goal[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \goal_reg[19] 
       (.C(clk),
        .CE(E),
        .D(goal0[19]),
        .Q(goal[19]),
        .R(\goal[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \goal_reg[1] 
       (.C(clk),
        .CE(E),
        .D(goal0[1]),
        .Q(goal[1]),
        .R(\goal[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \goal_reg[20] 
       (.C(clk),
        .CE(E),
        .D(goal0[20]),
        .Q(goal[20]),
        .R(\goal[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \goal_reg[21] 
       (.C(clk),
        .CE(E),
        .D(goal0[21]),
        .Q(goal[21]),
        .R(\goal[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \goal_reg[22] 
       (.C(clk),
        .CE(E),
        .D(goal0[22]),
        .Q(goal[22]),
        .R(\goal[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \goal_reg[2] 
       (.C(clk),
        .CE(E),
        .D(goal0[2]),
        .Q(goal[2]),
        .R(\goal[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \goal_reg[3] 
       (.C(clk),
        .CE(E),
        .D(goal0[3]),
        .Q(goal[3]),
        .R(\goal[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \goal_reg[4] 
       (.C(clk),
        .CE(E),
        .D(goal0[4]),
        .Q(goal[4]),
        .R(\goal[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \goal_reg[5] 
       (.C(clk),
        .CE(E),
        .D(goal0[5]),
        .Q(goal[5]),
        .R(\goal[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \goal_reg[6] 
       (.C(clk),
        .CE(E),
        .D(goal0[6]),
        .Q(goal[6]),
        .R(\goal[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \goal_reg[7] 
       (.C(clk),
        .CE(E),
        .D(goal0[7]),
        .Q(goal[7]),
        .R(\goal[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \goal_reg[8] 
       (.C(clk),
        .CE(E),
        .D(goal0[8]),
        .Q(goal[8]),
        .R(\goal[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \goal_reg[9] 
       (.C(clk),
        .CE(E),
        .D(goal0[9]),
        .Q(goal[9]),
        .R(\goal[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000BA8A)) 
    multi_i_1
       (.I0(multi),
        .I1(multi_i_2_n_0),
        .I2(multi_i_3_n_0),
        .I3(threeSamplePoint),
        .I4(multi_reg_0),
        .O(multi_reg));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    multi_i_2
       (.I0(multi_i_4_n_0),
        .I1(multi_i_5_n_0),
        .I2(count[15]),
        .I3(count[7]),
        .I4(count[14]),
        .I5(count[10]),
        .O(multi_i_2_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    multi_i_3
       (.I0(count[13]),
        .I1(count[16]),
        .I2(count[9]),
        .I3(count[12]),
        .I4(multi_i_6_n_0),
        .O(multi_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    multi_i_4
       (.I0(count[3]),
        .I1(count[2]),
        .I2(count[4]),
        .I3(canReferenceSig),
        .I4(count[0]),
        .I5(count[1]),
        .O(multi_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    multi_i_5
       (.I0(count[20]),
        .I1(count[19]),
        .I2(count[22]),
        .I3(count[21]),
        .O(multi_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    multi_i_6
       (.I0(count[8]),
        .I1(count[6]),
        .I2(count[5]),
        .I3(count[17]),
        .I4(count[11]),
        .I5(count[18]),
        .O(multi_i_6_n_0));
  LUT6 #(
    .INIT(64'h0000004004000040)) 
    prevClkVal_i_1
       (.I0(E),
        .I1(canReferenceSig),
        .I2(prevClkVal_reg[3]),
        .I3(prevClkVal_reg[2]),
        .I4(prevClkVal_reg[0]),
        .I5(prevClkVal_reg[1]),
        .O(disableClk_reg_inv_0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \runningSample[2]_i_2 
       (.I0(canReferenceSig),
        .I1(E),
        .O(canClk));
endmodule

module errorDetect
   (SR,
    \currMeta_reg[0] ,
    resetN,
    calculatedInput,
    Q,
    \currMeta_reg[1] ,
    CO,
    \currMeta_reg[1]_0 ,
    threeSamplePoint,
    samplePulse,
    clk);
  output [0:0]SR;
  output \currMeta_reg[0] ;
  input resetN;
  input calculatedInput;
  input [0:0]Q;
  input \currMeta_reg[1] ;
  input [0:0]CO;
  input \currMeta_reg[1]_0 ;
  input threeSamplePoint;
  input samplePulse;
  input clk;

  wire [0:0]CO;
  wire [0:0]Q;
  wire [0:0]SR;
  wire calculatedInput;
  wire clk;
  wire \currMeta[1]_i_6_n_0 ;
  wire \currMeta_reg[0] ;
  wire \currMeta_reg[1] ;
  wire \currMeta_reg[1]_0 ;
  wire [1:0]currSample;
  wire \currSample[0]_i_1_n_0 ;
  wire \currSample[1]_i_1_n_0 ;
  wire \currState[0]_i_1__1_n_0 ;
  wire \currState[10]_i_1_n_0 ;
  wire \currState[11]_i_1_n_0 ;
  wire \currState[12]_i_1_n_0 ;
  wire \currState[13]_i_1_n_0 ;
  wire \currState[14]_i_1_n_0 ;
  wire \currState[15]_i_2_n_0 ;
  wire \currState[15]_i_3_n_0 ;
  wire \currState[1]_i_1__0_n_0 ;
  wire \currState[2]_i_1_n_0 ;
  wire \currState[2]_i_2__0_n_0 ;
  wire \currState[2]_i_3_n_0 ;
  wire \currState[2]_i_4_n_0 ;
  wire \currState[2]_i_5_n_0 ;
  wire \currState[3]_i_1__1_n_0 ;
  wire \currState[4]_i_1__0_n_0 ;
  wire \currState[5]_i_1_n_0 ;
  wire \currState[6]_i_1_n_0 ;
  wire \currState[7]_i_1_n_0 ;
  wire \currState[8]_i_1_n_0 ;
  wire \currState[9]_i_1_n_0 ;
  wire \currState_reg_n_0_[0] ;
  wire \currState_reg_n_0_[10] ;
  wire \currState_reg_n_0_[11] ;
  wire \currState_reg_n_0_[12] ;
  wire \currState_reg_n_0_[13] ;
  wire \currState_reg_n_0_[14] ;
  wire \currState_reg_n_0_[1] ;
  wire \currState_reg_n_0_[2] ;
  wire \currState_reg_n_0_[3] ;
  wire \currState_reg_n_0_[4] ;
  wire \currState_reg_n_0_[5] ;
  wire \currState_reg_n_0_[6] ;
  wire \currState_reg_n_0_[7] ;
  wire \currState_reg_n_0_[8] ;
  wire \currState_reg_n_0_[9] ;
  wire dataValid;
  wire nextState1_carry__0_n_0;
  wire nextState1_carry__0_n_1;
  wire nextState1_carry__0_n_2;
  wire nextState1_carry__0_n_3;
  wire nextState1_carry__0_n_4;
  wire nextState1_carry__0_n_5;
  wire nextState1_carry__0_n_6;
  wire nextState1_carry__0_n_7;
  wire nextState1_carry__1_n_0;
  wire nextState1_carry__1_n_1;
  wire nextState1_carry__1_n_2;
  wire nextState1_carry__1_n_3;
  wire nextState1_carry__1_n_4;
  wire nextState1_carry__1_n_5;
  wire nextState1_carry__1_n_6;
  wire nextState1_carry__1_n_7;
  wire nextState1_carry__2_n_2;
  wire nextState1_carry__2_n_3;
  wire nextState1_carry__2_n_5;
  wire nextState1_carry__2_n_6;
  wire nextState1_carry__2_n_7;
  wire nextState1_carry_n_0;
  wire nextState1_carry_n_1;
  wire nextState1_carry_n_2;
  wire nextState1_carry_n_3;
  wire nextState1_carry_n_4;
  wire nextState1_carry_n_5;
  wire nextState1_carry_n_6;
  wire nextState1_carry_n_7;
  wire p_0_in0;
  wire resetN;
  wire samplePulse;
  wire threeSamplePoint;
  wire [3:2]NLW_nextState1_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_nextState1_carry__2_O_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    \currInit[2]_i_1 
       (.I0(resetN),
        .O(SR));
  LUT6 #(
    .INIT(64'hFFFFFFFF10111010)) 
    \currMeta[1]_i_2 
       (.I0(Q),
        .I1(\currMeta_reg[1] ),
        .I2(CO),
        .I3(\currState[2]_i_2__0_n_0 ),
        .I4(\currMeta[1]_i_6_n_0 ),
        .I5(\currMeta_reg[1]_0 ),
        .O(\currMeta_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h15)) 
    \currMeta[1]_i_6 
       (.I0(\currState_reg_n_0_[3] ),
        .I1(\currState_reg_n_0_[1] ),
        .I2(\currState_reg_n_0_[2] ),
        .O(\currMeta[1]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h26)) 
    \currSample[0]_i_1 
       (.I0(samplePulse),
        .I1(currSample[0]),
        .I2(currSample[1]),
        .O(\currSample[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0FC4)) 
    \currSample[1]_i_1 
       (.I0(threeSamplePoint),
        .I1(samplePulse),
        .I2(currSample[0]),
        .I3(currSample[1]),
        .O(\currSample[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \currSample_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\currSample[0]_i_1_n_0 ),
        .Q(currSample[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \currSample_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\currSample[1]_i_1_n_0 ),
        .Q(currSample[1]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0010101010010101)) 
    \currState[0]_i_1__1 
       (.I0(\currState_reg_n_0_[0] ),
        .I1(\currState[2]_i_2__0_n_0 ),
        .I2(calculatedInput),
        .I3(\currState_reg_n_0_[2] ),
        .I4(\currState_reg_n_0_[1] ),
        .I5(\currState_reg_n_0_[3] ),
        .O(\currState[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \currState[10]_i_1 
       (.I0(nextState1_carry__1_n_6),
        .I1(\currState[15]_i_3_n_0 ),
        .O(\currState[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \currState[11]_i_1 
       (.I0(nextState1_carry__1_n_5),
        .I1(\currState[15]_i_3_n_0 ),
        .O(\currState[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \currState[12]_i_1 
       (.I0(nextState1_carry__1_n_4),
        .I1(\currState[15]_i_3_n_0 ),
        .O(\currState[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \currState[13]_i_1 
       (.I0(nextState1_carry__2_n_7),
        .I1(\currState[15]_i_3_n_0 ),
        .O(\currState[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \currState[14]_i_1 
       (.I0(nextState1_carry__2_n_6),
        .I1(\currState[15]_i_3_n_0 ),
        .O(\currState[14]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \currState[15]_i_1 
       (.I0(currSample[1]),
        .I1(currSample[0]),
        .O(dataValid));
  LUT2 #(
    .INIT(4'h2)) 
    \currState[15]_i_2 
       (.I0(nextState1_carry__2_n_5),
        .I1(\currState[15]_i_3_n_0 ),
        .O(\currState[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFDDDDEEEFDDDFEEE)) 
    \currState[15]_i_3 
       (.I0(calculatedInput),
        .I1(\currState[2]_i_2__0_n_0 ),
        .I2(\currState_reg_n_0_[1] ),
        .I3(\currState_reg_n_0_[2] ),
        .I4(\currState_reg_n_0_[3] ),
        .I5(\currState_reg_n_0_[0] ),
        .O(\currState[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0040401000405510)) 
    \currState[1]_i_1__0 
       (.I0(\currState[2]_i_2__0_n_0 ),
        .I1(calculatedInput),
        .I2(nextState1_carry_n_7),
        .I3(\currState[2]_i_3_n_0 ),
        .I4(\currState_reg_n_0_[3] ),
        .I5(\currState_reg_n_0_[0] ),
        .O(\currState[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0040401000405510)) 
    \currState[2]_i_1 
       (.I0(\currState[2]_i_2__0_n_0 ),
        .I1(calculatedInput),
        .I2(nextState1_carry_n_6),
        .I3(\currState[2]_i_3_n_0 ),
        .I4(\currState_reg_n_0_[3] ),
        .I5(\currState_reg_n_0_[0] ),
        .O(\currState[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \currState[2]_i_2__0 
       (.I0(\currState_reg_n_0_[6] ),
        .I1(\currState_reg_n_0_[11] ),
        .I2(\currState_reg_n_0_[7] ),
        .I3(\currState_reg_n_0_[12] ),
        .I4(\currState[2]_i_4_n_0 ),
        .I5(\currState[2]_i_5_n_0 ),
        .O(\currState[2]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \currState[2]_i_3 
       (.I0(\currState_reg_n_0_[2] ),
        .I1(\currState_reg_n_0_[1] ),
        .O(\currState[2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \currState[2]_i_4 
       (.I0(\currState_reg_n_0_[13] ),
        .I1(\currState_reg_n_0_[4] ),
        .I2(\currState_reg_n_0_[14] ),
        .I3(\currState_reg_n_0_[8] ),
        .O(\currState[2]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \currState[2]_i_5 
       (.I0(\currState_reg_n_0_[10] ),
        .I1(\currState_reg_n_0_[5] ),
        .I2(p_0_in0),
        .I3(\currState_reg_n_0_[9] ),
        .O(\currState[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \currState[3]_i_1__1 
       (.I0(nextState1_carry_n_5),
        .I1(\currState[15]_i_3_n_0 ),
        .O(\currState[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \currState[4]_i_1__0 
       (.I0(nextState1_carry_n_4),
        .I1(\currState[15]_i_3_n_0 ),
        .O(\currState[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \currState[5]_i_1 
       (.I0(nextState1_carry__0_n_7),
        .I1(\currState[15]_i_3_n_0 ),
        .O(\currState[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \currState[6]_i_1 
       (.I0(nextState1_carry__0_n_6),
        .I1(\currState[15]_i_3_n_0 ),
        .O(\currState[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \currState[7]_i_1 
       (.I0(nextState1_carry__0_n_5),
        .I1(\currState[15]_i_3_n_0 ),
        .O(\currState[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \currState[8]_i_1 
       (.I0(nextState1_carry__0_n_4),
        .I1(\currState[15]_i_3_n_0 ),
        .O(\currState[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \currState[9]_i_1 
       (.I0(nextState1_carry__1_n_7),
        .I1(\currState[15]_i_3_n_0 ),
        .O(\currState[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \currState_reg[0] 
       (.C(clk),
        .CE(dataValid),
        .D(\currState[0]_i_1__1_n_0 ),
        .Q(\currState_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \currState_reg[10] 
       (.C(clk),
        .CE(dataValid),
        .D(\currState[10]_i_1_n_0 ),
        .Q(\currState_reg_n_0_[10] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \currState_reg[11] 
       (.C(clk),
        .CE(dataValid),
        .D(\currState[11]_i_1_n_0 ),
        .Q(\currState_reg_n_0_[11] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \currState_reg[12] 
       (.C(clk),
        .CE(dataValid),
        .D(\currState[12]_i_1_n_0 ),
        .Q(\currState_reg_n_0_[12] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \currState_reg[13] 
       (.C(clk),
        .CE(dataValid),
        .D(\currState[13]_i_1_n_0 ),
        .Q(\currState_reg_n_0_[13] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \currState_reg[14] 
       (.C(clk),
        .CE(dataValid),
        .D(\currState[14]_i_1_n_0 ),
        .Q(\currState_reg_n_0_[14] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \currState_reg[15] 
       (.C(clk),
        .CE(dataValid),
        .D(\currState[15]_i_2_n_0 ),
        .Q(p_0_in0),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \currState_reg[1] 
       (.C(clk),
        .CE(dataValid),
        .D(\currState[1]_i_1__0_n_0 ),
        .Q(\currState_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \currState_reg[2] 
       (.C(clk),
        .CE(dataValid),
        .D(\currState[2]_i_1_n_0 ),
        .Q(\currState_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \currState_reg[3] 
       (.C(clk),
        .CE(dataValid),
        .D(\currState[3]_i_1__1_n_0 ),
        .Q(\currState_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \currState_reg[4] 
       (.C(clk),
        .CE(dataValid),
        .D(\currState[4]_i_1__0_n_0 ),
        .Q(\currState_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \currState_reg[5] 
       (.C(clk),
        .CE(dataValid),
        .D(\currState[5]_i_1_n_0 ),
        .Q(\currState_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \currState_reg[6] 
       (.C(clk),
        .CE(dataValid),
        .D(\currState[6]_i_1_n_0 ),
        .Q(\currState_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \currState_reg[7] 
       (.C(clk),
        .CE(dataValid),
        .D(\currState[7]_i_1_n_0 ),
        .Q(\currState_reg_n_0_[7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \currState_reg[8] 
       (.C(clk),
        .CE(dataValid),
        .D(\currState[8]_i_1_n_0 ),
        .Q(\currState_reg_n_0_[8] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \currState_reg[9] 
       (.C(clk),
        .CE(dataValid),
        .D(\currState[9]_i_1_n_0 ),
        .Q(\currState_reg_n_0_[9] ),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 nextState1_carry
       (.CI(1'b0),
        .CO({nextState1_carry_n_0,nextState1_carry_n_1,nextState1_carry_n_2,nextState1_carry_n_3}),
        .CYINIT(\currState_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({nextState1_carry_n_4,nextState1_carry_n_5,nextState1_carry_n_6,nextState1_carry_n_7}),
        .S({\currState_reg_n_0_[4] ,\currState_reg_n_0_[3] ,\currState_reg_n_0_[2] ,\currState_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 nextState1_carry__0
       (.CI(nextState1_carry_n_0),
        .CO({nextState1_carry__0_n_0,nextState1_carry__0_n_1,nextState1_carry__0_n_2,nextState1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({nextState1_carry__0_n_4,nextState1_carry__0_n_5,nextState1_carry__0_n_6,nextState1_carry__0_n_7}),
        .S({\currState_reg_n_0_[8] ,\currState_reg_n_0_[7] ,\currState_reg_n_0_[6] ,\currState_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 nextState1_carry__1
       (.CI(nextState1_carry__0_n_0),
        .CO({nextState1_carry__1_n_0,nextState1_carry__1_n_1,nextState1_carry__1_n_2,nextState1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({nextState1_carry__1_n_4,nextState1_carry__1_n_5,nextState1_carry__1_n_6,nextState1_carry__1_n_7}),
        .S({\currState_reg_n_0_[12] ,\currState_reg_n_0_[11] ,\currState_reg_n_0_[10] ,\currState_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 nextState1_carry__2
       (.CI(nextState1_carry__1_n_0),
        .CO({NLW_nextState1_carry__2_CO_UNCONNECTED[3:2],nextState1_carry__2_n_2,nextState1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_nextState1_carry__2_O_UNCONNECTED[3],nextState1_carry__2_n_5,nextState1_carry__2_n_6,nextState1_carry__2_n_7}),
        .S({1'b0,p_0_in0,\currState_reg_n_0_[14] ,\currState_reg_n_0_[13] }));
endmodule

module idComparator
   (resetn,
    \currState_reg[0]_0 ,
    \currState_reg[0]_1 ,
    \currState_reg[2]_0 ,
    \currMeta_reg[1] ,
    \currMeta_reg[2] ,
    out,
    \count_reg[4]_0 ,
    resetN,
    samplePulse,
    Q,
    clk,
    calculatedInput,
    canID);
  output resetn;
  output \currState_reg[0]_0 ;
  output \currState_reg[0]_1 ;
  output \currState_reg[2]_0 ;
  output \currMeta_reg[1] ;
  output \currMeta_reg[2] ;
  input [3:0]out;
  input \count_reg[4]_0 ;
  input resetN;
  input samplePulse;
  input [2:0]Q;
  input clk;
  input calculatedInput;
  input [31:0]canID;

  wire [2:0]Q;
  wire calculatedInput;
  wire [31:0]canID;
  wire clear;
  wire clk;
  wire [4:0]count_reg;
  wire \count_reg[4]_0 ;
  wire \currMeta_reg[1] ;
  wire \currMeta_reg[2] ;
  wire \currState[0]_i_1_n_0 ;
  wire \currState[0]_i_2__1_n_0 ;
  wire \currState[0]_i_3_n_0 ;
  wire \currState[0]_i_4_n_0 ;
  wire \currState[0]_i_5_n_0 ;
  wire \currState[0]_i_6_n_0 ;
  wire \currState[1]_i_1_n_0 ;
  wire \currState[1]_i_2_n_0 ;
  wire \currState[1]_i_3_n_0 ;
  wire \currState[2]_i_1_n_0 ;
  wire \currState[2]_i_2_n_0 ;
  wire \currState_reg[0]_0 ;
  wire \currState_reg[0]_1 ;
  wire \currState_reg[2]_0 ;
  wire \currState_reg_n_0_[0] ;
  wire \currState_reg_n_0_[1] ;
  wire \currState_reg_n_0_[2] ;
  wire equal;
  wire i__carry__0_i_1__0_n_0;
  wire i__carry__0_i_2__0_n_0;
  wire i__carry__0_i_3__0_n_0;
  wire i__carry__0_i_4__0_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_4__0_n_0;
  wire [31:0]idStore;
  wire \nextState1_inferred__1/i__carry__0_n_0 ;
  wire \nextState1_inferred__1/i__carry__0_n_1 ;
  wire \nextState1_inferred__1/i__carry__0_n_2 ;
  wire \nextState1_inferred__1/i__carry__0_n_3 ;
  wire \nextState1_inferred__1/i__carry__1_n_2 ;
  wire \nextState1_inferred__1/i__carry__1_n_3 ;
  wire \nextState1_inferred__1/i__carry_n_0 ;
  wire \nextState1_inferred__1/i__carry_n_1 ;
  wire \nextState1_inferred__1/i__carry_n_2 ;
  wire \nextState1_inferred__1/i__carry_n_3 ;
  wire [3:0]out;
  wire [4:0]p_0_in;
  wire resetN;
  wire resetn;
  wire samplePulse;
  wire [31:0]testData;
  wire \testData[31]_i_2_n_0 ;
  wire [3:0]\NLW_nextState1_inferred__1/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_nextState1_inferred__1/i__carry__0_O_UNCONNECTED ;
  wire [3:3]\NLW_nextState1_inferred__1/i__carry__1_CO_UNCONNECTED ;
  wire [3:0]\NLW_nextState1_inferred__1/i__carry__1_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFFFFFFF3FFFF7F)) 
    \FSM_onehot_currState[2]_i_2__1 
       (.I0(\currState_reg[0]_0 ),
        .I1(resetN),
        .I2(out[2]),
        .I3(out[3]),
        .I4(out[0]),
        .I5(out[1]),
        .O(resetn));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \FSM_onehot_currState[2]_i_3__0 
       (.I0(\currState_reg_n_0_[0] ),
        .I1(\currState_reg_n_0_[1] ),
        .I2(\currState_reg_n_0_[2] ),
        .O(\currState_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1__0 
       (.I0(count_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1 
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count[2]_i_1 
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .I2(count_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \count[3]_i_1 
       (.I0(count_reg[3]),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .I3(count_reg[2]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \count[4]_i_1 
       (.I0(count_reg[4]),
        .I1(count_reg[2]),
        .I2(count_reg[1]),
        .I3(count_reg[0]),
        .I4(count_reg[3]),
        .O(p_0_in[4]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk),
        .CE(\testData[31]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(count_reg[0]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk),
        .CE(\testData[31]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(count_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk),
        .CE(\testData[31]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(count_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk),
        .CE(\testData[31]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(count_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk),
        .CE(\testData[31]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(count_reg[4]),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \currMeta[0]_i_7 
       (.I0(\currState_reg_n_0_[0] ),
        .I1(\currState_reg_n_0_[1] ),
        .I2(\currState_reg_n_0_[2] ),
        .O(\currState_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h1000FFFF)) 
    \currMeta[1]_i_8 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\currState_reg_n_0_[2] ),
        .I3(\currState_reg_n_0_[1] ),
        .I4(Q[2]),
        .O(\currMeta_reg[1] ));
  LUT6 #(
    .INIT(64'h1555555555555555)) 
    \currMeta[3]_i_4 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\currState_reg_n_0_[0] ),
        .I4(\currState_reg_n_0_[1] ),
        .I5(\currState_reg_n_0_[2] ),
        .O(\currMeta_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \currMeta[3]_i_6 
       (.I0(\currState_reg_n_0_[2] ),
        .I1(\currState_reg_n_0_[1] ),
        .O(\currState_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \currState[0]_i_1 
       (.I0(\currState_reg_n_0_[0] ),
        .I1(\currState[0]_i_2__1_n_0 ),
        .I2(\currState[0]_i_3_n_0 ),
        .I3(\currState_reg_n_0_[2] ),
        .I4(\currState[0]_i_4_n_0 ),
        .I5(clear),
        .O(\currState[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h4F)) 
    \currState[0]_i_2__1 
       (.I0(\currState_reg_n_0_[2] ),
        .I1(samplePulse),
        .I2(\currState_reg_n_0_[1] ),
        .O(\currState[0]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h02020F32)) 
    \currState[0]_i_3 
       (.I0(\currState[0]_i_5_n_0 ),
        .I1(\currState[1]_i_3_n_0 ),
        .I2(\currState_reg_n_0_[0] ),
        .I3(\currState_reg_n_0_[1] ),
        .I4(\currState_reg_n_0_[2] ),
        .O(\currState[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h775FFFFF)) 
    \currState[0]_i_4 
       (.I0(equal),
        .I1(\currState_reg_n_0_[0] ),
        .I2(\currState_reg_n_0_[1] ),
        .I3(\currState_reg_n_0_[2] ),
        .I4(\currState[0]_i_6_n_0 ),
        .O(\currState[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h54541114)) 
    \currState[0]_i_5 
       (.I0(\count_reg[4]_0 ),
        .I1(out[2]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(out[3]),
        .O(\currState[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    \currState[0]_i_6 
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .I2(count_reg[2]),
        .I3(count_reg[3]),
        .I4(count_reg[4]),
        .O(\currState[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \currState[1]_i_1 
       (.I0(\currState[1]_i_2_n_0 ),
        .I1(clear),
        .O(\currState[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF3FFFFF2EAE2EAE)) 
    \currState[1]_i_2 
       (.I0(\currState[1]_i_3_n_0 ),
        .I1(\currState_reg_n_0_[0] ),
        .I2(\currState[2]_i_2_n_0 ),
        .I3(\currState_reg_n_0_[2] ),
        .I4(samplePulse),
        .I5(\currState_reg_n_0_[1] ),
        .O(\currState[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0108000000000000)) 
    \currState[1]_i_3 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(out[3]),
        .I3(out[2]),
        .I4(\currState_reg_n_0_[0] ),
        .I5(samplePulse),
        .O(\currState[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A8F0FDFD)) 
    \currState[2]_i_1 
       (.I0(\currState_reg_n_0_[1] ),
        .I1(samplePulse),
        .I2(\currState_reg_n_0_[2] ),
        .I3(\currState_reg_n_0_[0] ),
        .I4(\currState[2]_i_2_n_0 ),
        .I5(clear),
        .O(\currState[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFDFFFFFFFFFFFFF)) 
    \currState[2]_i_2 
       (.I0(\currState_reg_n_0_[2] ),
        .I1(count_reg[4]),
        .I2(count_reg[3]),
        .I3(count_reg[2]),
        .I4(count_reg[1]),
        .I5(count_reg[0]),
        .O(\currState[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \currState_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\currState[0]_i_1_n_0 ),
        .Q(\currState_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \currState_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\currState[1]_i_1_n_0 ),
        .Q(\currState_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \currState_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\currState[2]_i_1_n_0 ),
        .Q(\currState_reg_n_0_[2] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_1__0
       (.I0(idStore[23]),
        .I1(testData[23]),
        .I2(idStore[21]),
        .I3(testData[21]),
        .I4(testData[22]),
        .I5(idStore[22]),
        .O(i__carry__0_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_2__0
       (.I0(idStore[19]),
        .I1(testData[19]),
        .I2(idStore[18]),
        .I3(testData[18]),
        .I4(testData[20]),
        .I5(idStore[20]),
        .O(i__carry__0_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_3__0
       (.I0(idStore[15]),
        .I1(testData[15]),
        .I2(idStore[16]),
        .I3(testData[16]),
        .I4(testData[17]),
        .I5(idStore[17]),
        .O(i__carry__0_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_4__0
       (.I0(idStore[12]),
        .I1(testData[12]),
        .I2(idStore[13]),
        .I3(testData[13]),
        .I4(testData[14]),
        .I5(idStore[14]),
        .O(i__carry__0_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_1
       (.I0(testData[31]),
        .I1(idStore[31]),
        .I2(testData[30]),
        .I3(idStore[30]),
        .O(i__carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__1_i_2
       (.I0(idStore[27]),
        .I1(testData[27]),
        .I2(idStore[28]),
        .I3(testData[28]),
        .I4(testData[29]),
        .I5(idStore[29]),
        .O(i__carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__1_i_3
       (.I0(idStore[26]),
        .I1(testData[26]),
        .I2(idStore[24]),
        .I3(testData[24]),
        .I4(testData[25]),
        .I5(idStore[25]),
        .O(i__carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_1__0
       (.I0(idStore[9]),
        .I1(testData[9]),
        .I2(idStore[10]),
        .I3(testData[10]),
        .I4(testData[11]),
        .I5(idStore[11]),
        .O(i__carry_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2__0
       (.I0(idStore[6]),
        .I1(testData[6]),
        .I2(idStore[7]),
        .I3(testData[7]),
        .I4(testData[8]),
        .I5(idStore[8]),
        .O(i__carry_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3__0
       (.I0(idStore[3]),
        .I1(testData[3]),
        .I2(idStore[4]),
        .I3(testData[4]),
        .I4(testData[5]),
        .I5(idStore[5]),
        .O(i__carry_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_4__0
       (.I0(idStore[0]),
        .I1(testData[0]),
        .I2(idStore[1]),
        .I3(testData[1]),
        .I4(testData[2]),
        .I5(idStore[2]),
        .O(i__carry_i_4__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \idStore_reg[0] 
       (.C(clk),
        .CE(clear),
        .D(canID[0]),
        .Q(idStore[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \idStore_reg[10] 
       (.C(clk),
        .CE(clear),
        .D(canID[10]),
        .Q(idStore[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \idStore_reg[11] 
       (.C(clk),
        .CE(clear),
        .D(canID[11]),
        .Q(idStore[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \idStore_reg[12] 
       (.C(clk),
        .CE(clear),
        .D(canID[12]),
        .Q(idStore[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \idStore_reg[13] 
       (.C(clk),
        .CE(clear),
        .D(canID[13]),
        .Q(idStore[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \idStore_reg[14] 
       (.C(clk),
        .CE(clear),
        .D(canID[14]),
        .Q(idStore[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \idStore_reg[15] 
       (.C(clk),
        .CE(clear),
        .D(canID[15]),
        .Q(idStore[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \idStore_reg[16] 
       (.C(clk),
        .CE(clear),
        .D(canID[16]),
        .Q(idStore[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \idStore_reg[17] 
       (.C(clk),
        .CE(clear),
        .D(canID[17]),
        .Q(idStore[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \idStore_reg[18] 
       (.C(clk),
        .CE(clear),
        .D(canID[18]),
        .Q(idStore[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \idStore_reg[19] 
       (.C(clk),
        .CE(clear),
        .D(canID[19]),
        .Q(idStore[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \idStore_reg[1] 
       (.C(clk),
        .CE(clear),
        .D(canID[1]),
        .Q(idStore[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \idStore_reg[20] 
       (.C(clk),
        .CE(clear),
        .D(canID[20]),
        .Q(idStore[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \idStore_reg[21] 
       (.C(clk),
        .CE(clear),
        .D(canID[21]),
        .Q(idStore[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \idStore_reg[22] 
       (.C(clk),
        .CE(clear),
        .D(canID[22]),
        .Q(idStore[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \idStore_reg[23] 
       (.C(clk),
        .CE(clear),
        .D(canID[23]),
        .Q(idStore[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \idStore_reg[24] 
       (.C(clk),
        .CE(clear),
        .D(canID[24]),
        .Q(idStore[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \idStore_reg[25] 
       (.C(clk),
        .CE(clear),
        .D(canID[25]),
        .Q(idStore[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \idStore_reg[26] 
       (.C(clk),
        .CE(clear),
        .D(canID[26]),
        .Q(idStore[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \idStore_reg[27] 
       (.C(clk),
        .CE(clear),
        .D(canID[27]),
        .Q(idStore[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \idStore_reg[28] 
       (.C(clk),
        .CE(clear),
        .D(canID[28]),
        .Q(idStore[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \idStore_reg[29] 
       (.C(clk),
        .CE(clear),
        .D(canID[29]),
        .Q(idStore[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \idStore_reg[2] 
       (.C(clk),
        .CE(clear),
        .D(canID[2]),
        .Q(idStore[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \idStore_reg[30] 
       (.C(clk),
        .CE(clear),
        .D(canID[30]),
        .Q(idStore[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \idStore_reg[31] 
       (.C(clk),
        .CE(clear),
        .D(canID[31]),
        .Q(idStore[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \idStore_reg[3] 
       (.C(clk),
        .CE(clear),
        .D(canID[3]),
        .Q(idStore[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \idStore_reg[4] 
       (.C(clk),
        .CE(clear),
        .D(canID[4]),
        .Q(idStore[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \idStore_reg[5] 
       (.C(clk),
        .CE(clear),
        .D(canID[5]),
        .Q(idStore[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \idStore_reg[6] 
       (.C(clk),
        .CE(clear),
        .D(canID[6]),
        .Q(idStore[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \idStore_reg[7] 
       (.C(clk),
        .CE(clear),
        .D(canID[7]),
        .Q(idStore[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \idStore_reg[8] 
       (.C(clk),
        .CE(clear),
        .D(canID[8]),
        .Q(idStore[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \idStore_reg[9] 
       (.C(clk),
        .CE(clear),
        .D(canID[9]),
        .Q(idStore[9]),
        .R(1'b0));
  CARRY4 \nextState1_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\nextState1_inferred__1/i__carry_n_0 ,\nextState1_inferred__1/i__carry_n_1 ,\nextState1_inferred__1/i__carry_n_2 ,\nextState1_inferred__1/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_nextState1_inferred__1/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1__0_n_0,i__carry_i_2__0_n_0,i__carry_i_3__0_n_0,i__carry_i_4__0_n_0}));
  CARRY4 \nextState1_inferred__1/i__carry__0 
       (.CI(\nextState1_inferred__1/i__carry_n_0 ),
        .CO({\nextState1_inferred__1/i__carry__0_n_0 ,\nextState1_inferred__1/i__carry__0_n_1 ,\nextState1_inferred__1/i__carry__0_n_2 ,\nextState1_inferred__1/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_nextState1_inferred__1/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_1__0_n_0,i__carry__0_i_2__0_n_0,i__carry__0_i_3__0_n_0,i__carry__0_i_4__0_n_0}));
  CARRY4 \nextState1_inferred__1/i__carry__1 
       (.CI(\nextState1_inferred__1/i__carry__0_n_0 ),
        .CO({\NLW_nextState1_inferred__1/i__carry__1_CO_UNCONNECTED [3],equal,\nextState1_inferred__1/i__carry__1_n_2 ,\nextState1_inferred__1/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_nextState1_inferred__1/i__carry__1_O_UNCONNECTED [3:0]),
        .S({1'b0,i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0}));
  LUT5 #(
    .INIT(32'hFFFF540B)) 
    \testData[31]_i_1 
       (.I0(out[3]),
        .I1(out[1]),
        .I2(out[0]),
        .I3(out[2]),
        .I4(\count_reg[4]_0 ),
        .O(clear));
  LUT3 #(
    .INIT(8'h04)) 
    \testData[31]_i_2 
       (.I0(\currState_reg_n_0_[0] ),
        .I1(\currState_reg_n_0_[2] ),
        .I2(\currState_reg_n_0_[1] ),
        .O(\testData[31]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \testData_reg[0] 
       (.C(clk),
        .CE(\testData[31]_i_2_n_0 ),
        .D(calculatedInput),
        .Q(testData[0]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \testData_reg[10] 
       (.C(clk),
        .CE(\testData[31]_i_2_n_0 ),
        .D(testData[9]),
        .Q(testData[10]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \testData_reg[11] 
       (.C(clk),
        .CE(\testData[31]_i_2_n_0 ),
        .D(testData[10]),
        .Q(testData[11]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \testData_reg[12] 
       (.C(clk),
        .CE(\testData[31]_i_2_n_0 ),
        .D(testData[11]),
        .Q(testData[12]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \testData_reg[13] 
       (.C(clk),
        .CE(\testData[31]_i_2_n_0 ),
        .D(testData[12]),
        .Q(testData[13]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \testData_reg[14] 
       (.C(clk),
        .CE(\testData[31]_i_2_n_0 ),
        .D(testData[13]),
        .Q(testData[14]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \testData_reg[15] 
       (.C(clk),
        .CE(\testData[31]_i_2_n_0 ),
        .D(testData[14]),
        .Q(testData[15]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \testData_reg[16] 
       (.C(clk),
        .CE(\testData[31]_i_2_n_0 ),
        .D(testData[15]),
        .Q(testData[16]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \testData_reg[17] 
       (.C(clk),
        .CE(\testData[31]_i_2_n_0 ),
        .D(testData[16]),
        .Q(testData[17]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \testData_reg[18] 
       (.C(clk),
        .CE(\testData[31]_i_2_n_0 ),
        .D(testData[17]),
        .Q(testData[18]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \testData_reg[19] 
       (.C(clk),
        .CE(\testData[31]_i_2_n_0 ),
        .D(testData[18]),
        .Q(testData[19]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \testData_reg[1] 
       (.C(clk),
        .CE(\testData[31]_i_2_n_0 ),
        .D(testData[0]),
        .Q(testData[1]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \testData_reg[20] 
       (.C(clk),
        .CE(\testData[31]_i_2_n_0 ),
        .D(testData[19]),
        .Q(testData[20]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \testData_reg[21] 
       (.C(clk),
        .CE(\testData[31]_i_2_n_0 ),
        .D(testData[20]),
        .Q(testData[21]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \testData_reg[22] 
       (.C(clk),
        .CE(\testData[31]_i_2_n_0 ),
        .D(testData[21]),
        .Q(testData[22]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \testData_reg[23] 
       (.C(clk),
        .CE(\testData[31]_i_2_n_0 ),
        .D(testData[22]),
        .Q(testData[23]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \testData_reg[24] 
       (.C(clk),
        .CE(\testData[31]_i_2_n_0 ),
        .D(testData[23]),
        .Q(testData[24]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \testData_reg[25] 
       (.C(clk),
        .CE(\testData[31]_i_2_n_0 ),
        .D(testData[24]),
        .Q(testData[25]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \testData_reg[26] 
       (.C(clk),
        .CE(\testData[31]_i_2_n_0 ),
        .D(testData[25]),
        .Q(testData[26]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \testData_reg[27] 
       (.C(clk),
        .CE(\testData[31]_i_2_n_0 ),
        .D(testData[26]),
        .Q(testData[27]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \testData_reg[28] 
       (.C(clk),
        .CE(\testData[31]_i_2_n_0 ),
        .D(testData[27]),
        .Q(testData[28]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \testData_reg[29] 
       (.C(clk),
        .CE(\testData[31]_i_2_n_0 ),
        .D(testData[28]),
        .Q(testData[29]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \testData_reg[2] 
       (.C(clk),
        .CE(\testData[31]_i_2_n_0 ),
        .D(testData[1]),
        .Q(testData[2]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \testData_reg[30] 
       (.C(clk),
        .CE(\testData[31]_i_2_n_0 ),
        .D(testData[29]),
        .Q(testData[30]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \testData_reg[31] 
       (.C(clk),
        .CE(\testData[31]_i_2_n_0 ),
        .D(testData[30]),
        .Q(testData[31]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \testData_reg[3] 
       (.C(clk),
        .CE(\testData[31]_i_2_n_0 ),
        .D(testData[2]),
        .Q(testData[3]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \testData_reg[4] 
       (.C(clk),
        .CE(\testData[31]_i_2_n_0 ),
        .D(testData[3]),
        .Q(testData[4]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \testData_reg[5] 
       (.C(clk),
        .CE(\testData[31]_i_2_n_0 ),
        .D(testData[4]),
        .Q(testData[5]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \testData_reg[6] 
       (.C(clk),
        .CE(\testData[31]_i_2_n_0 ),
        .D(testData[5]),
        .Q(testData[6]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \testData_reg[7] 
       (.C(clk),
        .CE(\testData[31]_i_2_n_0 ),
        .D(testData[6]),
        .Q(testData[7]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \testData_reg[8] 
       (.C(clk),
        .CE(\testData[31]_i_2_n_0 ),
        .D(testData[7]),
        .Q(testData[8]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \testData_reg[9] 
       (.C(clk),
        .CE(\testData[31]_i_2_n_0 ),
        .D(testData[8]),
        .Q(testData[9]),
        .S(clear));
endmodule

module interframeDetect
   (calculatedInput,
    \currState_reg[5]_0 ,
    threeSamplePoint,
    D,
    prevIDSkip_reg,
    \testData_reg[0] ,
    p_2_in,
    \testData_reg[0]_0 ,
    out,
    \currMeta_reg[1] ,
    Q,
    \currMeta_reg[1]_0 ,
    prevIDSkip,
    \currMeta_reg[2] ,
    \currMeta_reg[0] ,
    \currMeta_reg[0]_0 ,
    \currMeta_reg[2]_0 ,
    samplePulse,
    SR,
    clk);
  output calculatedInput;
  output \currState_reg[5]_0 ;
  output threeSamplePoint;
  output [1:0]D;
  output prevIDSkip_reg;
  input \testData_reg[0] ;
  input p_2_in;
  input \testData_reg[0]_0 ;
  input [3:0]out;
  input \currMeta_reg[1] ;
  input [3:0]Q;
  input \currMeta_reg[1]_0 ;
  input prevIDSkip;
  input \currMeta_reg[2] ;
  input \currMeta_reg[0] ;
  input \currMeta_reg[0]_0 ;
  input \currMeta_reg[2]_0 ;
  input samplePulse;
  input [0:0]SR;
  input clk;

  wire [1:0]D;
  wire [3:0]Q;
  wire [0:0]SR;
  wire calculatedInput;
  wire clk;
  wire \currMeta[1]_i_3_n_0 ;
  wire \currMeta[2]_i_2_n_0 ;
  wire \currMeta[3]_i_7_n_0 ;
  wire \currMeta[3]_i_8_n_0 ;
  wire \currMeta_reg[0] ;
  wire \currMeta_reg[0]_0 ;
  wire \currMeta_reg[1] ;
  wire \currMeta_reg[1]_0 ;
  wire \currMeta_reg[2] ;
  wire \currMeta_reg[2]_0 ;
  wire \currSample[0]_i_1_n_0 ;
  wire \currSample[1]_i_1_n_0 ;
  wire \currSample_reg_n_0_[0] ;
  wire \currSample_reg_n_0_[1] ;
  wire \currState[12]_i_1__0_n_0 ;
  wire \currState_reg[12]_i_3_n_1 ;
  wire \currState_reg[12]_i_3_n_2 ;
  wire \currState_reg[12]_i_3_n_3 ;
  wire \currState_reg[4]_i_2_n_0 ;
  wire \currState_reg[4]_i_2_n_1 ;
  wire \currState_reg[4]_i_2_n_2 ;
  wire \currState_reg[4]_i_2_n_3 ;
  wire \currState_reg[5]_0 ;
  wire \currState_reg[8]_i_2_n_0 ;
  wire \currState_reg[8]_i_2_n_1 ;
  wire \currState_reg[8]_i_2_n_2 ;
  wire \currState_reg[8]_i_2_n_3 ;
  wire \currState_reg_n_0_[0] ;
  wire \currState_reg_n_0_[10] ;
  wire \currState_reg_n_0_[11] ;
  wire \currState_reg_n_0_[12] ;
  wire \currState_reg_n_0_[1] ;
  wire \currState_reg_n_0_[2] ;
  wire \currState_reg_n_0_[3] ;
  wire \currState_reg_n_0_[4] ;
  wire \currState_reg_n_0_[5] ;
  wire \currState_reg_n_0_[6] ;
  wire \currState_reg_n_0_[7] ;
  wire \currState_reg_n_0_[8] ;
  wire \currState_reg_n_0_[9] ;
  wire [12:0]nextState;
  wire [12:1]nextState1;
  wire [3:0]out;
  wire p_2_in;
  wire prevIDSkip;
  wire prevIDSkip_reg;
  wire samplePulse;
  wire \testData_reg[0] ;
  wire \testData_reg[0]_0 ;
  wire threeSamplePoint;
  wire [3:3]\NLW_currState_reg[12]_i_3_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h00FF03030F0FAAAA)) 
    \currMeta[0]_i_4 
       (.I0(\currMeta_reg[0] ),
        .I1(prevIDSkip),
        .I2(\currState_reg[5]_0 ),
        .I3(\currMeta_reg[0]_0 ),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(prevIDSkip_reg));
  LUT6 #(
    .INIT(64'h888888888888BB8B)) 
    \currMeta[1]_i_1 
       (.I0(\currMeta_reg[1] ),
        .I1(Q[3]),
        .I2(\currMeta[1]_i_3_n_0 ),
        .I3(Q[2]),
        .I4(\currMeta_reg[1]_0 ),
        .I5(\currMeta[2]_i_2_n_0 ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h07)) 
    \currMeta[1]_i_3 
       (.I0(\currState_reg[5]_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\currMeta[1]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h45)) 
    \currMeta[2]_i_1 
       (.I0(Q[3]),
        .I1(\currMeta[2]_i_2_n_0 ),
        .I2(\currMeta_reg[2]_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h00DC000000100000)) 
    \currMeta[2]_i_2 
       (.I0(\currState_reg[5]_0 ),
        .I1(Q[0]),
        .I2(prevIDSkip),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(\currMeta_reg[2] ),
        .O(\currMeta[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \currMeta[3]_i_5 
       (.I0(\currMeta[3]_i_7_n_0 ),
        .I1(\currMeta[3]_i_8_n_0 ),
        .I2(\currState_reg_n_0_[5] ),
        .I3(\currState_reg_n_0_[3] ),
        .I4(\currState_reg_n_0_[2] ),
        .O(\currState_reg[5]_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \currMeta[3]_i_7 
       (.I0(\currState_reg_n_0_[7] ),
        .I1(\currState_reg_n_0_[6] ),
        .I2(\currState_reg_n_0_[1] ),
        .I3(\currState_reg_n_0_[9] ),
        .I4(\currState_reg_n_0_[12] ),
        .I5(\currState_reg_n_0_[4] ),
        .O(\currMeta[3]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \currMeta[3]_i_8 
       (.I0(\currState_reg_n_0_[11] ),
        .I1(\currState_reg_n_0_[8] ),
        .I2(\currState_reg_n_0_[10] ),
        .I3(\currState_reg_n_0_[0] ),
        .O(\currMeta[3]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h26)) 
    \currSample[0]_i_1 
       (.I0(samplePulse),
        .I1(\currSample_reg_n_0_[0] ),
        .I2(\currSample_reg_n_0_[1] ),
        .O(\currSample[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h0FC4)) 
    \currSample[1]_i_1 
       (.I0(threeSamplePoint),
        .I1(samplePulse),
        .I2(\currSample_reg_n_0_[0] ),
        .I3(\currSample_reg_n_0_[1] ),
        .O(\currSample[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \currSample_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\currSample[0]_i_1_n_0 ),
        .Q(\currSample_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \currSample_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\currSample[1]_i_1_n_0 ),
        .Q(\currSample_reg_n_0_[1] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \currState[0]_i_1__0 
       (.I0(calculatedInput),
        .I1(\currState_reg[5]_0 ),
        .I2(\currState_reg_n_0_[0] ),
        .O(nextState[0]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \currState[10]_i_1__0 
       (.I0(calculatedInput),
        .I1(nextState1[10]),
        .I2(\currState_reg[5]_0 ),
        .O(nextState[10]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \currState[11]_i_1__0 
       (.I0(calculatedInput),
        .I1(nextState1[11]),
        .I2(\currState_reg[5]_0 ),
        .O(nextState[11]));
  LUT2 #(
    .INIT(4'h8)) 
    \currState[12]_i_1__0 
       (.I0(\currSample_reg_n_0_[1] ),
        .I1(\currSample_reg_n_0_[0] ),
        .O(\currState[12]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \currState[12]_i_2 
       (.I0(calculatedInput),
        .I1(nextState1[12]),
        .I2(\currState_reg[5]_0 ),
        .O(nextState[12]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \currState[1]_i_1__1 
       (.I0(calculatedInput),
        .I1(nextState1[1]),
        .I2(\currState_reg[5]_0 ),
        .O(nextState[1]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \currState[2]_i_1__0 
       (.I0(calculatedInput),
        .I1(\currState_reg[5]_0 ),
        .I2(nextState1[2]),
        .O(nextState[2]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \currState[3]_i_1__2 
       (.I0(calculatedInput),
        .I1(\currState_reg[5]_0 ),
        .I2(nextState1[3]),
        .O(nextState[3]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \currState[4]_i_1__1 
       (.I0(calculatedInput),
        .I1(nextState1[4]),
        .I2(\currState_reg[5]_0 ),
        .O(nextState[4]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \currState[5]_i_1__0 
       (.I0(calculatedInput),
        .I1(nextState1[5]),
        .I2(\currState_reg[5]_0 ),
        .O(nextState[5]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \currState[6]_i_1__0 
       (.I0(calculatedInput),
        .I1(nextState1[6]),
        .I2(\currState_reg[5]_0 ),
        .O(nextState[6]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \currState[7]_i_1__0 
       (.I0(calculatedInput),
        .I1(nextState1[7]),
        .I2(\currState_reg[5]_0 ),
        .O(nextState[7]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \currState[8]_i_1__0 
       (.I0(calculatedInput),
        .I1(nextState1[8]),
        .I2(\currState_reg[5]_0 ),
        .O(nextState[8]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \currState[9]_i_1__0 
       (.I0(calculatedInput),
        .I1(nextState1[9]),
        .I2(\currState_reg[5]_0 ),
        .O(nextState[9]));
  FDRE #(
    .INIT(1'b0)) 
    \currState_reg[0] 
       (.C(clk),
        .CE(\currState[12]_i_1__0_n_0 ),
        .D(nextState[0]),
        .Q(\currState_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \currState_reg[10] 
       (.C(clk),
        .CE(\currState[12]_i_1__0_n_0 ),
        .D(nextState[10]),
        .Q(\currState_reg_n_0_[10] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \currState_reg[11] 
       (.C(clk),
        .CE(\currState[12]_i_1__0_n_0 ),
        .D(nextState[11]),
        .Q(\currState_reg_n_0_[11] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \currState_reg[12] 
       (.C(clk),
        .CE(\currState[12]_i_1__0_n_0 ),
        .D(nextState[12]),
        .Q(\currState_reg_n_0_[12] ),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \currState_reg[12]_i_3 
       (.CI(\currState_reg[8]_i_2_n_0 ),
        .CO({\NLW_currState_reg[12]_i_3_CO_UNCONNECTED [3],\currState_reg[12]_i_3_n_1 ,\currState_reg[12]_i_3_n_2 ,\currState_reg[12]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(nextState1[12:9]),
        .S({\currState_reg_n_0_[12] ,\currState_reg_n_0_[11] ,\currState_reg_n_0_[10] ,\currState_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \currState_reg[1] 
       (.C(clk),
        .CE(\currState[12]_i_1__0_n_0 ),
        .D(nextState[1]),
        .Q(\currState_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \currState_reg[2] 
       (.C(clk),
        .CE(\currState[12]_i_1__0_n_0 ),
        .D(nextState[2]),
        .Q(\currState_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \currState_reg[3] 
       (.C(clk),
        .CE(\currState[12]_i_1__0_n_0 ),
        .D(nextState[3]),
        .Q(\currState_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \currState_reg[4] 
       (.C(clk),
        .CE(\currState[12]_i_1__0_n_0 ),
        .D(nextState[4]),
        .Q(\currState_reg_n_0_[4] ),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \currState_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\currState_reg[4]_i_2_n_0 ,\currState_reg[4]_i_2_n_1 ,\currState_reg[4]_i_2_n_2 ,\currState_reg[4]_i_2_n_3 }),
        .CYINIT(\currState_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(nextState1[4:1]),
        .S({\currState_reg_n_0_[4] ,\currState_reg_n_0_[3] ,\currState_reg_n_0_[2] ,\currState_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \currState_reg[5] 
       (.C(clk),
        .CE(\currState[12]_i_1__0_n_0 ),
        .D(nextState[5]),
        .Q(\currState_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \currState_reg[6] 
       (.C(clk),
        .CE(\currState[12]_i_1__0_n_0 ),
        .D(nextState[6]),
        .Q(\currState_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \currState_reg[7] 
       (.C(clk),
        .CE(\currState[12]_i_1__0_n_0 ),
        .D(nextState[7]),
        .Q(\currState_reg_n_0_[7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \currState_reg[8] 
       (.C(clk),
        .CE(\currState[12]_i_1__0_n_0 ),
        .D(nextState[8]),
        .Q(\currState_reg_n_0_[8] ),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \currState_reg[8]_i_2 
       (.CI(\currState_reg[4]_i_2_n_0 ),
        .CO({\currState_reg[8]_i_2_n_0 ,\currState_reg[8]_i_2_n_1 ,\currState_reg[8]_i_2_n_2 ,\currState_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(nextState1[8:5]),
        .S({\currState_reg_n_0_[8] ,\currState_reg_n_0_[7] ,\currState_reg_n_0_[6] ,\currState_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \currState_reg[9] 
       (.C(clk),
        .CE(\currState[12]_i_1__0_n_0 ),
        .D(nextState[9]),
        .Q(\currState_reg_n_0_[9] ),
        .R(SR));
  LUT4 #(
    .INIT(16'hE8AA)) 
    \testData[0]_i_1 
       (.I0(\testData_reg[0] ),
        .I1(p_2_in),
        .I2(\testData_reg[0]_0 ),
        .I3(threeSamplePoint),
        .O(calculatedInput));
  LUT4 #(
    .INIT(16'h1117)) 
    \testData[0]_i_2 
       (.I0(out[2]),
        .I1(out[3]),
        .I2(out[0]),
        .I3(out[1]),
        .O(threeSamplePoint));
endmodule

module oneshot
   (prevIDSkip_reg,
    prevIDSkip,
    out,
    \FSM_onehot_currState_reg[1]_0 ,
    clk);
  output prevIDSkip_reg;
  input prevIDSkip;
  input [2:0]out;
  input \FSM_onehot_currState_reg[1]_0 ;
  input clk;

  wire \FSM_onehot_currState[0]_i_1__1_n_0 ;
  wire \FSM_onehot_currState[1]_i_1__1_n_0 ;
  wire \FSM_onehot_currState[2]_i_1__1_n_0 ;
  wire \FSM_onehot_currState_reg[1]_0 ;
  wire \FSM_onehot_currState_reg_n_0_[0] ;
  wire \FSM_onehot_currState_reg_n_0_[2] ;
  wire clk;
  wire [2:0]out;
  wire prevIDSkip;
  wire prevIDSkip_reg;
  wire tglOS;

  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hFFE0)) 
    \FSM_onehot_currState[0]_i_1__1 
       (.I0(\FSM_onehot_currState_reg_n_0_[0] ),
        .I1(tglOS),
        .I2(\FSM_onehot_currState_reg_n_0_[2] ),
        .I3(\FSM_onehot_currState_reg[1]_0 ),
        .O(\FSM_onehot_currState[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \FSM_onehot_currState[1]_i_1__1 
       (.I0(\FSM_onehot_currState_reg_n_0_[0] ),
        .I1(tglOS),
        .I2(\FSM_onehot_currState_reg_n_0_[2] ),
        .I3(\FSM_onehot_currState_reg[1]_0 ),
        .O(\FSM_onehot_currState[1]_i_1__1_n_0 ));
  LUT3 #(
    .INIT(8'h0E)) 
    \FSM_onehot_currState[2]_i_1__1 
       (.I0(tglOS),
        .I1(\FSM_onehot_currState_reg_n_0_[2] ),
        .I2(\FSM_onehot_currState_reg[1]_0 ),
        .O(\FSM_onehot_currState[2]_i_1__1_n_0 ));
  (* FSM_ENCODED_STATES = "STATE0:0001,STATE2:0100,iSTATE:1000,STATE1:0010" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_currState_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_currState[0]_i_1__1_n_0 ),
        .Q(\FSM_onehot_currState_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "STATE0:0001,STATE2:0100,iSTATE:1000,STATE1:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_currState_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_currState[1]_i_1__1_n_0 ),
        .Q(tglOS),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "STATE0:0001,STATE2:0100,iSTATE:1000,STATE1:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_currState_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_currState[2]_i_1__1_n_0 ),
        .Q(\FSM_onehot_currState_reg_n_0_[2] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h66660006)) 
    prevIDSkip_i_1
       (.I0(prevIDSkip),
        .I1(tglOS),
        .I2(out[1]),
        .I3(out[0]),
        .I4(out[2]),
        .O(prevIDSkip_reg));
endmodule

(* ORIG_REF_NAME = "oneshot" *) 
module oneshot_1
   (\runningSample_reg[2] ,
    \FSM_onehot_currState_reg[1]_0 ,
    \runningSample_reg[1] ,
    \runningSample_reg[0] ,
    D,
    p_2_in,
    \runningSample_reg[1]_0 ,
    resetN,
    canClk,
    canClkPrevValue,
    \runningSample_reg[0]_0 ,
    sampleInput,
    \currMeta_reg[0] ,
    Q,
    \currMeta_reg[0]_0 ,
    \currMeta_reg[0]_1 ,
    \currMeta_reg[0]_2 ,
    \FSM_onehot_currState_reg[2]_0 ,
    clk);
  output \runningSample_reg[2] ;
  output \FSM_onehot_currState_reg[1]_0 ;
  output \runningSample_reg[1] ;
  output \runningSample_reg[0] ;
  output [0:0]D;
  input p_2_in;
  input \runningSample_reg[1]_0 ;
  input resetN;
  input canClk;
  input canClkPrevValue;
  input \runningSample_reg[0]_0 ;
  input sampleInput;
  input \currMeta_reg[0] ;
  input [3:0]Q;
  input \currMeta_reg[0]_0 ;
  input \currMeta_reg[0]_1 ;
  input \currMeta_reg[0]_2 ;
  input \FSM_onehot_currState_reg[2]_0 ;
  input clk;

  wire [0:0]D;
  wire \FSM_onehot_currState[0]_i_1_n_0 ;
  wire \FSM_onehot_currState[1]_i_1_n_0 ;
  wire \FSM_onehot_currState[2]_i_1_n_0 ;
  wire \FSM_onehot_currState_reg[1]_0 ;
  wire \FSM_onehot_currState_reg[2]_0 ;
  wire \FSM_onehot_currState_reg_n_0_[0] ;
  wire \FSM_onehot_currState_reg_n_0_[2] ;
  wire [3:0]Q;
  wire canClk;
  wire canClkPrevValue;
  wire clk;
  wire \currMeta[0]_i_3_n_0 ;
  wire \currMeta_reg[0] ;
  wire \currMeta_reg[0]_0 ;
  wire \currMeta_reg[0]_1 ;
  wire \currMeta_reg[0]_2 ;
  wire p_2_in;
  wire resetN;
  wire \runningSample_reg[0] ;
  wire \runningSample_reg[0]_0 ;
  wire \runningSample_reg[1] ;
  wire \runningSample_reg[1]_0 ;
  wire \runningSample_reg[2] ;
  wire sampleInput;

  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hFFE0)) 
    \FSM_onehot_currState[0]_i_1 
       (.I0(\FSM_onehot_currState_reg[1]_0 ),
        .I1(\FSM_onehot_currState_reg_n_0_[0] ),
        .I2(\FSM_onehot_currState_reg_n_0_[2] ),
        .I3(\FSM_onehot_currState_reg[2]_0 ),
        .O(\FSM_onehot_currState[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \FSM_onehot_currState[1]_i_1 
       (.I0(\FSM_onehot_currState_reg[1]_0 ),
        .I1(\FSM_onehot_currState_reg_n_0_[2] ),
        .I2(\FSM_onehot_currState_reg_n_0_[0] ),
        .I3(\FSM_onehot_currState_reg[2]_0 ),
        .O(\FSM_onehot_currState[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h0E)) 
    \FSM_onehot_currState[2]_i_1 
       (.I0(\FSM_onehot_currState_reg_n_0_[2] ),
        .I1(\FSM_onehot_currState_reg[1]_0 ),
        .I2(\FSM_onehot_currState_reg[2]_0 ),
        .O(\FSM_onehot_currState[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "STATE0:0001,STATE2:0100,iSTATE:1000,STATE1:0010" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_currState_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_currState[0]_i_1_n_0 ),
        .Q(\FSM_onehot_currState_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "STATE0:0001,STATE2:0100,iSTATE:1000,STATE1:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_currState_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_currState[1]_i_1_n_0 ),
        .Q(\FSM_onehot_currState_reg[1]_0 ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "STATE0:0001,STATE2:0100,iSTATE:1000,STATE1:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_currState_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_currState[2]_i_1_n_0 ),
        .Q(\FSM_onehot_currState_reg_n_0_[2] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \currMeta[0]_i_1 
       (.I0(\currMeta_reg[0] ),
        .I1(Q[3]),
        .I2(\currMeta[0]_i_3_n_0 ),
        .I3(Q[2]),
        .I4(\currMeta_reg[0]_0 ),
        .O(D));
  LUT6 #(
    .INIT(64'hFFF0F0F040404040)) 
    \currMeta[0]_i_3 
       (.I0(Q[1]),
        .I1(\currMeta_reg[0]_1 ),
        .I2(Q[0]),
        .I3(sampleInput),
        .I4(\FSM_onehot_currState_reg[1]_0 ),
        .I5(\currMeta_reg[0]_2 ),
        .O(\currMeta[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hE200E2000000E200)) 
    \runningSample[0]_i_1 
       (.I0(\runningSample_reg[0]_0 ),
        .I1(\FSM_onehot_currState_reg[1]_0 ),
        .I2(sampleInput),
        .I3(resetN),
        .I4(canClk),
        .I5(canClkPrevValue),
        .O(\runningSample_reg[0] ));
  LUT6 #(
    .INIT(64'hE200E2000000E200)) 
    \runningSample[1]_i_1 
       (.I0(\runningSample_reg[1]_0 ),
        .I1(\FSM_onehot_currState_reg[1]_0 ),
        .I2(\runningSample_reg[0]_0 ),
        .I3(resetN),
        .I4(canClk),
        .I5(canClkPrevValue),
        .O(\runningSample_reg[1] ));
  LUT6 #(
    .INIT(64'hE200E2000000E200)) 
    \runningSample[2]_i_1 
       (.I0(p_2_in),
        .I1(\FSM_onehot_currState_reg[1]_0 ),
        .I2(\runningSample_reg[1]_0 ),
        .I3(resetN),
        .I4(canClk),
        .I5(canClkPrevValue),
        .O(\runningSample_reg[2] ));
endmodule

(* ORIG_REF_NAME = "oneshot" *) 
module oneshot_2
   (incrementReqCountOS,
    clear,
    Q,
    clk);
  output incrementReqCountOS;
  input clear;
  input [3:0]Q;
  input clk;

  wire \FSM_onehot_currState[0]_i_1__3_n_0 ;
  wire \FSM_onehot_currState[1]_i_1__3_n_0 ;
  wire \FSM_onehot_currState[2]_i_1__3_n_0 ;
  wire \FSM_onehot_currState[2]_i_2__0_n_0 ;
  wire \FSM_onehot_currState_reg_n_0_[0] ;
  wire \FSM_onehot_currState_reg_n_0_[2] ;
  wire [3:0]Q;
  wire clear;
  wire clk;
  wire incrementReqCountOS;

  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hFFE0)) 
    \FSM_onehot_currState[0]_i_1__3 
       (.I0(incrementReqCountOS),
        .I1(\FSM_onehot_currState_reg_n_0_[0] ),
        .I2(\FSM_onehot_currState_reg_n_0_[2] ),
        .I3(\FSM_onehot_currState[2]_i_2__0_n_0 ),
        .O(\FSM_onehot_currState[0]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \FSM_onehot_currState[1]_i_1__3 
       (.I0(\FSM_onehot_currState_reg_n_0_[2] ),
        .I1(incrementReqCountOS),
        .I2(\FSM_onehot_currState_reg_n_0_[0] ),
        .I3(\FSM_onehot_currState[2]_i_2__0_n_0 ),
        .O(\FSM_onehot_currState[1]_i_1__3_n_0 ));
  LUT3 #(
    .INIT(8'h0E)) 
    \FSM_onehot_currState[2]_i_1__3 
       (.I0(incrementReqCountOS),
        .I1(\FSM_onehot_currState_reg_n_0_[2] ),
        .I2(\FSM_onehot_currState[2]_i_2__0_n_0 ),
        .O(\FSM_onehot_currState[2]_i_1__3_n_0 ));
  LUT5 #(
    .INIT(32'hFFBFFFFF)) 
    \FSM_onehot_currState[2]_i_2__0 
       (.I0(clear),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\FSM_onehot_currState[2]_i_2__0_n_0 ));
  (* FSM_ENCODED_STATES = "STATE0:0001,STATE2:0100,iSTATE:1000,STATE1:0010" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_currState_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_currState[0]_i_1__3_n_0 ),
        .Q(\FSM_onehot_currState_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "STATE0:0001,STATE2:0100,iSTATE:1000,STATE1:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_currState_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_currState[1]_i_1__3_n_0 ),
        .Q(incrementReqCountOS),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "STATE0:0001,STATE2:0100,iSTATE:1000,STATE1:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_currState_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_currState[2]_i_1__3_n_0 ),
        .Q(\FSM_onehot_currState_reg_n_0_[2] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "oneshot" *) 
module oneshot_3
   (clear,
    D,
    E,
    playbackOS,
    out,
    currReq,
    Q,
    \currState_reg[1] ,
    \currState_reg[1]_0 ,
    \currState_reg[0] ,
    \currState_reg[0]_0 ,
    clkOut,
    clk);
  output clear;
  output [1:0]D;
  output [0:0]E;
  output playbackOS;
  input [2:0]out;
  input [1:0]currReq;
  input [4:0]Q;
  input [1:0]\currState_reg[1] ;
  input \currState_reg[1]_0 ;
  input \currState_reg[0] ;
  input \currState_reg[0]_0 ;
  input clkOut;
  input clk;

  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_onehot_currState[0]_i_1__2_n_0 ;
  wire \FSM_onehot_currState[1]_i_1__2_n_0 ;
  wire \FSM_onehot_currState[2]_i_1__2_n_0 ;
  wire \FSM_onehot_currState_reg_n_0_[0] ;
  wire \FSM_onehot_currState_reg_n_0_[2] ;
  wire [4:0]Q;
  wire clear;
  wire clk;
  wire clkOut;
  wire [1:0]currReq;
  wire \currState[1]_i_2_n_0 ;
  wire \currState_reg[0] ;
  wire \currState_reg[0]_0 ;
  wire [1:0]\currState_reg[1] ;
  wire \currState_reg[1]_0 ;
  wire [2:0]out;
  wire playbackOS;

  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'hFFFFE0FF)) 
    \FSM_onehot_currState[0]_i_1__2 
       (.I0(playbackOS),
        .I1(\FSM_onehot_currState_reg_n_0_[0] ),
        .I2(\FSM_onehot_currState_reg_n_0_[2] ),
        .I3(clkOut),
        .I4(clear),
        .O(\FSM_onehot_currState[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \FSM_onehot_currState[1]_i_1__2 
       (.I0(\FSM_onehot_currState_reg_n_0_[2] ),
        .I1(playbackOS),
        .I2(\FSM_onehot_currState_reg_n_0_[0] ),
        .I3(clkOut),
        .I4(clear),
        .O(\FSM_onehot_currState[1]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'h00E0)) 
    \FSM_onehot_currState[2]_i_1__2 
       (.I0(playbackOS),
        .I1(\FSM_onehot_currState_reg_n_0_[2] ),
        .I2(clkOut),
        .I3(clear),
        .O(\FSM_onehot_currState[2]_i_1__2_n_0 ));
  (* FSM_ENCODED_STATES = "STATE0:0001,STATE2:0100,iSTATE:1000,STATE1:0010" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_currState_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_currState[0]_i_1__2_n_0 ),
        .Q(\FSM_onehot_currState_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "STATE0:0001,STATE2:0100,iSTATE:1000,STATE1:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_currState_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_currState[1]_i_1__2_n_0 ),
        .Q(playbackOS),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "STATE0:0001,STATE2:0100,iSTATE:1000,STATE1:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_currState_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_currState[2]_i_1__2_n_0 ),
        .Q(\FSM_onehot_currState_reg_n_0_[2] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h5030F0FF)) 
    \currState[0]_i_1__2 
       (.I0(playbackOS),
        .I1(\currState_reg[0] ),
        .I2(\currState_reg[0]_0 ),
        .I3(Q[4]),
        .I4(Q[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h000100FD0301FF01)) 
    \currState[1]_i_1 
       (.I0(\currState[1]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[4]),
        .I5(Q[0]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h00FBFFFBFFFFFFFF)) 
    \currState[1]_i_2 
       (.I0(\currState_reg[1] [1]),
        .I1(\currState_reg[1] [0]),
        .I2(\currState_reg[1]_0 ),
        .I3(Q[4]),
        .I4(playbackOS),
        .I5(Q[0]),
        .O(\currState[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFF0E)) 
    \currState[4]_i_1 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(out[2]),
        .I3(currReq[1]),
        .I4(currReq[0]),
        .O(clear));
  LUT6 #(
    .INIT(64'hEEEEEEEFEEEEEEEB)) 
    \currState[4]_i_2 
       (.I0(playbackOS),
        .I1(Q[4]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(E));
endmodule

(* ORIG_REF_NAME = "oneshot" *) 
module oneshot_4
   (read,
    \FSM_onehot_currState_reg[2]_0 ,
    clk);
  output read;
  input \FSM_onehot_currState_reg[2]_0 ;
  input clk;

  wire \FSM_onehot_currState[0]_i_1__0_n_0 ;
  wire \FSM_onehot_currState[1]_i_1__0_n_0 ;
  wire \FSM_onehot_currState[2]_i_1__0_n_0 ;
  wire \FSM_onehot_currState_reg[2]_0 ;
  wire \FSM_onehot_currState_reg_n_0_[0] ;
  wire \FSM_onehot_currState_reg_n_0_[2] ;
  wire clk;
  wire read;

  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFFE0)) 
    \FSM_onehot_currState[0]_i_1__0 
       (.I0(\FSM_onehot_currState_reg_n_0_[0] ),
        .I1(read),
        .I2(\FSM_onehot_currState_reg_n_0_[2] ),
        .I3(\FSM_onehot_currState_reg[2]_0 ),
        .O(\FSM_onehot_currState[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \FSM_onehot_currState[1]_i_1__0 
       (.I0(\FSM_onehot_currState_reg_n_0_[0] ),
        .I1(read),
        .I2(\FSM_onehot_currState_reg_n_0_[2] ),
        .I3(\FSM_onehot_currState_reg[2]_0 ),
        .O(\FSM_onehot_currState[1]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h0E)) 
    \FSM_onehot_currState[2]_i_1__0 
       (.I0(read),
        .I1(\FSM_onehot_currState_reg_n_0_[2] ),
        .I2(\FSM_onehot_currState_reg[2]_0 ),
        .O(\FSM_onehot_currState[2]_i_1__0_n_0 ));
  (* FSM_ENCODED_STATES = "STATE0:0001,STATE2:0100,iSTATE:1000,STATE1:0010" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_currState_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_currState[0]_i_1__0_n_0 ),
        .Q(\FSM_onehot_currState_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "STATE0:0001,STATE2:0100,iSTATE:1000,STATE1:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_currState_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_currState[1]_i_1__0_n_0 ),
        .Q(read),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "STATE0:0001,STATE2:0100,iSTATE:1000,STATE1:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_currState_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_currState[2]_i_1__0_n_0 ),
        .Q(\FSM_onehot_currState_reg_n_0_[2] ),
        .R(1'b0));
endmodule

module playbackUnit
   (\currInit_reg[1] ,
    outSwitch,
    sampleOut,
    \currState_reg[1]_0 ,
    \currState_reg[1]_1 ,
    \currState_reg[0]_0 ,
    \currMeta_reg[0] ,
    \currState_reg[0]_1 ,
    D,
    \currState_reg[1]_2 ,
    \currMeta_reg[1] ,
    \currMeta_reg[1]_0 ,
    dout,
    clk,
    out,
    currReq,
    dOut,
    enOut,
    sigSizeWords,
    \currState_reg[1]_3 ,
    resetN,
    \currMeta_reg[3] ,
    Q,
    \currMeta_reg[3]_0 ,
    \currMeta_reg[3]_1 ,
    \currMeta_reg[1]_1 ,
    \currMeta_reg[1]_2 ,
    clkOut);
  output \currInit_reg[1] ;
  output outSwitch;
  output sampleOut;
  output \currState_reg[1]_0 ;
  output \currState_reg[1]_1 ;
  output [0:0]\currState_reg[0]_0 ;
  output \currMeta_reg[0] ;
  output \currState_reg[0]_1 ;
  output [0:0]D;
  output \currState_reg[1]_2 ;
  output \currMeta_reg[1] ;
  output \currMeta_reg[1]_0 ;
  input [15:0]dout;
  input clk;
  input [2:0]out;
  input [1:0]currReq;
  input dOut;
  input enOut;
  input [15:0]sigSizeWords;
  input [3:0]\currState_reg[1]_3 ;
  input resetN;
  input \currMeta_reg[3] ;
  input [3:0]Q;
  input \currMeta_reg[3]_0 ;
  input \currMeta_reg[3]_1 ;
  input \currMeta_reg[1]_1 ;
  input \currMeta_reg[1]_2 ;
  input clkOut;

  wire [0:0]D;
  wire [3:0]Q;
  wire clk;
  wire clkOut;
  wire \currInit_reg[1] ;
  wire \currMeta_reg[0] ;
  wire \currMeta_reg[1] ;
  wire \currMeta_reg[1]_0 ;
  wire \currMeta_reg[1]_1 ;
  wire \currMeta_reg[1]_2 ;
  wire \currMeta_reg[3] ;
  wire \currMeta_reg[3]_0 ;
  wire \currMeta_reg[3]_1 ;
  wire [1:0]currReq;
  wire \currState[0]_i_2__0_n_0 ;
  wire \currState[0]_i_3__0_n_0 ;
  wire \currState[4]_i_4_n_0 ;
  wire [0:0]\currState_reg[0]_0 ;
  wire \currState_reg[0]_1 ;
  wire \currState_reg[1]_0 ;
  wire \currState_reg[1]_1 ;
  wire \currState_reg[1]_2 ;
  wire [3:0]\currState_reg[1]_3 ;
  wire \currState_reg_n_0_[0] ;
  wire \currState_reg_n_0_[1] ;
  wire \currState_reg_n_0_[2] ;
  wire \currState_reg_n_0_[3] ;
  wire \currState_reg_n_0_[4] ;
  wire dOut;
  wire [15:0]dout;
  wire enOut;
  wire g0_b3_n_0;
  wire heldOutputVals;
  wire \heldOutputVals_reg[0][enable] ;
  wire \heldOutputVals_reg[0][out] ;
  wire \heldOutputVals_reg[1][enable] ;
  wire \heldOutputVals_reg[1][out] ;
  wire \heldOutputVals_reg[2][enable] ;
  wire \heldOutputVals_reg[2][out] ;
  wire \heldOutputVals_reg[3][enable] ;
  wire \heldOutputVals_reg[3][out] ;
  wire \heldOutputVals_reg[4][enable] ;
  wire \heldOutputVals_reg[4][out] ;
  wire \heldOutputVals_reg[5][enable] ;
  wire \heldOutputVals_reg[5][out] ;
  wire \heldOutputVals_reg[6][enable] ;
  wire \heldOutputVals_reg[6][out] ;
  wire \heldOutputVals_reg[7][enable] ;
  wire \heldOutputVals_reg[7][out] ;
  wire i__carry__0_i_1__1_n_0;
  wire i__carry__0_i_2__1_n_0;
  wire i__carry__0_i_3__1_n_0;
  wire i__carry__0_i_4__1_n_0;
  wire i__carry__0_i_5__0_n_0;
  wire i__carry__0_i_6__0_n_0;
  wire i__carry__0_i_7__0_n_0;
  wire i__carry__0_i_8__0_n_0;
  wire i__carry_i_1__1_n_0;
  wire i__carry_i_2__1_n_0;
  wire i__carry_i_3__1_n_0;
  wire i__carry_i_4__1_n_0;
  wire i__carry_i_5__0_n_0;
  wire i__carry_i_6__0_n_0;
  wire i__carry_i_7__0_n_0;
  wire i__carry_i_8__0_n_0;
  wire incrementReqCountOS;
  wire [4:0]nextState;
  wire \nextState1_inferred__0/i__carry__0_n_0 ;
  wire \nextState1_inferred__0/i__carry__0_n_1 ;
  wire \nextState1_inferred__0/i__carry__0_n_2 ;
  wire \nextState1_inferred__0/i__carry__0_n_3 ;
  wire \nextState1_inferred__0/i__carry_n_0 ;
  wire \nextState1_inferred__0/i__carry_n_1 ;
  wire \nextState1_inferred__0/i__carry_n_2 ;
  wire \nextState1_inferred__0/i__carry_n_3 ;
  wire [2:0]out;
  wire outSwitch;
  wire outSwitch_INST_0_i_1_n_0;
  wire outSwitch_INST_0_i_3_n_0;
  wire outSwitch_INST_0_i_6_n_0;
  wire outSwitch_INST_0_i_7_n_0;
  wire pbos_n_3;
  wire playbackOS;
  wire \requestCount[0]_i_2_n_0 ;
  wire [15:0]requestCount_reg;
  wire \requestCount_reg[0]_i_1_n_0 ;
  wire \requestCount_reg[0]_i_1_n_1 ;
  wire \requestCount_reg[0]_i_1_n_2 ;
  wire \requestCount_reg[0]_i_1_n_3 ;
  wire \requestCount_reg[0]_i_1_n_4 ;
  wire \requestCount_reg[0]_i_1_n_5 ;
  wire \requestCount_reg[0]_i_1_n_6 ;
  wire \requestCount_reg[0]_i_1_n_7 ;
  wire \requestCount_reg[12]_i_1_n_1 ;
  wire \requestCount_reg[12]_i_1_n_2 ;
  wire \requestCount_reg[12]_i_1_n_3 ;
  wire \requestCount_reg[12]_i_1_n_4 ;
  wire \requestCount_reg[12]_i_1_n_5 ;
  wire \requestCount_reg[12]_i_1_n_6 ;
  wire \requestCount_reg[12]_i_1_n_7 ;
  wire \requestCount_reg[4]_i_1_n_0 ;
  wire \requestCount_reg[4]_i_1_n_1 ;
  wire \requestCount_reg[4]_i_1_n_2 ;
  wire \requestCount_reg[4]_i_1_n_3 ;
  wire \requestCount_reg[4]_i_1_n_4 ;
  wire \requestCount_reg[4]_i_1_n_5 ;
  wire \requestCount_reg[4]_i_1_n_6 ;
  wire \requestCount_reg[4]_i_1_n_7 ;
  wire \requestCount_reg[8]_i_1_n_0 ;
  wire \requestCount_reg[8]_i_1_n_1 ;
  wire \requestCount_reg[8]_i_1_n_2 ;
  wire \requestCount_reg[8]_i_1_n_3 ;
  wire \requestCount_reg[8]_i_1_n_4 ;
  wire \requestCount_reg[8]_i_1_n_5 ;
  wire \requestCount_reg[8]_i_1_n_6 ;
  wire \requestCount_reg[8]_i_1_n_7 ;
  wire resetN;
  wire sampleOut;
  wire sampleOut_INST_0_i_1_n_0;
  wire sampleOut_INST_0_i_3_n_0;
  wire sampleOut_INST_0_i_6_n_0;
  wire sampleOut_INST_0_i_7_n_0;
  wire [15:0]sigSizeWords;
  wire [3:0]\NLW_nextState1_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_nextState1_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:3]\NLW_requestCount_reg[12]_i_1_CO_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \FSM_onehot_currState[2]_i_2__2 
       (.I0(\currState_reg_n_0_[0] ),
        .I1(\currState_reg_n_0_[1] ),
        .I2(resetN),
        .I3(\currState_reg_n_0_[3] ),
        .I4(\currState_reg_n_0_[2] ),
        .O(\currState_reg[0]_1 ));
  LUT4 #(
    .INIT(16'h2AAA)) 
    \currMeta[0]_i_5 
       (.I0(Q[1]),
        .I1(\currState_reg_n_0_[4] ),
        .I2(\currState_reg_n_0_[1] ),
        .I3(Q[0]),
        .O(\currMeta_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h00000000E2223333)) 
    \currMeta[1]_i_4 
       (.I0(\currMeta_reg[1]_1 ),
        .I1(Q[1]),
        .I2(\currState_reg_n_0_[4] ),
        .I3(\currState_reg_n_0_[1] ),
        .I4(Q[0]),
        .I5(\currMeta_reg[1]_2 ),
        .O(\currMeta_reg[1] ));
  LUT6 #(
    .INIT(64'hF0FF2222FFFF2222)) 
    \currMeta[3]_i_2 
       (.I0(\currState_reg[1]_2 ),
        .I1(\currMeta_reg[3] ),
        .I2(Q[0]),
        .I3(\currMeta_reg[3]_0 ),
        .I4(Q[3]),
        .I5(Q[1]),
        .O(D));
  LUT6 #(
    .INIT(64'h8F8F0F0F0F0F0FFF)) 
    \currMeta[3]_i_3 
       (.I0(\currState_reg_n_0_[1] ),
        .I1(\currState_reg_n_0_[4] ),
        .I2(Q[2]),
        .I3(\currMeta_reg[3]_1 ),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\currState_reg[1]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \currState[0]_i_2__0 
       (.I0(\currState_reg[1]_3 [3]),
        .I1(\currState_reg[1]_3 [2]),
        .I2(\currState_reg[1]_3 [1]),
        .I3(\currState_reg[1]_3 [0]),
        .O(\currState[0]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \currState[0]_i_3__0 
       (.I0(\currState_reg_n_0_[2] ),
        .I1(\currState_reg_n_0_[3] ),
        .I2(\currState_reg_n_0_[1] ),
        .O(\currState[0]_i_3__0_n_0 ));
  LUT4 #(
    .INIT(16'h1540)) 
    \currState[2]_i_1__1 
       (.I0(\currState_reg_n_0_[4] ),
        .I1(\currState_reg_n_0_[1] ),
        .I2(\currState_reg_n_0_[0] ),
        .I3(\currState_reg_n_0_[2] ),
        .O(nextState[2]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h15554000)) 
    \currState[3]_i_1__0 
       (.I0(\currState_reg_n_0_[4] ),
        .I1(\currState_reg_n_0_[0] ),
        .I2(\currState_reg_n_0_[1] ),
        .I3(\currState_reg_n_0_[2] ),
        .I4(\currState_reg_n_0_[3] ),
        .O(nextState[3]));
  LUT6 #(
    .INIT(64'h220000440000004F)) 
    \currState[4]_i_3 
       (.I0(\currState_reg_n_0_[0] ),
        .I1(\currState_reg_n_0_[4] ),
        .I2(\currState[4]_i_4_n_0 ),
        .I3(\currState_reg_n_0_[2] ),
        .I4(\currState_reg_n_0_[3] ),
        .I5(\currState_reg_n_0_[1] ),
        .O(nextState[4]));
  LUT4 #(
    .INIT(16'h8FFF)) 
    \currState[4]_i_4 
       (.I0(\nextState1_inferred__0/i__carry__0_n_0 ),
        .I1(playbackOS),
        .I2(\currState_reg_n_0_[0] ),
        .I3(\currState_reg_n_0_[4] ),
        .O(\currState[4]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \currState_reg[0] 
       (.C(clk),
        .CE(pbos_n_3),
        .D(nextState[0]),
        .Q(\currState_reg_n_0_[0] ),
        .R(\currInit_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \currState_reg[1] 
       (.C(clk),
        .CE(pbos_n_3),
        .D(nextState[1]),
        .Q(\currState_reg_n_0_[1] ),
        .R(\currInit_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \currState_reg[2] 
       (.C(clk),
        .CE(pbos_n_3),
        .D(nextState[2]),
        .Q(\currState_reg_n_0_[2] ),
        .R(\currInit_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \currState_reg[3] 
       (.C(clk),
        .CE(pbos_n_3),
        .D(nextState[3]),
        .Q(\currState_reg_n_0_[3] ),
        .R(\currInit_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \currState_reg[4] 
       (.C(clk),
        .CE(pbos_n_3),
        .D(nextState[4]),
        .Q(\currState_reg_n_0_[4] ),
        .R(\currInit_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h7)) 
    disableClk_inv_i_2
       (.I0(\currState_reg[1]_3 [0]),
        .I1(\currState_reg[1]_3 [1]),
        .O(\currMeta_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h0002AAA8)) 
    g0_b0
       (.I0(\currState_reg_n_0_[0] ),
        .I1(\currState_reg_n_0_[1] ),
        .I2(\currState_reg_n_0_[2] ),
        .I3(\currState_reg_n_0_[3] ),
        .I4(\currState_reg_n_0_[4] ),
        .O(\currState_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h0154)) 
    g0_b1
       (.I0(\currState_reg_n_0_[1] ),
        .I1(\currState_reg_n_0_[2] ),
        .I2(\currState_reg_n_0_[3] ),
        .I3(\currState_reg_n_0_[4] ),
        .O(\currState_reg[1]_1 ));
  LUT4 #(
    .INIT(16'h0198)) 
    g0_b2
       (.I0(\currState_reg_n_0_[1] ),
        .I1(\currState_reg_n_0_[2] ),
        .I2(\currState_reg_n_0_[3] ),
        .I3(\currState_reg_n_0_[4] ),
        .O(\currState_reg[1]_0 ));
  LUT4 #(
    .INIT(16'h01E0)) 
    g0_b3
       (.I0(\currState_reg_n_0_[1] ),
        .I1(\currState_reg_n_0_[2] ),
        .I2(\currState_reg_n_0_[3] ),
        .I3(\currState_reg_n_0_[4] ),
        .O(g0_b3_n_0));
  LUT4 #(
    .INIT(16'h0008)) 
    \heldOutputVals[0][out][0]_i_1 
       (.I0(\currState_reg[1]_0 ),
        .I1(\currState_reg[1]_1 ),
        .I2(g0_b3_n_0),
        .I3(\currState_reg[0]_0 ),
        .O(heldOutputVals));
  FDRE #(
    .INIT(1'b0)) 
    \heldOutputVals_reg[0][enable][0] 
       (.C(clk),
        .CE(heldOutputVals),
        .D(dout[1]),
        .Q(\heldOutputVals_reg[0][enable] ),
        .R(\currInit_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \heldOutputVals_reg[0][out][0] 
       (.C(clk),
        .CE(heldOutputVals),
        .D(dout[0]),
        .Q(\heldOutputVals_reg[0][out] ),
        .R(\currInit_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \heldOutputVals_reg[1][enable][0] 
       (.C(clk),
        .CE(heldOutputVals),
        .D(dout[3]),
        .Q(\heldOutputVals_reg[1][enable] ),
        .R(\currInit_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \heldOutputVals_reg[1][out][0] 
       (.C(clk),
        .CE(heldOutputVals),
        .D(dout[2]),
        .Q(\heldOutputVals_reg[1][out] ),
        .R(\currInit_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \heldOutputVals_reg[2][enable][0] 
       (.C(clk),
        .CE(heldOutputVals),
        .D(dout[5]),
        .Q(\heldOutputVals_reg[2][enable] ),
        .R(\currInit_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \heldOutputVals_reg[2][out][0] 
       (.C(clk),
        .CE(heldOutputVals),
        .D(dout[4]),
        .Q(\heldOutputVals_reg[2][out] ),
        .R(\currInit_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \heldOutputVals_reg[3][enable][0] 
       (.C(clk),
        .CE(heldOutputVals),
        .D(dout[7]),
        .Q(\heldOutputVals_reg[3][enable] ),
        .R(\currInit_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \heldOutputVals_reg[3][out][0] 
       (.C(clk),
        .CE(heldOutputVals),
        .D(dout[6]),
        .Q(\heldOutputVals_reg[3][out] ),
        .R(\currInit_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \heldOutputVals_reg[4][enable][0] 
       (.C(clk),
        .CE(heldOutputVals),
        .D(dout[9]),
        .Q(\heldOutputVals_reg[4][enable] ),
        .R(\currInit_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \heldOutputVals_reg[4][out][0] 
       (.C(clk),
        .CE(heldOutputVals),
        .D(dout[8]),
        .Q(\heldOutputVals_reg[4][out] ),
        .R(\currInit_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \heldOutputVals_reg[5][enable][0] 
       (.C(clk),
        .CE(heldOutputVals),
        .D(dout[11]),
        .Q(\heldOutputVals_reg[5][enable] ),
        .R(\currInit_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \heldOutputVals_reg[5][out][0] 
       (.C(clk),
        .CE(heldOutputVals),
        .D(dout[10]),
        .Q(\heldOutputVals_reg[5][out] ),
        .R(\currInit_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \heldOutputVals_reg[6][enable][0] 
       (.C(clk),
        .CE(heldOutputVals),
        .D(dout[13]),
        .Q(\heldOutputVals_reg[6][enable] ),
        .R(\currInit_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \heldOutputVals_reg[6][out][0] 
       (.C(clk),
        .CE(heldOutputVals),
        .D(dout[12]),
        .Q(\heldOutputVals_reg[6][out] ),
        .R(\currInit_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \heldOutputVals_reg[7][enable][0] 
       (.C(clk),
        .CE(heldOutputVals),
        .D(dout[15]),
        .Q(\heldOutputVals_reg[7][enable] ),
        .R(\currInit_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \heldOutputVals_reg[7][out][0] 
       (.C(clk),
        .CE(heldOutputVals),
        .D(dout[14]),
        .Q(\heldOutputVals_reg[7][out] ),
        .R(\currInit_reg[1] ));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_1__1
       (.I0(sigSizeWords[15]),
        .I1(requestCount_reg[15]),
        .I2(sigSizeWords[14]),
        .I3(requestCount_reg[14]),
        .O(i__carry__0_i_1__1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_2__1
       (.I0(sigSizeWords[13]),
        .I1(requestCount_reg[13]),
        .I2(sigSizeWords[12]),
        .I3(requestCount_reg[12]),
        .O(i__carry__0_i_2__1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_3__1
       (.I0(sigSizeWords[11]),
        .I1(requestCount_reg[11]),
        .I2(sigSizeWords[10]),
        .I3(requestCount_reg[10]),
        .O(i__carry__0_i_3__1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_4__1
       (.I0(sigSizeWords[9]),
        .I1(requestCount_reg[9]),
        .I2(sigSizeWords[8]),
        .I3(requestCount_reg[8]),
        .O(i__carry__0_i_4__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_5__0
       (.I0(requestCount_reg[15]),
        .I1(sigSizeWords[15]),
        .I2(requestCount_reg[14]),
        .I3(sigSizeWords[14]),
        .O(i__carry__0_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_6__0
       (.I0(requestCount_reg[13]),
        .I1(sigSizeWords[13]),
        .I2(requestCount_reg[12]),
        .I3(sigSizeWords[12]),
        .O(i__carry__0_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_7__0
       (.I0(requestCount_reg[11]),
        .I1(sigSizeWords[11]),
        .I2(requestCount_reg[10]),
        .I3(sigSizeWords[10]),
        .O(i__carry__0_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_8__0
       (.I0(requestCount_reg[9]),
        .I1(sigSizeWords[9]),
        .I2(requestCount_reg[8]),
        .I3(sigSizeWords[8]),
        .O(i__carry__0_i_8__0_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_1__1
       (.I0(sigSizeWords[7]),
        .I1(requestCount_reg[7]),
        .I2(sigSizeWords[6]),
        .I3(requestCount_reg[6]),
        .O(i__carry_i_1__1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_2__1
       (.I0(sigSizeWords[5]),
        .I1(requestCount_reg[5]),
        .I2(sigSizeWords[4]),
        .I3(requestCount_reg[4]),
        .O(i__carry_i_2__1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_3__1
       (.I0(sigSizeWords[3]),
        .I1(requestCount_reg[3]),
        .I2(sigSizeWords[2]),
        .I3(requestCount_reg[2]),
        .O(i__carry_i_3__1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_4__1
       (.I0(sigSizeWords[1]),
        .I1(requestCount_reg[1]),
        .I2(sigSizeWords[0]),
        .I3(requestCount_reg[0]),
        .O(i__carry_i_4__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5__0
       (.I0(requestCount_reg[7]),
        .I1(sigSizeWords[7]),
        .I2(requestCount_reg[6]),
        .I3(sigSizeWords[6]),
        .O(i__carry_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6__0
       (.I0(requestCount_reg[5]),
        .I1(sigSizeWords[5]),
        .I2(requestCount_reg[4]),
        .I3(sigSizeWords[4]),
        .O(i__carry_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7__0
       (.I0(requestCount_reg[3]),
        .I1(sigSizeWords[3]),
        .I2(requestCount_reg[2]),
        .I3(sigSizeWords[2]),
        .O(i__carry_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8__0
       (.I0(requestCount_reg[1]),
        .I1(sigSizeWords[1]),
        .I2(requestCount_reg[0]),
        .I3(sigSizeWords[0]),
        .O(i__carry_i_8__0_n_0));
  oneshot_2 incos
       (.Q({\currState_reg_n_0_[3] ,\currState_reg_n_0_[2] ,\currState_reg_n_0_[1] ,\currState_reg_n_0_[0] }),
        .clear(\currInit_reg[1] ),
        .clk(clk),
        .incrementReqCountOS(incrementReqCountOS));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \nextState1_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\nextState1_inferred__0/i__carry_n_0 ,\nextState1_inferred__0/i__carry_n_1 ,\nextState1_inferred__0/i__carry_n_2 ,\nextState1_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__1_n_0,i__carry_i_2__1_n_0,i__carry_i_3__1_n_0,i__carry_i_4__1_n_0}),
        .O(\NLW_nextState1_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__0_n_0,i__carry_i_6__0_n_0,i__carry_i_7__0_n_0,i__carry_i_8__0_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \nextState1_inferred__0/i__carry__0 
       (.CI(\nextState1_inferred__0/i__carry_n_0 ),
        .CO({\nextState1_inferred__0/i__carry__0_n_0 ,\nextState1_inferred__0/i__carry__0_n_1 ,\nextState1_inferred__0/i__carry__0_n_2 ,\nextState1_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1__1_n_0,i__carry__0_i_2__1_n_0,i__carry__0_i_3__1_n_0,i__carry__0_i_4__1_n_0}),
        .O(\NLW_nextState1_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_5__0_n_0,i__carry__0_i_6__0_n_0,i__carry__0_i_7__0_n_0,i__carry__0_i_8__0_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'hAAAAAA28)) 
    outSwitch_INST_0
       (.I0(outSwitch_INST_0_i_1_n_0),
        .I1(\currState_reg_n_0_[4] ),
        .I2(\currState_reg_n_0_[1] ),
        .I3(\currState_reg_n_0_[3] ),
        .I4(\currState_reg_n_0_[2] ),
        .O(outSwitch));
  MUXF8 outSwitch_INST_0_i_1
       (.I0(enOut),
        .I1(outSwitch_INST_0_i_3_n_0),
        .O(outSwitch_INST_0_i_1_n_0),
        .S(g0_b3_n_0));
  MUXF7 outSwitch_INST_0_i_3
       (.I0(outSwitch_INST_0_i_6_n_0),
        .I1(outSwitch_INST_0_i_7_n_0),
        .O(outSwitch_INST_0_i_3_n_0),
        .S(\currState_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    outSwitch_INST_0_i_6
       (.I0(\heldOutputVals_reg[3][enable] ),
        .I1(\heldOutputVals_reg[2][enable] ),
        .I2(\currState_reg[1]_1 ),
        .I3(\heldOutputVals_reg[1][enable] ),
        .I4(\currState_reg[0]_0 ),
        .I5(\heldOutputVals_reg[0][enable] ),
        .O(outSwitch_INST_0_i_6_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    outSwitch_INST_0_i_7
       (.I0(\heldOutputVals_reg[7][enable] ),
        .I1(\heldOutputVals_reg[6][enable] ),
        .I2(\currState_reg[1]_1 ),
        .I3(\heldOutputVals_reg[5][enable] ),
        .I4(\currState_reg[0]_0 ),
        .I5(\heldOutputVals_reg[4][enable] ),
        .O(outSwitch_INST_0_i_7_n_0));
  oneshot_3 pbos
       (.D(nextState[1:0]),
        .E(pbos_n_3),
        .Q({\currState_reg_n_0_[4] ,\currState_reg_n_0_[3] ,\currState_reg_n_0_[2] ,\currState_reg_n_0_[1] ,\currState_reg_n_0_[0] }),
        .clear(\currInit_reg[1] ),
        .clk(clk),
        .clkOut(clkOut),
        .currReq(currReq),
        .\currState_reg[0] (\currState[0]_i_2__0_n_0 ),
        .\currState_reg[0]_0 (\currState[0]_i_3__0_n_0 ),
        .\currState_reg[1] (\currState_reg[1]_3 [3:2]),
        .\currState_reg[1]_0 (\currMeta_reg[0] ),
        .out(out),
        .playbackOS(playbackOS));
  LUT1 #(
    .INIT(2'h1)) 
    \requestCount[0]_i_2 
       (.I0(requestCount_reg[0]),
        .O(\requestCount[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \requestCount_reg[0] 
       (.C(clk),
        .CE(incrementReqCountOS),
        .D(\requestCount_reg[0]_i_1_n_7 ),
        .Q(requestCount_reg[0]),
        .R(\currInit_reg[1] ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \requestCount_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\requestCount_reg[0]_i_1_n_0 ,\requestCount_reg[0]_i_1_n_1 ,\requestCount_reg[0]_i_1_n_2 ,\requestCount_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\requestCount_reg[0]_i_1_n_4 ,\requestCount_reg[0]_i_1_n_5 ,\requestCount_reg[0]_i_1_n_6 ,\requestCount_reg[0]_i_1_n_7 }),
        .S({requestCount_reg[3:1],\requestCount[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \requestCount_reg[10] 
       (.C(clk),
        .CE(incrementReqCountOS),
        .D(\requestCount_reg[8]_i_1_n_5 ),
        .Q(requestCount_reg[10]),
        .R(\currInit_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \requestCount_reg[11] 
       (.C(clk),
        .CE(incrementReqCountOS),
        .D(\requestCount_reg[8]_i_1_n_4 ),
        .Q(requestCount_reg[11]),
        .R(\currInit_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \requestCount_reg[12] 
       (.C(clk),
        .CE(incrementReqCountOS),
        .D(\requestCount_reg[12]_i_1_n_7 ),
        .Q(requestCount_reg[12]),
        .R(\currInit_reg[1] ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \requestCount_reg[12]_i_1 
       (.CI(\requestCount_reg[8]_i_1_n_0 ),
        .CO({\NLW_requestCount_reg[12]_i_1_CO_UNCONNECTED [3],\requestCount_reg[12]_i_1_n_1 ,\requestCount_reg[12]_i_1_n_2 ,\requestCount_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\requestCount_reg[12]_i_1_n_4 ,\requestCount_reg[12]_i_1_n_5 ,\requestCount_reg[12]_i_1_n_6 ,\requestCount_reg[12]_i_1_n_7 }),
        .S(requestCount_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \requestCount_reg[13] 
       (.C(clk),
        .CE(incrementReqCountOS),
        .D(\requestCount_reg[12]_i_1_n_6 ),
        .Q(requestCount_reg[13]),
        .R(\currInit_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \requestCount_reg[14] 
       (.C(clk),
        .CE(incrementReqCountOS),
        .D(\requestCount_reg[12]_i_1_n_5 ),
        .Q(requestCount_reg[14]),
        .R(\currInit_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \requestCount_reg[15] 
       (.C(clk),
        .CE(incrementReqCountOS),
        .D(\requestCount_reg[12]_i_1_n_4 ),
        .Q(requestCount_reg[15]),
        .R(\currInit_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \requestCount_reg[1] 
       (.C(clk),
        .CE(incrementReqCountOS),
        .D(\requestCount_reg[0]_i_1_n_6 ),
        .Q(requestCount_reg[1]),
        .R(\currInit_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \requestCount_reg[2] 
       (.C(clk),
        .CE(incrementReqCountOS),
        .D(\requestCount_reg[0]_i_1_n_5 ),
        .Q(requestCount_reg[2]),
        .R(\currInit_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \requestCount_reg[3] 
       (.C(clk),
        .CE(incrementReqCountOS),
        .D(\requestCount_reg[0]_i_1_n_4 ),
        .Q(requestCount_reg[3]),
        .R(\currInit_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \requestCount_reg[4] 
       (.C(clk),
        .CE(incrementReqCountOS),
        .D(\requestCount_reg[4]_i_1_n_7 ),
        .Q(requestCount_reg[4]),
        .R(\currInit_reg[1] ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \requestCount_reg[4]_i_1 
       (.CI(\requestCount_reg[0]_i_1_n_0 ),
        .CO({\requestCount_reg[4]_i_1_n_0 ,\requestCount_reg[4]_i_1_n_1 ,\requestCount_reg[4]_i_1_n_2 ,\requestCount_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\requestCount_reg[4]_i_1_n_4 ,\requestCount_reg[4]_i_1_n_5 ,\requestCount_reg[4]_i_1_n_6 ,\requestCount_reg[4]_i_1_n_7 }),
        .S(requestCount_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \requestCount_reg[5] 
       (.C(clk),
        .CE(incrementReqCountOS),
        .D(\requestCount_reg[4]_i_1_n_6 ),
        .Q(requestCount_reg[5]),
        .R(\currInit_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \requestCount_reg[6] 
       (.C(clk),
        .CE(incrementReqCountOS),
        .D(\requestCount_reg[4]_i_1_n_5 ),
        .Q(requestCount_reg[6]),
        .R(\currInit_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \requestCount_reg[7] 
       (.C(clk),
        .CE(incrementReqCountOS),
        .D(\requestCount_reg[4]_i_1_n_4 ),
        .Q(requestCount_reg[7]),
        .R(\currInit_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \requestCount_reg[8] 
       (.C(clk),
        .CE(incrementReqCountOS),
        .D(\requestCount_reg[8]_i_1_n_7 ),
        .Q(requestCount_reg[8]),
        .R(\currInit_reg[1] ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \requestCount_reg[8]_i_1 
       (.CI(\requestCount_reg[4]_i_1_n_0 ),
        .CO({\requestCount_reg[8]_i_1_n_0 ,\requestCount_reg[8]_i_1_n_1 ,\requestCount_reg[8]_i_1_n_2 ,\requestCount_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\requestCount_reg[8]_i_1_n_4 ,\requestCount_reg[8]_i_1_n_5 ,\requestCount_reg[8]_i_1_n_6 ,\requestCount_reg[8]_i_1_n_7 }),
        .S(requestCount_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \requestCount_reg[9] 
       (.C(clk),
        .CE(incrementReqCountOS),
        .D(\requestCount_reg[8]_i_1_n_6 ),
        .Q(requestCount_reg[9]),
        .R(\currInit_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'hAAAAAA28)) 
    sampleOut_INST_0
       (.I0(sampleOut_INST_0_i_1_n_0),
        .I1(\currState_reg_n_0_[4] ),
        .I2(\currState_reg_n_0_[1] ),
        .I3(\currState_reg_n_0_[3] ),
        .I4(\currState_reg_n_0_[2] ),
        .O(sampleOut));
  MUXF8 sampleOut_INST_0_i_1
       (.I0(dOut),
        .I1(sampleOut_INST_0_i_3_n_0),
        .O(sampleOut_INST_0_i_1_n_0),
        .S(g0_b3_n_0));
  MUXF7 sampleOut_INST_0_i_3
       (.I0(sampleOut_INST_0_i_6_n_0),
        .I1(sampleOut_INST_0_i_7_n_0),
        .O(sampleOut_INST_0_i_3_n_0),
        .S(\currState_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sampleOut_INST_0_i_6
       (.I0(\heldOutputVals_reg[3][out] ),
        .I1(\heldOutputVals_reg[2][out] ),
        .I2(\currState_reg[1]_1 ),
        .I3(\heldOutputVals_reg[1][out] ),
        .I4(\currState_reg[0]_0 ),
        .I5(\heldOutputVals_reg[0][out] ),
        .O(sampleOut_INST_0_i_6_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sampleOut_INST_0_i_7
       (.I0(\heldOutputVals_reg[7][out] ),
        .I1(\heldOutputVals_reg[6][out] ),
        .I2(\currState_reg[1]_1 ),
        .I3(\heldOutputVals_reg[5][out] ),
        .I4(\currState_reg[0]_0 ),
        .I5(\heldOutputVals_reg[4][out] ),
        .O(sampleOut_INST_0_i_7_n_0));
endmodule

(* BRAM_ADDR_SIZE = "14" *) (* BRAM_DATA_SIZE = "32" *) (* BRAM_DEPTH = "32768" *) 
(* CLK_RATE = "200000000" *) (* DEFUALT_RATE = "100" *) (* keep_hierarchy = "soft" *) 
module sampleDetect_tl
   (clk,
    resetN,
    enable,
    dIn,
    sampleOut,
    outSwitch,
    interrupt,
    canID,
    baudRate,
    playbackRate,
    setValues,
    sigSizeWords,
    numSigs,
    validSigNum,
    invalidSignal,
    stateDbg,
    readData,
    resetBusy,
    addr,
    writeData,
    bramEnable,
    bramWe);
  input clk;
  input resetN;
  (* mark_debug = "true" *) input enable;
  input dIn;
  output sampleOut;
  output outSwitch;
  output interrupt;
  input [31:0]canID;
  input [31:0]baudRate;
  input [31:0]playbackRate;
  (* mark_debug = "true" *) input setValues;
  input [15:0]sigSizeWords;
  input [15:0]numSigs;
  output [15:0]validSigNum;
  output invalidSignal;
  output [3:0]stateDbg;
  input [31:0]readData;
  input resetBusy;
  output [13:0]addr;
  output [31:0]writeData;
  output bramEnable;
  output bramWe;

  wire \<const0> ;
  wire [13:0]addr;
  wire [31:0]baudRate;
  wire br_n_31;
  wire br_n_32;
  wire bramEnable;
  wire calculatedInput;
  wire canClkCounter;
  wire \canClkCounter[4]_i_1_n_0 ;
  wire [4:0]canClkCounter_reg;
  wire canClkPrevValue;
  wire [31:0]canID;
  wire clk;
  wire clkOut;
  (* MARK_DEBUG *) wire [2:0]currInit;
  wire \currInit[1]_i_2_n_0 ;
  wire \currInit[2]_i_3_n_0 ;
  (* MARK_DEBUG *) (* fsm_encoding = "sequential" *) wire [3:0]currMeta;
  wire \currMeta[0]_i_2_n_0 ;
  wire \currMeta[0]_i_6_n_0 ;
  wire \currMeta[1]_i_5_n_0 ;
  wire \currMeta[1]_i_7_n_0 ;
  wire currMeta_reg0;
  wire currMeta_reg1;
  wire [2:0]currReq;
  wire currReq0;
  wire \currReq[0]_i_1_n_0 ;
  wire \currReq[1]_i_1_n_0 ;
  wire \currReq[2]_i_1_n_0 ;
  wire dIn;
  wire [31:16]dataBRAM;
  (* MARK_DEBUG *) wire enable;
  wire error_n_1;
  wire idUnit_n_0;
  wire idUnit_n_1;
  wire idUnit_n_2;
  wire idUnit_n_3;
  wire idUnit_n_4;
  wire idUnit_n_5;
  wire ifDetect_n_1;
  wire ifDetect_n_3;
  wire ifDetect_n_5;
  wire [15:0]incrementer_reg;
  wire \incrementer_reg[0]_i_1_n_0 ;
  wire \incrementer_reg[0]_i_1_n_1 ;
  wire \incrementer_reg[0]_i_1_n_2 ;
  wire \incrementer_reg[0]_i_1_n_3 ;
  wire \incrementer_reg[0]_i_1_n_4 ;
  wire \incrementer_reg[0]_i_1_n_5 ;
  wire \incrementer_reg[0]_i_1_n_6 ;
  wire \incrementer_reg[0]_i_1_n_7 ;
  wire \incrementer_reg[12]_i_1_n_1 ;
  wire \incrementer_reg[12]_i_1_n_2 ;
  wire \incrementer_reg[12]_i_1_n_3 ;
  wire \incrementer_reg[12]_i_1_n_4 ;
  wire \incrementer_reg[12]_i_1_n_5 ;
  wire \incrementer_reg[12]_i_1_n_6 ;
  wire \incrementer_reg[12]_i_1_n_7 ;
  wire \incrementer_reg[4]_i_1_n_0 ;
  wire \incrementer_reg[4]_i_1_n_1 ;
  wire \incrementer_reg[4]_i_1_n_2 ;
  wire \incrementer_reg[4]_i_1_n_3 ;
  wire \incrementer_reg[4]_i_1_n_4 ;
  wire \incrementer_reg[4]_i_1_n_5 ;
  wire \incrementer_reg[4]_i_1_n_6 ;
  wire \incrementer_reg[4]_i_1_n_7 ;
  wire \incrementer_reg[8]_i_1_n_0 ;
  wire \incrementer_reg[8]_i_1_n_1 ;
  wire \incrementer_reg[8]_i_1_n_2 ;
  wire \incrementer_reg[8]_i_1_n_3 ;
  wire \incrementer_reg[8]_i_1_n_4 ;
  wire \incrementer_reg[8]_i_1_n_5 ;
  wire \incrementer_reg[8]_i_1_n_6 ;
  wire \incrementer_reg[8]_i_1_n_7 ;
  wire interrupt;
  wire invalidSignal;
  wire [2:0]nextInit;
  wire [3:0]nextMeta;
  wire [15:0]nextMeta2;
  wire [15:0]numSigs;
  wire outRef_n_1;
  wire outSwitch;
  wire [4:0]p_0_in__0;
  wire p_2_in;
  wire pbUnit_n_0;
  wire pbUnit_n_10;
  wire pbUnit_n_11;
  wire pbUnit_n_3;
  wire pbUnit_n_4;
  wire pbUnit_n_5;
  wire pbUnit_n_6;
  wire pbUnit_n_7;
  wire pbUnit_n_9;
  wire [31:0]playbackRate;
  wire prevClkVal;
  wire prevIDSkip;
  wire [31:0]readData;
  wire \requestAddr[0]_i_1_n_0 ;
  wire \requestAddr[0]_i_3_n_0 ;
  wire \requestAddr[0]_i_4_n_0 ;
  wire \requestAddr[0]_i_5_n_0 ;
  wire \requestAddr[0]_i_6_n_0 ;
  wire \requestAddr[12]_i_2_n_0 ;
  wire \requestAddr[12]_i_3_n_0 ;
  wire \requestAddr[4]_i_2_n_0 ;
  wire \requestAddr[4]_i_3_n_0 ;
  wire \requestAddr[4]_i_4_n_0 ;
  wire \requestAddr[4]_i_5_n_0 ;
  wire \requestAddr[8]_i_2_n_0 ;
  wire \requestAddr[8]_i_3_n_0 ;
  wire \requestAddr[8]_i_4_n_0 ;
  wire \requestAddr[8]_i_5_n_0 ;
  wire [13:0]requestAddr_reg;
  wire \requestAddr_reg[0]_i_2_n_0 ;
  wire \requestAddr_reg[0]_i_2_n_1 ;
  wire \requestAddr_reg[0]_i_2_n_2 ;
  wire \requestAddr_reg[0]_i_2_n_3 ;
  wire \requestAddr_reg[0]_i_2_n_4 ;
  wire \requestAddr_reg[0]_i_2_n_5 ;
  wire \requestAddr_reg[0]_i_2_n_6 ;
  wire \requestAddr_reg[0]_i_2_n_7 ;
  wire \requestAddr_reg[12]_i_1_n_3 ;
  wire \requestAddr_reg[12]_i_1_n_6 ;
  wire \requestAddr_reg[12]_i_1_n_7 ;
  wire \requestAddr_reg[4]_i_1_n_0 ;
  wire \requestAddr_reg[4]_i_1_n_1 ;
  wire \requestAddr_reg[4]_i_1_n_2 ;
  wire \requestAddr_reg[4]_i_1_n_3 ;
  wire \requestAddr_reg[4]_i_1_n_4 ;
  wire \requestAddr_reg[4]_i_1_n_5 ;
  wire \requestAddr_reg[4]_i_1_n_6 ;
  wire \requestAddr_reg[4]_i_1_n_7 ;
  wire \requestAddr_reg[8]_i_1_n_0 ;
  wire \requestAddr_reg[8]_i_1_n_1 ;
  wire \requestAddr_reg[8]_i_1_n_2 ;
  wire \requestAddr_reg[8]_i_1_n_3 ;
  wire \requestAddr_reg[8]_i_1_n_4 ;
  wire \requestAddr_reg[8]_i_1_n_5 ;
  wire \requestAddr_reg[8]_i_1_n_6 ;
  wire \requestAddr_reg[8]_i_1_n_7 ;
  wire resetN;
  wire \runningSample_reg_n_0_[0] ;
  wire \runningSample_reg_n_0_[1] ;
  wire sampleOS_n_0;
  wire sampleOut;
  wire samplePulse;
  (* MARK_DEBUG *) wire setValues;
  wire [15:0]sigSizeWords;
  wire su_n_0;
  wire su_n_2;
  wire su_n_3;
  wire su_n_6;
  wire su_n_7;
  wire threeSamplePoint;
  wire [15:0]validSigNum;
  wire \validSigNum[15]_INST_0_i_10_n_0 ;
  wire \validSigNum[15]_INST_0_i_11_n_0 ;
  wire \validSigNum[15]_INST_0_i_12_n_0 ;
  wire \validSigNum[15]_INST_0_i_13_n_0 ;
  wire \validSigNum[15]_INST_0_i_14_n_0 ;
  wire \validSigNum[15]_INST_0_i_15_n_0 ;
  wire \validSigNum[15]_INST_0_i_15_n_1 ;
  wire \validSigNum[15]_INST_0_i_15_n_2 ;
  wire \validSigNum[15]_INST_0_i_15_n_3 ;
  wire \validSigNum[15]_INST_0_i_16_n_0 ;
  wire \validSigNum[15]_INST_0_i_17_n_0 ;
  wire \validSigNum[15]_INST_0_i_18_n_0 ;
  wire \validSigNum[15]_INST_0_i_19_n_0 ;
  wire \validSigNum[15]_INST_0_i_1_n_1 ;
  wire \validSigNum[15]_INST_0_i_1_n_2 ;
  wire \validSigNum[15]_INST_0_i_1_n_3 ;
  wire \validSigNum[15]_INST_0_i_20_n_0 ;
  wire \validSigNum[15]_INST_0_i_20_n_1 ;
  wire \validSigNum[15]_INST_0_i_20_n_2 ;
  wire \validSigNum[15]_INST_0_i_20_n_3 ;
  wire \validSigNum[15]_INST_0_i_21_n_0 ;
  wire \validSigNum[15]_INST_0_i_22_n_0 ;
  wire \validSigNum[15]_INST_0_i_23_n_0 ;
  wire \validSigNum[15]_INST_0_i_24_n_0 ;
  wire \validSigNum[15]_INST_0_i_25_n_0 ;
  wire \validSigNum[15]_INST_0_i_26_n_0 ;
  wire \validSigNum[15]_INST_0_i_27_n_0 ;
  wire \validSigNum[15]_INST_0_i_28_n_0 ;
  wire \validSigNum[15]_INST_0_i_2_n_0 ;
  wire \validSigNum[15]_INST_0_i_2_n_1 ;
  wire \validSigNum[15]_INST_0_i_2_n_2 ;
  wire \validSigNum[15]_INST_0_i_2_n_3 ;
  wire \validSigNum[15]_INST_0_i_3_n_0 ;
  wire \validSigNum[15]_INST_0_i_3_n_2 ;
  wire \validSigNum[15]_INST_0_i_3_n_3 ;
  wire \validSigNum[15]_INST_0_i_4_n_0 ;
  wire \validSigNum[15]_INST_0_i_4_n_1 ;
  wire \validSigNum[15]_INST_0_i_4_n_2 ;
  wire \validSigNum[15]_INST_0_i_4_n_3 ;
  wire \validSigNum[15]_INST_0_i_5_n_0 ;
  wire \validSigNum[15]_INST_0_i_6_n_0 ;
  wire \validSigNum[15]_INST_0_i_7_n_0 ;
  wire \validSigNum[15]_INST_0_i_7_n_1 ;
  wire \validSigNum[15]_INST_0_i_7_n_2 ;
  wire \validSigNum[15]_INST_0_i_7_n_3 ;
  wire \validSigNum[15]_INST_0_i_8_n_0 ;
  wire \validSigNum[15]_INST_0_i_9_n_0 ;
  wire [3:3]\NLW_incrementer_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_requestAddr_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_requestAddr_reg[12]_i_1_O_UNCONNECTED ;
  wire [3:3]\NLW_validSigNum[15]_INST_0_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_validSigNum[15]_INST_0_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_validSigNum[15]_INST_0_i_2_O_UNCONNECTED ;
  wire [2:2]\NLW_validSigNum[15]_INST_0_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_validSigNum[15]_INST_0_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_validSigNum[15]_INST_0_i_4_O_UNCONNECTED ;

  assign bramWe = \<const0> ;
  assign stateDbg[3:0] = currMeta;
  assign writeData[31] = \<const0> ;
  assign writeData[30] = \<const0> ;
  assign writeData[29] = \<const0> ;
  assign writeData[28] = \<const0> ;
  assign writeData[27] = \<const0> ;
  assign writeData[26] = \<const0> ;
  assign writeData[25] = \<const0> ;
  assign writeData[24] = \<const0> ;
  assign writeData[23] = \<const0> ;
  assign writeData[22] = \<const0> ;
  assign writeData[21] = \<const0> ;
  assign writeData[20] = \<const0> ;
  assign writeData[19] = \<const0> ;
  assign writeData[18] = \<const0> ;
  assign writeData[17] = \<const0> ;
  assign writeData[16] = \<const0> ;
  assign writeData[15] = \<const0> ;
  assign writeData[14] = \<const0> ;
  assign writeData[13] = \<const0> ;
  assign writeData[12] = \<const0> ;
  assign writeData[11] = \<const0> ;
  assign writeData[10] = \<const0> ;
  assign writeData[9] = \<const0> ;
  assign writeData[8] = \<const0> ;
  assign writeData[7] = \<const0> ;
  assign writeData[6] = \<const0> ;
  assign writeData[5] = \<const0> ;
  assign writeData[4] = \<const0> ;
  assign writeData[3] = \<const0> ;
  assign writeData[2] = \<const0> ;
  assign writeData[1] = \<const0> ;
  assign writeData[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  bramController br
       (.D(nextInit[0]),
        .\FSM_onehot_currState_reg[2] (pbUnit_n_7),
        .addr(addr),
        .bramEnable(bramEnable),
        .clk(clk),
        .\currInit_reg[0] (\currInit[1]_i_2_n_0 ),
        .currReq(currReq[1:0]),
        .\currState_reg[0]_0 (pbUnit_n_0),
        .\currState_reg[1]_0 (br_n_31),
        .\currState_reg[1]_1 (br_n_32),
        .\currState_reg[3]_0 (currInit),
        .dout(dataBRAM),
        .out(setValues),
        .outSwitch_INST_0_i_1(pbUnit_n_3),
        .outSwitch_INST_0_i_2_0(pbUnit_n_4),
        .outSwitch_INST_0_i_2_1(pbUnit_n_5),
        .readData(readData),
        .requestAddr_reg(requestAddr_reg),
        .resetN(resetN),
        .sigSizeWords(sigSizeWords));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \canClkCounter[0]_i_1 
       (.I0(canClkCounter_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \canClkCounter[1]_i_1 
       (.I0(canClkCounter_reg[0]),
        .I1(canClkCounter_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \canClkCounter[2]_i_1 
       (.I0(canClkCounter_reg[2]),
        .I1(canClkCounter_reg[1]),
        .I2(canClkCounter_reg[0]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \canClkCounter[3]_i_1 
       (.I0(canClkCounter_reg[3]),
        .I1(canClkCounter_reg[2]),
        .I2(canClkCounter_reg[0]),
        .I3(canClkCounter_reg[1]),
        .O(p_0_in__0[3]));
  LUT4 #(
    .INIT(16'hFCBF)) 
    \canClkCounter[4]_i_1 
       (.I0(currMeta[1]),
        .I1(currMeta[0]),
        .I2(currMeta[2]),
        .I3(currMeta[3]),
        .O(\canClkCounter[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \canClkCounter[4]_i_3 
       (.I0(canClkCounter_reg[4]),
        .I1(canClkCounter_reg[1]),
        .I2(canClkCounter_reg[0]),
        .I3(canClkCounter_reg[2]),
        .I4(canClkCounter_reg[3]),
        .O(p_0_in__0[4]));
  FDRE #(
    .INIT(1'b0)) 
    \canClkCounter_reg[0] 
       (.C(clk),
        .CE(canClkCounter),
        .D(p_0_in__0[0]),
        .Q(canClkCounter_reg[0]),
        .R(\canClkCounter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \canClkCounter_reg[1] 
       (.C(clk),
        .CE(canClkCounter),
        .D(p_0_in__0[1]),
        .Q(canClkCounter_reg[1]),
        .R(\canClkCounter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \canClkCounter_reg[2] 
       (.C(clk),
        .CE(canClkCounter),
        .D(p_0_in__0[2]),
        .Q(canClkCounter_reg[2]),
        .R(\canClkCounter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \canClkCounter_reg[3] 
       (.C(clk),
        .CE(canClkCounter),
        .D(p_0_in__0[3]),
        .Q(canClkCounter_reg[3]),
        .R(\canClkCounter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \canClkCounter_reg[4] 
       (.C(clk),
        .CE(canClkCounter),
        .D(p_0_in__0[4]),
        .Q(canClkCounter_reg[4]),
        .R(\canClkCounter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    canClkPrevValue_reg
       (.C(clk),
        .CE(1'b1),
        .D(su_n_7),
        .Q(canClkPrevValue),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h8F8CB0B0)) 
    \currInit[1]_i_1 
       (.I0(\currInit[1]_i_2_n_0 ),
        .I1(currInit[2]),
        .I2(currInit[1]),
        .I3(setValues),
        .I4(currInit[0]),
        .O(nextInit[1]));
  LUT4 #(
    .INIT(16'h0001)) 
    \currInit[1]_i_2 
       (.I0(currMeta[1]),
        .I1(currMeta[0]),
        .I2(currMeta[3]),
        .I3(currMeta[2]),
        .O(\currInit[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h02FF02FFFF000000)) 
    \currInit[2]_i_2 
       (.I0(\currInit[2]_i_3_n_0 ),
        .I1(currMeta[3]),
        .I2(currMeta[2]),
        .I3(currInit[1]),
        .I4(currInit[0]),
        .I5(currInit[2]),
        .O(nextInit[2]));
  LUT2 #(
    .INIT(4'h1)) 
    \currInit[2]_i_3 
       (.I0(currMeta[0]),
        .I1(currMeta[1]),
        .O(\currInit[2]_i_3_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \currInit_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(nextInit[0]),
        .Q(currInit[0]),
        .R(currMeta_reg1));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \currInit_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(nextInit[1]),
        .Q(currInit[1]),
        .R(currMeta_reg1));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \currInit_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(nextInit[2]),
        .Q(currInit[2]),
        .R(currMeta_reg1));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hC1CD)) 
    \currMeta[0]_i_2 
       (.I0(\currMeta[1]_i_5_n_0 ),
        .I1(currMeta[0]),
        .I2(currMeta[1]),
        .I3(currReq[2]),
        .O(\currMeta[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \currMeta[0]_i_6 
       (.I0(currInit[1]),
        .I1(currInit[2]),
        .O(\currMeta[0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h00015555)) 
    \currMeta[1]_i_5 
       (.I0(canClkCounter_reg[4]),
        .I1(canClkCounter_reg[2]),
        .I2(canClkCounter_reg[1]),
        .I3(canClkCounter_reg[0]),
        .I4(canClkCounter_reg[3]),
        .O(\currMeta[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \currMeta[1]_i_7 
       (.I0(currMeta[1]),
        .I1(currMeta[0]),
        .I2(currReq[2]),
        .O(\currMeta[1]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \currMeta[3]_i_1 
       (.I0(resetN),
        .I1(enable),
        .O(currMeta_reg0));
  (* FSM_ENCODED_STATES = "s_initial:0000,s_waitSync_0:0001,s_waitSync_1:0010,s_idComp:0011,s_idCompSkip:0100,s_waitData:0101,s_waitRecessive:0110,s_play:0111,s_err:1000,s_req:1001,s_eof:1010,s_report:1011" *) 
  (* FSM_ENCODING = "sequential" *) 
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \currMeta_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(nextMeta[0]),
        .Q(currMeta[0]),
        .R(currMeta_reg0));
  (* FSM_ENCODED_STATES = "s_initial:0000,s_waitSync_0:0001,s_waitSync_1:0010,s_idComp:0011,s_idCompSkip:0100,s_waitData:0101,s_waitRecessive:0110,s_play:0111,s_err:1000,s_req:1001,s_eof:1010,s_report:1011" *) 
  (* FSM_ENCODING = "sequential" *) 
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \currMeta_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(nextMeta[1]),
        .Q(currMeta[1]),
        .R(currMeta_reg0));
  (* FSM_ENCODED_STATES = "s_initial:0000,s_waitSync_0:0001,s_waitSync_1:0010,s_idComp:0011,s_idCompSkip:0100,s_waitData:0101,s_waitRecessive:0110,s_play:0111,s_err:1000,s_req:1001,s_eof:1010,s_report:1011" *) 
  (* FSM_ENCODING = "sequential" *) 
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \currMeta_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(ifDetect_n_3),
        .Q(currMeta[2]),
        .R(currMeta_reg0));
  (* FSM_ENCODED_STATES = "s_initial:0000,s_waitSync_0:0001,s_waitSync_1:0010,s_idComp:0011,s_idCompSkip:0100,s_waitData:0101,s_waitRecessive:0110,s_play:0111,s_err:1000,s_req:1001,s_eof:1010,s_report:1011" *) 
  (* FSM_ENCODING = "sequential" *) 
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \currMeta_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(nextMeta[3]),
        .Q(currMeta[3]),
        .R(currMeta_reg0));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h000D)) 
    \currReq[0]_i_1 
       (.I0(currReq[2]),
        .I1(currReq[1]),
        .I2(currReq[0]),
        .I3(currReq0),
        .O(\currReq[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h06)) 
    \currReq[1]_i_1 
       (.I0(currReq[1]),
        .I1(currReq[0]),
        .I2(currReq0),
        .O(\currReq[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h0068)) 
    \currReq[2]_i_1 
       (.I0(currReq[1]),
        .I1(currReq[0]),
        .I2(currReq[2]),
        .I3(currReq0),
        .O(\currReq[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFDFFF)) 
    \currReq[2]_i_2 
       (.I0(currMeta[0]),
        .I1(currMeta[2]),
        .I2(currMeta[3]),
        .I3(resetN),
        .I4(currMeta[1]),
        .O(currReq0));
  FDRE #(
    .INIT(1'b0)) 
    \currReq_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\currReq[0]_i_1_n_0 ),
        .Q(currReq[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \currReq_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\currReq[1]_i_1_n_0 ),
        .Q(currReq[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \currReq_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\currReq[2]_i_1_n_0 ),
        .Q(currReq[2]),
        .R(1'b0));
  errorDetect error
       (.CO(\validSigNum[15]_INST_0_i_1_n_1 ),
        .Q(currMeta[0]),
        .SR(currMeta_reg1),
        .calculatedInput(calculatedInput),
        .clk(clk),
        .\currMeta_reg[0] (error_n_1),
        .\currMeta_reg[1] (\currMeta[1]_i_5_n_0 ),
        .\currMeta_reg[1]_0 (\currMeta[1]_i_7_n_0 ),
        .resetN(resetN),
        .samplePulse(samplePulse),
        .threeSamplePoint(threeSamplePoint));
  idComparator idUnit
       (.Q(currMeta[2:0]),
        .calculatedInput(calculatedInput),
        .canID(canID),
        .clk(clk),
        .\count_reg[4]_0 (outRef_n_1),
        .\currMeta_reg[1] (idUnit_n_4),
        .\currMeta_reg[2] (idUnit_n_5),
        .\currState_reg[0]_0 (idUnit_n_1),
        .\currState_reg[0]_1 (idUnit_n_2),
        .\currState_reg[2]_0 (idUnit_n_3),
        .out(currMeta),
        .resetN(resetN),
        .resetn(idUnit_n_0),
        .samplePulse(samplePulse));
  interframeDetect ifDetect
       (.D({ifDetect_n_3,nextMeta[1]}),
        .Q(currMeta),
        .SR(currMeta_reg1),
        .calculatedInput(calculatedInput),
        .clk(clk),
        .\currMeta_reg[0] (\currMeta[0]_i_6_n_0 ),
        .\currMeta_reg[0]_0 (idUnit_n_2),
        .\currMeta_reg[1] (error_n_1),
        .\currMeta_reg[1]_0 (pbUnit_n_10),
        .\currMeta_reg[2] (idUnit_n_1),
        .\currMeta_reg[2]_0 (pbUnit_n_9),
        .\currState_reg[5]_0 (ifDetect_n_1),
        .out(currMeta),
        .p_2_in(p_2_in),
        .prevIDSkip(prevIDSkip),
        .prevIDSkip_reg(ifDetect_n_5),
        .samplePulse(samplePulse),
        .\testData_reg[0] (\runningSample_reg_n_0_[0] ),
        .\testData_reg[0]_0 (\runningSample_reg_n_0_[1] ),
        .threeSamplePoint(threeSamplePoint));
  LUT1 #(
    .INIT(2'h1)) 
    \incrementer[0]_i_2 
       (.I0(incrementer_reg[0]),
        .O(nextMeta2[0]));
  FDRE #(
    .INIT(1'b0)) 
    \incrementer_reg[0] 
       (.C(clk),
        .CE(\requestAddr[0]_i_1_n_0 ),
        .D(\incrementer_reg[0]_i_1_n_7 ),
        .Q(incrementer_reg[0]),
        .R(currMeta_reg0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \incrementer_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\incrementer_reg[0]_i_1_n_0 ,\incrementer_reg[0]_i_1_n_1 ,\incrementer_reg[0]_i_1_n_2 ,\incrementer_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\incrementer_reg[0]_i_1_n_4 ,\incrementer_reg[0]_i_1_n_5 ,\incrementer_reg[0]_i_1_n_6 ,\incrementer_reg[0]_i_1_n_7 }),
        .S({incrementer_reg[3:1],nextMeta2[0]}));
  FDRE #(
    .INIT(1'b0)) 
    \incrementer_reg[10] 
       (.C(clk),
        .CE(\requestAddr[0]_i_1_n_0 ),
        .D(\incrementer_reg[8]_i_1_n_5 ),
        .Q(incrementer_reg[10]),
        .R(currMeta_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \incrementer_reg[11] 
       (.C(clk),
        .CE(\requestAddr[0]_i_1_n_0 ),
        .D(\incrementer_reg[8]_i_1_n_4 ),
        .Q(incrementer_reg[11]),
        .R(currMeta_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \incrementer_reg[12] 
       (.C(clk),
        .CE(\requestAddr[0]_i_1_n_0 ),
        .D(\incrementer_reg[12]_i_1_n_7 ),
        .Q(incrementer_reg[12]),
        .R(currMeta_reg0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \incrementer_reg[12]_i_1 
       (.CI(\incrementer_reg[8]_i_1_n_0 ),
        .CO({\NLW_incrementer_reg[12]_i_1_CO_UNCONNECTED [3],\incrementer_reg[12]_i_1_n_1 ,\incrementer_reg[12]_i_1_n_2 ,\incrementer_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\incrementer_reg[12]_i_1_n_4 ,\incrementer_reg[12]_i_1_n_5 ,\incrementer_reg[12]_i_1_n_6 ,\incrementer_reg[12]_i_1_n_7 }),
        .S(incrementer_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \incrementer_reg[13] 
       (.C(clk),
        .CE(\requestAddr[0]_i_1_n_0 ),
        .D(\incrementer_reg[12]_i_1_n_6 ),
        .Q(incrementer_reg[13]),
        .R(currMeta_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \incrementer_reg[14] 
       (.C(clk),
        .CE(\requestAddr[0]_i_1_n_0 ),
        .D(\incrementer_reg[12]_i_1_n_5 ),
        .Q(incrementer_reg[14]),
        .R(currMeta_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \incrementer_reg[15] 
       (.C(clk),
        .CE(\requestAddr[0]_i_1_n_0 ),
        .D(\incrementer_reg[12]_i_1_n_4 ),
        .Q(incrementer_reg[15]),
        .R(currMeta_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \incrementer_reg[1] 
       (.C(clk),
        .CE(\requestAddr[0]_i_1_n_0 ),
        .D(\incrementer_reg[0]_i_1_n_6 ),
        .Q(incrementer_reg[1]),
        .R(currMeta_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \incrementer_reg[2] 
       (.C(clk),
        .CE(\requestAddr[0]_i_1_n_0 ),
        .D(\incrementer_reg[0]_i_1_n_5 ),
        .Q(incrementer_reg[2]),
        .R(currMeta_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \incrementer_reg[3] 
       (.C(clk),
        .CE(\requestAddr[0]_i_1_n_0 ),
        .D(\incrementer_reg[0]_i_1_n_4 ),
        .Q(incrementer_reg[3]),
        .R(currMeta_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \incrementer_reg[4] 
       (.C(clk),
        .CE(\requestAddr[0]_i_1_n_0 ),
        .D(\incrementer_reg[4]_i_1_n_7 ),
        .Q(incrementer_reg[4]),
        .R(currMeta_reg0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \incrementer_reg[4]_i_1 
       (.CI(\incrementer_reg[0]_i_1_n_0 ),
        .CO({\incrementer_reg[4]_i_1_n_0 ,\incrementer_reg[4]_i_1_n_1 ,\incrementer_reg[4]_i_1_n_2 ,\incrementer_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\incrementer_reg[4]_i_1_n_4 ,\incrementer_reg[4]_i_1_n_5 ,\incrementer_reg[4]_i_1_n_6 ,\incrementer_reg[4]_i_1_n_7 }),
        .S(incrementer_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \incrementer_reg[5] 
       (.C(clk),
        .CE(\requestAddr[0]_i_1_n_0 ),
        .D(\incrementer_reg[4]_i_1_n_6 ),
        .Q(incrementer_reg[5]),
        .R(currMeta_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \incrementer_reg[6] 
       (.C(clk),
        .CE(\requestAddr[0]_i_1_n_0 ),
        .D(\incrementer_reg[4]_i_1_n_5 ),
        .Q(incrementer_reg[6]),
        .R(currMeta_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \incrementer_reg[7] 
       (.C(clk),
        .CE(\requestAddr[0]_i_1_n_0 ),
        .D(\incrementer_reg[4]_i_1_n_4 ),
        .Q(incrementer_reg[7]),
        .R(currMeta_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \incrementer_reg[8] 
       (.C(clk),
        .CE(\requestAddr[0]_i_1_n_0 ),
        .D(\incrementer_reg[8]_i_1_n_7 ),
        .Q(incrementer_reg[8]),
        .R(currMeta_reg0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \incrementer_reg[8]_i_1 
       (.CI(\incrementer_reg[4]_i_1_n_0 ),
        .CO({\incrementer_reg[8]_i_1_n_0 ,\incrementer_reg[8]_i_1_n_1 ,\incrementer_reg[8]_i_1_n_2 ,\incrementer_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\incrementer_reg[8]_i_1_n_4 ,\incrementer_reg[8]_i_1_n_5 ,\incrementer_reg[8]_i_1_n_6 ,\incrementer_reg[8]_i_1_n_7 }),
        .S(incrementer_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \incrementer_reg[9] 
       (.C(clk),
        .CE(\requestAddr[0]_i_1_n_0 ),
        .D(\incrementer_reg[8]_i_1_n_6 ),
        .Q(incrementer_reg[9]),
        .R(currMeta_reg0));
  LUT4 #(
    .INIT(16'h2000)) 
    interrupt_INST_0
       (.I0(currMeta[3]),
        .I1(currMeta[2]),
        .I2(currMeta[1]),
        .I3(currMeta[0]),
        .O(interrupt));
  LUT5 #(
    .INIT(32'h00800000)) 
    invalidSignal_INST_0
       (.I0(\validSigNum[15]_INST_0_i_1_n_1 ),
        .I1(currMeta[0]),
        .I2(currMeta[1]),
        .I3(currMeta[2]),
        .I4(currMeta[3]),
        .O(invalidSignal));
  clkUnit outRef
       (.clk(clk),
        .clkOut(clkOut),
        .\currInit_reg[2] (outRef_n_1),
        .out(currInit),
        .playbackRate(playbackRate[22:0]));
  playbackUnit pbUnit
       (.D(nextMeta[3]),
        .Q(currMeta),
        .clk(clk),
        .clkOut(clkOut),
        .\currInit_reg[1] (pbUnit_n_0),
        .\currMeta_reg[0] (pbUnit_n_6),
        .\currMeta_reg[1] (pbUnit_n_10),
        .\currMeta_reg[1]_0 (pbUnit_n_11),
        .\currMeta_reg[1]_1 (\currMeta[1]_i_5_n_0 ),
        .\currMeta_reg[1]_2 (idUnit_n_4),
        .\currMeta_reg[3] (idUnit_n_5),
        .\currMeta_reg[3]_0 (ifDetect_n_1),
        .\currMeta_reg[3]_1 (idUnit_n_3),
        .currReq(currReq[1:0]),
        .\currState_reg[0]_0 (pbUnit_n_5),
        .\currState_reg[0]_1 (pbUnit_n_7),
        .\currState_reg[1]_0 (pbUnit_n_3),
        .\currState_reg[1]_1 (pbUnit_n_4),
        .\currState_reg[1]_2 (pbUnit_n_9),
        .\currState_reg[1]_3 (currMeta),
        .dOut(br_n_31),
        .dout(dataBRAM),
        .enOut(br_n_32),
        .out(currInit),
        .outSwitch(outSwitch),
        .resetN(resetN),
        .sampleOut(sampleOut),
        .sigSizeWords(sigSizeWords));
  FDRE #(
    .INIT(1'b0)) 
    prevClkVal_reg
       (.C(clk),
        .CE(1'b1),
        .D(su_n_6),
        .Q(prevClkVal),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    prevIDSkip_reg
       (.C(clk),
        .CE(1'b1),
        .D(sampleOS_n_0),
        .Q(prevIDSkip),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \requestAddr[0]_i_1 
       (.I0(currReq[1]),
        .I1(currReq[0]),
        .O(\requestAddr[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \requestAddr[0]_i_3 
       (.I0(sigSizeWords[3]),
        .I1(requestAddr_reg[3]),
        .O(\requestAddr[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \requestAddr[0]_i_4 
       (.I0(sigSizeWords[2]),
        .I1(requestAddr_reg[2]),
        .O(\requestAddr[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \requestAddr[0]_i_5 
       (.I0(sigSizeWords[1]),
        .I1(requestAddr_reg[1]),
        .O(\requestAddr[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \requestAddr[0]_i_6 
       (.I0(sigSizeWords[0]),
        .I1(requestAddr_reg[0]),
        .O(\requestAddr[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \requestAddr[12]_i_2 
       (.I0(requestAddr_reg[13]),
        .I1(sigSizeWords[13]),
        .O(\requestAddr[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \requestAddr[12]_i_3 
       (.I0(sigSizeWords[12]),
        .I1(requestAddr_reg[12]),
        .O(\requestAddr[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \requestAddr[4]_i_2 
       (.I0(sigSizeWords[7]),
        .I1(requestAddr_reg[7]),
        .O(\requestAddr[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \requestAddr[4]_i_3 
       (.I0(sigSizeWords[6]),
        .I1(requestAddr_reg[6]),
        .O(\requestAddr[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \requestAddr[4]_i_4 
       (.I0(sigSizeWords[5]),
        .I1(requestAddr_reg[5]),
        .O(\requestAddr[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \requestAddr[4]_i_5 
       (.I0(sigSizeWords[4]),
        .I1(requestAddr_reg[4]),
        .O(\requestAddr[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \requestAddr[8]_i_2 
       (.I0(sigSizeWords[11]),
        .I1(requestAddr_reg[11]),
        .O(\requestAddr[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \requestAddr[8]_i_3 
       (.I0(sigSizeWords[10]),
        .I1(requestAddr_reg[10]),
        .O(\requestAddr[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \requestAddr[8]_i_4 
       (.I0(sigSizeWords[9]),
        .I1(requestAddr_reg[9]),
        .O(\requestAddr[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \requestAddr[8]_i_5 
       (.I0(sigSizeWords[8]),
        .I1(requestAddr_reg[8]),
        .O(\requestAddr[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \requestAddr_reg[0] 
       (.C(clk),
        .CE(\requestAddr[0]_i_1_n_0 ),
        .D(\requestAddr_reg[0]_i_2_n_7 ),
        .Q(requestAddr_reg[0]),
        .R(currMeta_reg0));
  CARRY4 \requestAddr_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\requestAddr_reg[0]_i_2_n_0 ,\requestAddr_reg[0]_i_2_n_1 ,\requestAddr_reg[0]_i_2_n_2 ,\requestAddr_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(sigSizeWords[3:0]),
        .O({\requestAddr_reg[0]_i_2_n_4 ,\requestAddr_reg[0]_i_2_n_5 ,\requestAddr_reg[0]_i_2_n_6 ,\requestAddr_reg[0]_i_2_n_7 }),
        .S({\requestAddr[0]_i_3_n_0 ,\requestAddr[0]_i_4_n_0 ,\requestAddr[0]_i_5_n_0 ,\requestAddr[0]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \requestAddr_reg[10] 
       (.C(clk),
        .CE(\requestAddr[0]_i_1_n_0 ),
        .D(\requestAddr_reg[8]_i_1_n_5 ),
        .Q(requestAddr_reg[10]),
        .R(currMeta_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \requestAddr_reg[11] 
       (.C(clk),
        .CE(\requestAddr[0]_i_1_n_0 ),
        .D(\requestAddr_reg[8]_i_1_n_4 ),
        .Q(requestAddr_reg[11]),
        .R(currMeta_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \requestAddr_reg[12] 
       (.C(clk),
        .CE(\requestAddr[0]_i_1_n_0 ),
        .D(\requestAddr_reg[12]_i_1_n_7 ),
        .Q(requestAddr_reg[12]),
        .R(currMeta_reg0));
  CARRY4 \requestAddr_reg[12]_i_1 
       (.CI(\requestAddr_reg[8]_i_1_n_0 ),
        .CO({\NLW_requestAddr_reg[12]_i_1_CO_UNCONNECTED [3:1],\requestAddr_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,sigSizeWords[12]}),
        .O({\NLW_requestAddr_reg[12]_i_1_O_UNCONNECTED [3:2],\requestAddr_reg[12]_i_1_n_6 ,\requestAddr_reg[12]_i_1_n_7 }),
        .S({1'b0,1'b0,\requestAddr[12]_i_2_n_0 ,\requestAddr[12]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \requestAddr_reg[13] 
       (.C(clk),
        .CE(\requestAddr[0]_i_1_n_0 ),
        .D(\requestAddr_reg[12]_i_1_n_6 ),
        .Q(requestAddr_reg[13]),
        .R(currMeta_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \requestAddr_reg[1] 
       (.C(clk),
        .CE(\requestAddr[0]_i_1_n_0 ),
        .D(\requestAddr_reg[0]_i_2_n_6 ),
        .Q(requestAddr_reg[1]),
        .R(currMeta_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \requestAddr_reg[2] 
       (.C(clk),
        .CE(\requestAddr[0]_i_1_n_0 ),
        .D(\requestAddr_reg[0]_i_2_n_5 ),
        .Q(requestAddr_reg[2]),
        .R(currMeta_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \requestAddr_reg[3] 
       (.C(clk),
        .CE(\requestAddr[0]_i_1_n_0 ),
        .D(\requestAddr_reg[0]_i_2_n_4 ),
        .Q(requestAddr_reg[3]),
        .R(currMeta_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \requestAddr_reg[4] 
       (.C(clk),
        .CE(\requestAddr[0]_i_1_n_0 ),
        .D(\requestAddr_reg[4]_i_1_n_7 ),
        .Q(requestAddr_reg[4]),
        .R(currMeta_reg0));
  CARRY4 \requestAddr_reg[4]_i_1 
       (.CI(\requestAddr_reg[0]_i_2_n_0 ),
        .CO({\requestAddr_reg[4]_i_1_n_0 ,\requestAddr_reg[4]_i_1_n_1 ,\requestAddr_reg[4]_i_1_n_2 ,\requestAddr_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(sigSizeWords[7:4]),
        .O({\requestAddr_reg[4]_i_1_n_4 ,\requestAddr_reg[4]_i_1_n_5 ,\requestAddr_reg[4]_i_1_n_6 ,\requestAddr_reg[4]_i_1_n_7 }),
        .S({\requestAddr[4]_i_2_n_0 ,\requestAddr[4]_i_3_n_0 ,\requestAddr[4]_i_4_n_0 ,\requestAddr[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \requestAddr_reg[5] 
       (.C(clk),
        .CE(\requestAddr[0]_i_1_n_0 ),
        .D(\requestAddr_reg[4]_i_1_n_6 ),
        .Q(requestAddr_reg[5]),
        .R(currMeta_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \requestAddr_reg[6] 
       (.C(clk),
        .CE(\requestAddr[0]_i_1_n_0 ),
        .D(\requestAddr_reg[4]_i_1_n_5 ),
        .Q(requestAddr_reg[6]),
        .R(currMeta_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \requestAddr_reg[7] 
       (.C(clk),
        .CE(\requestAddr[0]_i_1_n_0 ),
        .D(\requestAddr_reg[4]_i_1_n_4 ),
        .Q(requestAddr_reg[7]),
        .R(currMeta_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \requestAddr_reg[8] 
       (.C(clk),
        .CE(\requestAddr[0]_i_1_n_0 ),
        .D(\requestAddr_reg[8]_i_1_n_7 ),
        .Q(requestAddr_reg[8]),
        .R(currMeta_reg0));
  CARRY4 \requestAddr_reg[8]_i_1 
       (.CI(\requestAddr_reg[4]_i_1_n_0 ),
        .CO({\requestAddr_reg[8]_i_1_n_0 ,\requestAddr_reg[8]_i_1_n_1 ,\requestAddr_reg[8]_i_1_n_2 ,\requestAddr_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(sigSizeWords[11:8]),
        .O({\requestAddr_reg[8]_i_1_n_4 ,\requestAddr_reg[8]_i_1_n_5 ,\requestAddr_reg[8]_i_1_n_6 ,\requestAddr_reg[8]_i_1_n_7 }),
        .S({\requestAddr[8]_i_2_n_0 ,\requestAddr[8]_i_3_n_0 ,\requestAddr[8]_i_4_n_0 ,\requestAddr[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \requestAddr_reg[9] 
       (.C(clk),
        .CE(\requestAddr[0]_i_1_n_0 ),
        .D(\requestAddr_reg[8]_i_1_n_6 ),
        .Q(requestAddr_reg[9]),
        .R(currMeta_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \runningSample_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(su_n_3),
        .Q(\runningSample_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \runningSample_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(su_n_2),
        .Q(\runningSample_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \runningSample_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(su_n_0),
        .Q(p_2_in),
        .R(1'b0));
  oneshot sampleOS
       (.\FSM_onehot_currState_reg[1]_0 (idUnit_n_0),
        .clk(clk),
        .out(currInit),
        .prevIDSkip(prevIDSkip),
        .prevIDSkip_reg(sampleOS_n_0));
  syncUnit su
       (.D(nextMeta[0]),
        .E(canClkCounter),
        .Q(currMeta),
        .baudRate(baudRate[22:0]),
        .canClkPrevValue(canClkPrevValue),
        .clk(clk),
        .\currMeta_reg[0] (\currMeta[0]_i_2_n_0 ),
        .\currMeta_reg[0]_0 (ifDetect_n_5),
        .\currMeta_reg[0]_1 (\currMeta[1]_i_5_n_0 ),
        .\currMeta_reg[0]_2 (pbUnit_n_11),
        .dIn(dIn),
        .disableClk_reg_inv_0(su_n_6),
        .disableClk_reg_inv_1(su_n_7),
        .disableClk_reg_inv_2(pbUnit_n_6),
        .multi_reg_0(outRef_n_1),
        .out(currInit),
        .p_2_in(p_2_in),
        .prevClkVal(prevClkVal),
        .prevClkVal_reg(currMeta),
        .resetN(resetN),
        .\runningSample_reg[0] (su_n_3),
        .\runningSample_reg[0]_0 (\runningSample_reg_n_0_[0] ),
        .\runningSample_reg[1] (su_n_2),
        .\runningSample_reg[1]_0 (\runningSample_reg_n_0_[1] ),
        .\runningSample_reg[2] (su_n_0),
        .samplePulse(samplePulse),
        .threeSamplePoint(threeSamplePoint));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \validSigNum[0]_INST_0 
       (.I0(currMeta[0]),
        .I1(currMeta[1]),
        .I2(currMeta[2]),
        .I3(currMeta[3]),
        .I4(incrementer_reg[0]),
        .I5(\validSigNum[15]_INST_0_i_1_n_1 ),
        .O(validSigNum[0]));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \validSigNum[10]_INST_0 
       (.I0(currMeta[0]),
        .I1(currMeta[1]),
        .I2(currMeta[2]),
        .I3(currMeta[3]),
        .I4(incrementer_reg[10]),
        .I5(\validSigNum[15]_INST_0_i_1_n_1 ),
        .O(validSigNum[10]));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \validSigNum[11]_INST_0 
       (.I0(currMeta[0]),
        .I1(currMeta[1]),
        .I2(currMeta[2]),
        .I3(currMeta[3]),
        .I4(incrementer_reg[11]),
        .I5(\validSigNum[15]_INST_0_i_1_n_1 ),
        .O(validSigNum[11]));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \validSigNum[12]_INST_0 
       (.I0(currMeta[0]),
        .I1(currMeta[1]),
        .I2(currMeta[2]),
        .I3(currMeta[3]),
        .I4(incrementer_reg[12]),
        .I5(\validSigNum[15]_INST_0_i_1_n_1 ),
        .O(validSigNum[12]));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \validSigNum[13]_INST_0 
       (.I0(currMeta[0]),
        .I1(currMeta[1]),
        .I2(currMeta[2]),
        .I3(currMeta[3]),
        .I4(incrementer_reg[13]),
        .I5(\validSigNum[15]_INST_0_i_1_n_1 ),
        .O(validSigNum[13]));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \validSigNum[14]_INST_0 
       (.I0(currMeta[0]),
        .I1(currMeta[1]),
        .I2(currMeta[2]),
        .I3(currMeta[3]),
        .I4(incrementer_reg[14]),
        .I5(\validSigNum[15]_INST_0_i_1_n_1 ),
        .O(validSigNum[14]));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \validSigNum[15]_INST_0 
       (.I0(currMeta[0]),
        .I1(currMeta[1]),
        .I2(currMeta[2]),
        .I3(currMeta[3]),
        .I4(incrementer_reg[15]),
        .I5(\validSigNum[15]_INST_0_i_1_n_1 ),
        .O(validSigNum[15]));
  CARRY4 \validSigNum[15]_INST_0_i_1 
       (.CI(\validSigNum[15]_INST_0_i_2_n_0 ),
        .CO({\NLW_validSigNum[15]_INST_0_i_1_CO_UNCONNECTED [3],\validSigNum[15]_INST_0_i_1_n_1 ,\validSigNum[15]_INST_0_i_1_n_2 ,\validSigNum[15]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_validSigNum[15]_INST_0_i_1_O_UNCONNECTED [3:0]),
        .S({1'b0,\validSigNum[15]_INST_0_i_3_n_0 ,\validSigNum[15]_INST_0_i_3_n_0 ,\validSigNum[15]_INST_0_i_3_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \validSigNum[15]_INST_0_i_10 
       (.I0(incrementer_reg[13]),
        .O(\validSigNum[15]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \validSigNum[15]_INST_0_i_11 
       (.I0(numSigs[9]),
        .I1(nextMeta2[9]),
        .I2(numSigs[10]),
        .I3(nextMeta2[10]),
        .I4(nextMeta2[11]),
        .I5(numSigs[11]),
        .O(\validSigNum[15]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \validSigNum[15]_INST_0_i_12 
       (.I0(numSigs[6]),
        .I1(nextMeta2[6]),
        .I2(numSigs[7]),
        .I3(nextMeta2[7]),
        .I4(nextMeta2[8]),
        .I5(numSigs[8]),
        .O(\validSigNum[15]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \validSigNum[15]_INST_0_i_13 
       (.I0(numSigs[3]),
        .I1(nextMeta2[3]),
        .I2(numSigs[4]),
        .I3(nextMeta2[4]),
        .I4(nextMeta2[5]),
        .I5(numSigs[5]),
        .O(\validSigNum[15]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h6006000000006006)) 
    \validSigNum[15]_INST_0_i_14 
       (.I0(incrementer_reg[0]),
        .I1(numSigs[0]),
        .I2(numSigs[2]),
        .I3(nextMeta2[2]),
        .I4(numSigs[1]),
        .I5(nextMeta2[1]),
        .O(\validSigNum[15]_INST_0_i_14_n_0 ));
  CARRY4 \validSigNum[15]_INST_0_i_15 
       (.CI(\validSigNum[15]_INST_0_i_20_n_0 ),
        .CO({\validSigNum[15]_INST_0_i_15_n_0 ,\validSigNum[15]_INST_0_i_15_n_1 ,\validSigNum[15]_INST_0_i_15_n_2 ,\validSigNum[15]_INST_0_i_15_n_3 }),
        .CYINIT(1'b0),
        .DI(incrementer_reg[8:5]),
        .O(nextMeta2[8:5]),
        .S({\validSigNum[15]_INST_0_i_21_n_0 ,\validSigNum[15]_INST_0_i_22_n_0 ,\validSigNum[15]_INST_0_i_23_n_0 ,\validSigNum[15]_INST_0_i_24_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \validSigNum[15]_INST_0_i_16 
       (.I0(incrementer_reg[12]),
        .O(\validSigNum[15]_INST_0_i_16_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \validSigNum[15]_INST_0_i_17 
       (.I0(incrementer_reg[11]),
        .O(\validSigNum[15]_INST_0_i_17_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \validSigNum[15]_INST_0_i_18 
       (.I0(incrementer_reg[10]),
        .O(\validSigNum[15]_INST_0_i_18_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \validSigNum[15]_INST_0_i_19 
       (.I0(incrementer_reg[9]),
        .O(\validSigNum[15]_INST_0_i_19_n_0 ));
  CARRY4 \validSigNum[15]_INST_0_i_2 
       (.CI(\validSigNum[15]_INST_0_i_4_n_0 ),
        .CO({\validSigNum[15]_INST_0_i_2_n_0 ,\validSigNum[15]_INST_0_i_2_n_1 ,\validSigNum[15]_INST_0_i_2_n_2 ,\validSigNum[15]_INST_0_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_validSigNum[15]_INST_0_i_2_O_UNCONNECTED [3:0]),
        .S({\validSigNum[15]_INST_0_i_3_n_0 ,\validSigNum[15]_INST_0_i_3_n_0 ,\validSigNum[15]_INST_0_i_5_n_0 ,\validSigNum[15]_INST_0_i_6_n_0 }));
  CARRY4 \validSigNum[15]_INST_0_i_20 
       (.CI(1'b0),
        .CO({\validSigNum[15]_INST_0_i_20_n_0 ,\validSigNum[15]_INST_0_i_20_n_1 ,\validSigNum[15]_INST_0_i_20_n_2 ,\validSigNum[15]_INST_0_i_20_n_3 }),
        .CYINIT(incrementer_reg[0]),
        .DI(incrementer_reg[4:1]),
        .O(nextMeta2[4:1]),
        .S({\validSigNum[15]_INST_0_i_25_n_0 ,\validSigNum[15]_INST_0_i_26_n_0 ,\validSigNum[15]_INST_0_i_27_n_0 ,\validSigNum[15]_INST_0_i_28_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \validSigNum[15]_INST_0_i_21 
       (.I0(incrementer_reg[8]),
        .O(\validSigNum[15]_INST_0_i_21_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \validSigNum[15]_INST_0_i_22 
       (.I0(incrementer_reg[7]),
        .O(\validSigNum[15]_INST_0_i_22_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \validSigNum[15]_INST_0_i_23 
       (.I0(incrementer_reg[6]),
        .O(\validSigNum[15]_INST_0_i_23_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \validSigNum[15]_INST_0_i_24 
       (.I0(incrementer_reg[5]),
        .O(\validSigNum[15]_INST_0_i_24_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \validSigNum[15]_INST_0_i_25 
       (.I0(incrementer_reg[4]),
        .O(\validSigNum[15]_INST_0_i_25_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \validSigNum[15]_INST_0_i_26 
       (.I0(incrementer_reg[3]),
        .O(\validSigNum[15]_INST_0_i_26_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \validSigNum[15]_INST_0_i_27 
       (.I0(incrementer_reg[2]),
        .O(\validSigNum[15]_INST_0_i_27_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \validSigNum[15]_INST_0_i_28 
       (.I0(incrementer_reg[1]),
        .O(\validSigNum[15]_INST_0_i_28_n_0 ));
  CARRY4 \validSigNum[15]_INST_0_i_3 
       (.CI(\validSigNum[15]_INST_0_i_7_n_0 ),
        .CO({\validSigNum[15]_INST_0_i_3_n_0 ,\NLW_validSigNum[15]_INST_0_i_3_CO_UNCONNECTED [2],\validSigNum[15]_INST_0_i_3_n_2 ,\validSigNum[15]_INST_0_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,incrementer_reg[15:13]}),
        .O({\NLW_validSigNum[15]_INST_0_i_3_O_UNCONNECTED [3],nextMeta2[15:13]}),
        .S({1'b1,\validSigNum[15]_INST_0_i_8_n_0 ,\validSigNum[15]_INST_0_i_9_n_0 ,\validSigNum[15]_INST_0_i_10_n_0 }));
  CARRY4 \validSigNum[15]_INST_0_i_4 
       (.CI(1'b0),
        .CO({\validSigNum[15]_INST_0_i_4_n_0 ,\validSigNum[15]_INST_0_i_4_n_1 ,\validSigNum[15]_INST_0_i_4_n_2 ,\validSigNum[15]_INST_0_i_4_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_validSigNum[15]_INST_0_i_4_O_UNCONNECTED [3:0]),
        .S({\validSigNum[15]_INST_0_i_11_n_0 ,\validSigNum[15]_INST_0_i_12_n_0 ,\validSigNum[15]_INST_0_i_13_n_0 ,\validSigNum[15]_INST_0_i_14_n_0 }));
  LUT3 #(
    .INIT(8'h82)) 
    \validSigNum[15]_INST_0_i_5 
       (.I0(\validSigNum[15]_INST_0_i_3_n_0 ),
        .I1(nextMeta2[15]),
        .I2(numSigs[15]),
        .O(\validSigNum[15]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \validSigNum[15]_INST_0_i_6 
       (.I0(numSigs[13]),
        .I1(nextMeta2[13]),
        .I2(numSigs[12]),
        .I3(nextMeta2[12]),
        .I4(nextMeta2[14]),
        .I5(numSigs[14]),
        .O(\validSigNum[15]_INST_0_i_6_n_0 ));
  CARRY4 \validSigNum[15]_INST_0_i_7 
       (.CI(\validSigNum[15]_INST_0_i_15_n_0 ),
        .CO({\validSigNum[15]_INST_0_i_7_n_0 ,\validSigNum[15]_INST_0_i_7_n_1 ,\validSigNum[15]_INST_0_i_7_n_2 ,\validSigNum[15]_INST_0_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI(incrementer_reg[12:9]),
        .O(nextMeta2[12:9]),
        .S({\validSigNum[15]_INST_0_i_16_n_0 ,\validSigNum[15]_INST_0_i_17_n_0 ,\validSigNum[15]_INST_0_i_18_n_0 ,\validSigNum[15]_INST_0_i_19_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \validSigNum[15]_INST_0_i_8 
       (.I0(incrementer_reg[15]),
        .O(\validSigNum[15]_INST_0_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \validSigNum[15]_INST_0_i_9 
       (.I0(incrementer_reg[14]),
        .O(\validSigNum[15]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \validSigNum[1]_INST_0 
       (.I0(currMeta[0]),
        .I1(currMeta[1]),
        .I2(currMeta[2]),
        .I3(currMeta[3]),
        .I4(incrementer_reg[1]),
        .I5(\validSigNum[15]_INST_0_i_1_n_1 ),
        .O(validSigNum[1]));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \validSigNum[2]_INST_0 
       (.I0(currMeta[0]),
        .I1(currMeta[1]),
        .I2(currMeta[2]),
        .I3(currMeta[3]),
        .I4(incrementer_reg[2]),
        .I5(\validSigNum[15]_INST_0_i_1_n_1 ),
        .O(validSigNum[2]));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \validSigNum[3]_INST_0 
       (.I0(currMeta[0]),
        .I1(currMeta[1]),
        .I2(currMeta[2]),
        .I3(currMeta[3]),
        .I4(incrementer_reg[3]),
        .I5(\validSigNum[15]_INST_0_i_1_n_1 ),
        .O(validSigNum[3]));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \validSigNum[4]_INST_0 
       (.I0(currMeta[0]),
        .I1(currMeta[1]),
        .I2(currMeta[2]),
        .I3(currMeta[3]),
        .I4(incrementer_reg[4]),
        .I5(\validSigNum[15]_INST_0_i_1_n_1 ),
        .O(validSigNum[4]));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \validSigNum[5]_INST_0 
       (.I0(currMeta[0]),
        .I1(currMeta[1]),
        .I2(currMeta[2]),
        .I3(currMeta[3]),
        .I4(incrementer_reg[5]),
        .I5(\validSigNum[15]_INST_0_i_1_n_1 ),
        .O(validSigNum[5]));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \validSigNum[6]_INST_0 
       (.I0(currMeta[0]),
        .I1(currMeta[1]),
        .I2(currMeta[2]),
        .I3(currMeta[3]),
        .I4(incrementer_reg[6]),
        .I5(\validSigNum[15]_INST_0_i_1_n_1 ),
        .O(validSigNum[6]));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \validSigNum[7]_INST_0 
       (.I0(currMeta[0]),
        .I1(currMeta[1]),
        .I2(currMeta[2]),
        .I3(currMeta[3]),
        .I4(incrementer_reg[7]),
        .I5(\validSigNum[15]_INST_0_i_1_n_1 ),
        .O(validSigNum[7]));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \validSigNum[8]_INST_0 
       (.I0(currMeta[0]),
        .I1(currMeta[1]),
        .I2(currMeta[2]),
        .I3(currMeta[3]),
        .I4(incrementer_reg[8]),
        .I5(\validSigNum[15]_INST_0_i_1_n_1 ),
        .O(validSigNum[8]));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \validSigNum[9]_INST_0 
       (.I0(currMeta[0]),
        .I1(currMeta[1]),
        .I2(currMeta[2]),
        .I3(currMeta[3]),
        .I4(incrementer_reg[9]),
        .I5(\validSigNum[15]_INST_0_i_1_n_1 ),
        .O(validSigNum[9]));
endmodule

(* BRAM_A_ADDR_SIZE = "14" *) (* BRAM_A_DATA_SIZE = "32" *) (* BRAM_A_DEPTH = "32768" *) 
(* C_S00_AXI_ADDR_WIDTH = "6" *) (* C_S00_AXI_DATA_WIDTH = "32" *) 
(* NotValidForBitStream *)
module sampleIP_tl
   (clkA,
    wea,
    addra,
    dina,
    douta,
    ena,
    bramReset,
    canIn,
    dOut,
    enOut,
    interrupt,
    metaState,
    clk,
    resetn,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready);
  output clkA;
  output wea;
  output [13:0]addra;
  output [31:0]dina;
  input [31:0]douta;
  output ena;
  input bramReset;
  input canIn;
  output dOut;
  output enOut;
  output interrupt;
  output [3:0]metaState;
  input clk;
  input resetn;
  input [5:0]s00_axi_awaddr;
  input [2:0]s00_axi_awprot;
  input s00_axi_awvalid;
  output s00_axi_awready;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input s00_axi_wvalid;
  output s00_axi_wready;
  output [1:0]s00_axi_bresp;
  output s00_axi_bvalid;
  input s00_axi_bready;
  input [5:0]s00_axi_araddr;
  input [2:0]s00_axi_arprot;
  input s00_axi_arvalid;
  output s00_axi_arready;
  output [31:0]s00_axi_rdata;
  output [1:0]s00_axi_rresp;
  output s00_axi_rvalid;
  input s00_axi_rready;

  wire \<const0> ;
  wire [13:0]addra;
  wire canIn;
  wire clk;
  wire dOut;
  wire [31:0]douta;
  wire enOut;
  wire ena;
  wire interrupt;
  wire [3:0]metaState;
  wire resetn;
  wire [5:0]s00_axi_araddr;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [5:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign clkA = clk;
  assign dina[31] = \<const0> ;
  assign dina[30] = \<const0> ;
  assign dina[29] = \<const0> ;
  assign dina[28] = \<const0> ;
  assign dina[27] = \<const0> ;
  assign dina[26] = \<const0> ;
  assign dina[25] = \<const0> ;
  assign dina[24] = \<const0> ;
  assign dina[23] = \<const0> ;
  assign dina[22] = \<const0> ;
  assign dina[21] = \<const0> ;
  assign dina[20] = \<const0> ;
  assign dina[19] = \<const0> ;
  assign dina[18] = \<const0> ;
  assign dina[17] = \<const0> ;
  assign dina[16] = \<const0> ;
  assign dina[15] = \<const0> ;
  assign dina[14] = \<const0> ;
  assign dina[13] = \<const0> ;
  assign dina[12] = \<const0> ;
  assign dina[11] = \<const0> ;
  assign dina[10] = \<const0> ;
  assign dina[9] = \<const0> ;
  assign dina[8] = \<const0> ;
  assign dina[7] = \<const0> ;
  assign dina[6] = \<const0> ;
  assign dina[5] = \<const0> ;
  assign dina[4] = \<const0> ;
  assign dina[3] = \<const0> ;
  assign dina[2] = \<const0> ;
  assign dina[1] = \<const0> ;
  assign dina[0] = \<const0> ;
  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  assign wea = \<const0> ;
  GND GND
       (.G(\<const0> ));
  axi_slave_module axi_slave
       (.S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_WREADY(s00_axi_wready),
        .addra(addra),
        .canIn(canIn),
        .clk(clk),
        .dOut(dOut),
        .douta(douta),
        .enOut(enOut),
        .ena(ena),
        .interrupt(interrupt),
        .metaState(metaState),
        .resetn(resetn),
        .s00_axi_araddr(s00_axi_araddr[5:2]),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[5:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

module syncUnit
   (\runningSample_reg[2] ,
    samplePulse,
    \runningSample_reg[1] ,
    \runningSample_reg[0] ,
    E,
    D,
    disableClk_reg_inv_0,
    disableClk_reg_inv_1,
    dIn,
    clk,
    baudRate,
    p_2_in,
    \runningSample_reg[1]_0 ,
    resetN,
    canClkPrevValue,
    \runningSample_reg[0]_0 ,
    prevClkVal,
    out,
    multi_reg_0,
    prevClkVal_reg,
    disableClk_reg_inv_2,
    \currMeta_reg[0] ,
    Q,
    \currMeta_reg[0]_0 ,
    \currMeta_reg[0]_1 ,
    \currMeta_reg[0]_2 ,
    threeSamplePoint);
  output \runningSample_reg[2] ;
  output samplePulse;
  output \runningSample_reg[1] ;
  output \runningSample_reg[0] ;
  output [0:0]E;
  output [0:0]D;
  output disableClk_reg_inv_0;
  output disableClk_reg_inv_1;
  input dIn;
  input clk;
  input [22:0]baudRate;
  input p_2_in;
  input \runningSample_reg[1]_0 ;
  input resetN;
  input canClkPrevValue;
  input \runningSample_reg[0]_0 ;
  input prevClkVal;
  input [2:0]out;
  input multi_reg_0;
  input [3:0]prevClkVal_reg;
  input disableClk_reg_inv_2;
  input \currMeta_reg[0] ;
  input [3:0]Q;
  input \currMeta_reg[0]_0 ;
  input \currMeta_reg[0]_1 ;
  input \currMeta_reg[0]_2 ;
  input threeSamplePoint;

  wire [0:0]D;
  wire [0:0]E;
  wire [3:0]Q;
  wire [22:0]baudRate;
  wire canClk;
  wire canClkPrevValue;
  wire clk;
  wire \currMeta_reg[0] ;
  wire \currMeta_reg[0]_0 ;
  wire \currMeta_reg[0]_1 ;
  wire \currMeta_reg[0]_2 ;
  wire dIn;
  wire delayInput;
  wire disableClk;
  wire disableClk_inv_i_1_n_0;
  wire disableClk_reg_inv_0;
  wire disableClk_reg_inv_1;
  wire disableClk_reg_inv_2;
  wire inRef_n_1;
  wire inRef_n_3;
  wire multi;
  wire multi_reg_0;
  wire [2:0]out;
  wire p_2_in;
  wire prevClkVal;
  wire [3:0]prevClkVal_reg;
  wire resetN;
  wire \runningSample_reg[0] ;
  wire \runningSample_reg[0]_0 ;
  wire \runningSample_reg[1] ;
  wire \runningSample_reg[1]_0 ;
  wire \runningSample_reg[2] ;
  wire sampleInput;
  wire samplePulse;
  wire threeSamplePoint;
  wire timingOut1;

  FDRE #(
    .INIT(1'b0)) 
    delayInput_reg
       (.C(clk),
        .CE(1'b1),
        .D(sampleInput),
        .Q(delayInput),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAFFEFFFEFAAAA)) 
    disableClk_inv_i_1
       (.I0(multi_reg_0),
        .I1(prevClkVal_reg[3]),
        .I2(prevClkVal_reg[2]),
        .I3(disableClk_reg_inv_2),
        .I4(sampleInput),
        .I5(delayInput),
        .O(disableClk_inv_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    disableClk_reg_inv
       (.C(clk),
        .CE(1'b1),
        .D(disableClk_inv_i_1_n_0),
        .Q(disableClk),
        .R(1'b0));
  clkUnit_0 inRef
       (.E(disableClk),
        .baudRate(baudRate),
        .canClk(canClk),
        .clk(clk),
        .\count_reg[4]_0 (inRef_n_1),
        .disableClk_reg_inv(E),
        .disableClk_reg_inv_0(disableClk_reg_inv_0),
        .disableClk_reg_inv_1(disableClk_reg_inv_1),
        .multi(multi),
        .multi_reg(inRef_n_3),
        .multi_reg_0(multi_reg_0),
        .out(out),
        .prevClkVal(prevClkVal),
        .prevClkVal_reg(prevClkVal_reg),
        .resetN(resetN),
        .threeSamplePoint(threeSamplePoint));
  FDRE #(
    .INIT(1'b0)) 
    multi_reg
       (.C(clk),
        .CE(1'b1),
        .D(inRef_n_3),
        .Q(multi),
        .R(1'b0));
  oneshot_1 sampleOS
       (.D(D),
        .\FSM_onehot_currState_reg[1]_0 (samplePulse),
        .\FSM_onehot_currState_reg[2]_0 (inRef_n_1),
        .Q(Q),
        .canClk(canClk),
        .canClkPrevValue(canClkPrevValue),
        .clk(clk),
        .\currMeta_reg[0] (\currMeta_reg[0] ),
        .\currMeta_reg[0]_0 (\currMeta_reg[0]_0 ),
        .\currMeta_reg[0]_1 (\currMeta_reg[0]_1 ),
        .\currMeta_reg[0]_2 (\currMeta_reg[0]_2 ),
        .p_2_in(p_2_in),
        .resetN(resetN),
        .\runningSample_reg[0] (\runningSample_reg[0] ),
        .\runningSample_reg[0]_0 (\runningSample_reg[0]_0 ),
        .\runningSample_reg[1] (\runningSample_reg[1] ),
        .\runningSample_reg[1]_0 (\runningSample_reg[1]_0 ),
        .\runningSample_reg[2] (\runningSample_reg[2] ),
        .sampleInput(sampleInput));
  FDRE #(
    .INIT(1'b0)) 
    syncIn_reg
       (.C(clk),
        .CE(1'b1),
        .D(timingOut1),
        .Q(sampleInput),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    timingOut1_reg
       (.C(clk),
        .CE(1'b1),
        .D(dIn),
        .Q(timingOut1),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module xpm_counter_updn__parameterized0
   (ram_full_i0,
    leaving_empty0,
    Q,
    ram_wr_en_i,
    \count_value_i_reg[0]_0 ,
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg ,
    \count_value_i_reg[1]_0 ,
    rd_en,
    ram_empty_i,
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_0 ,
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_1 ,
    \count_value_i_reg[7]_0 ,
    wr_clk);
  output ram_full_i0;
  output leaving_empty0;
  output [7:0]Q;
  input ram_wr_en_i;
  input \count_value_i_reg[0]_0 ;
  input \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg ;
  input [1:0]\count_value_i_reg[1]_0 ;
  input rd_en;
  input ram_empty_i;
  input [7:0]\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_0 ;
  input [7:0]\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_1 ;
  input [0:0]\count_value_i_reg[7]_0 ;
  input wr_clk;

  wire [7:0]Q;
  wire \count_value_i[0]_i_1__1_n_0 ;
  wire \count_value_i[1]_i_1__1_n_0 ;
  wire \count_value_i[2]_i_1__1_n_0 ;
  wire \count_value_i[3]_i_1__1_n_0 ;
  wire \count_value_i[4]_i_1__1_n_0 ;
  wire \count_value_i[5]_i_1__1_n_0 ;
  wire \count_value_i[6]_i_1__1_n_0 ;
  wire \count_value_i[6]_i_2__1_n_0 ;
  wire \count_value_i[7]_i_1__1_n_0 ;
  wire \count_value_i[7]_i_2__1_n_0 ;
  wire \count_value_i_reg[0]_0 ;
  wire [1:0]\count_value_i_reg[1]_0 ;
  wire [0:0]\count_value_i_reg[7]_0 ;
  wire \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_4_n_0 ;
  wire \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_5_n_0 ;
  wire \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_6_n_0 ;
  wire \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_7_n_0 ;
  wire \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg ;
  wire [7:0]\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_0 ;
  wire [7:0]\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_1 ;
  wire going_full1;
  wire leaving_empty0;
  wire ram_empty_i;
  wire ram_full_i0;
  wire ram_wr_en_i;
  wire rd_en;
  wire wr_clk;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h10EF)) 
    \count_value_i[0]_i_1__1 
       (.I0(rd_en),
        .I1(\count_value_i_reg[1]_0 [0]),
        .I2(\count_value_i_reg[1]_0 [1]),
        .I3(Q[0]),
        .O(\count_value_i[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \count_value_i[1]_i_1__1 
       (.I0(\count_value_i_reg[1]_0 [1]),
        .I1(\count_value_i_reg[1]_0 [0]),
        .I2(rd_en),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\count_value_i[1]_i_1__1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__1 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__1_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__1_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAA200000000)) 
    \count_value_i[6]_i_2__1 
       (.I0(Q[1]),
        .I1(\count_value_i_reg[1]_0 [1]),
        .I2(\count_value_i_reg[1]_0 [0]),
        .I3(rd_en),
        .I4(ram_empty_i),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__1_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__1 
       (.I0(Q[5]),
        .I1(\count_value_i[7]_i_2__1_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[7]_i_2__1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(\count_value_i_reg[0]_0 ),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[7]_i_2__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[0]_i_1__1_n_0 ),
        .Q(Q[0]),
        .R(\count_value_i_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[1]_i_1__1_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[2]_i_1__1_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[3]_i_1__1_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[4]_i_1__1_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[5]_i_1__1_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[6]_i_1__1_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[7]_i_1__1_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[7]_0 ));
  LUT5 #(
    .INIT(32'h0FFF0088)) 
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_1 
       (.I0(ram_wr_en_i),
        .I1(going_full1),
        .I2(leaving_empty0),
        .I3(\count_value_i_reg[0]_0 ),
        .I4(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg ),
        .O(ram_full_i0));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_2 
       (.I0(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_1 [7]),
        .I1(Q[7]),
        .I2(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_1 [6]),
        .I3(Q[6]),
        .I4(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_4_n_0 ),
        .I5(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_5_n_0 ),
        .O(going_full1));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_3 
       (.I0(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_0 [7]),
        .I1(Q[7]),
        .I2(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_0 [6]),
        .I3(Q[6]),
        .I4(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_6_n_0 ),
        .I5(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_7_n_0 ),
        .O(leaving_empty0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_4 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_1 [3]),
        .I2(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_1 [5]),
        .I3(Q[5]),
        .I4(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_1 [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_5 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_1 [0]),
        .I2(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_1 [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_1 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_6 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_0 [3]),
        .I2(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_0 [5]),
        .I3(Q[5]),
        .I4(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_0 [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_7 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_0 [0]),
        .I2(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_0 [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_0 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_7_n_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module xpm_counter_updn__parameterized0_5
   (ram_empty_i0,
    Q,
    \gen_pntr_flags_cc.ram_empty_i_reg ,
    leaving_empty0,
    ram_wr_en_i,
    ram_empty_i,
    wr_en,
    \count_value_i_reg[5]_0 ,
    \count_value_i_reg[0]_0 ,
    rst_d1,
    \gen_pntr_flags_cc.ram_empty_i_reg_0 ,
    wr_clk);
  output ram_empty_i0;
  output [7:0]Q;
  input \gen_pntr_flags_cc.ram_empty_i_reg ;
  input leaving_empty0;
  input ram_wr_en_i;
  input ram_empty_i;
  input wr_en;
  input \count_value_i_reg[5]_0 ;
  input [0:0]\count_value_i_reg[0]_0 ;
  input rst_d1;
  input [7:0]\gen_pntr_flags_cc.ram_empty_i_reg_0 ;
  input wr_clk;

  wire [7:0]Q;
  wire \count_value_i[0]_i_1_n_0 ;
  wire \count_value_i[1]_i_1_n_0 ;
  wire \count_value_i[2]_i_1_n_0 ;
  wire \count_value_i[3]_i_1_n_0 ;
  wire \count_value_i[4]_i_1_n_0 ;
  wire \count_value_i[5]_i_1__0_n_0 ;
  wire \count_value_i[6]_i_1__0_n_0 ;
  wire \count_value_i[6]_i_2__0_n_0 ;
  wire \count_value_i[7]_i_1__0_n_0 ;
  wire \count_value_i[7]_i_2__0_n_0 ;
  wire [0:0]\count_value_i_reg[0]_0 ;
  wire \count_value_i_reg[5]_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_reg ;
  wire [7:0]\gen_pntr_flags_cc.ram_empty_i_reg_0 ;
  wire going_empty1;
  wire leaving_empty0;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire ram_wr_en_i;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__0 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__0_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__0 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__0_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[6]_i_2__0 
       (.I0(Q[1]),
        .I1(wr_en),
        .I2(\count_value_i_reg[5]_0 ),
        .I3(\count_value_i_reg[0]_0 ),
        .I4(rst_d1),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__0 
       (.I0(Q[5]),
        .I1(\count_value_i[7]_i_2__0_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[7]_i_2__0 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(ram_wr_en_i),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[7]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[5]_i_1__0_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[6]_i_1__0_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[7]_i_1__0_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[0]_0 ));
  LUT5 #(
    .INIT(32'h0FFF0088)) 
    \gen_pntr_flags_cc.ram_empty_i_i_1 
       (.I0(\gen_pntr_flags_cc.ram_empty_i_reg ),
        .I1(going_empty1),
        .I2(leaving_empty0),
        .I3(ram_wr_en_i),
        .I4(ram_empty_i),
        .O(ram_empty_i0));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_pntr_flags_cc.ram_empty_i_i_2 
       (.I0(\gen_pntr_flags_cc.ram_empty_i_reg_0 [7]),
        .I1(Q[7]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_reg_0 [6]),
        .I3(Q[6]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ),
        .I5(\gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ),
        .O(going_empty1));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_3 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg_0 [3]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_reg_0 [5]),
        .I3(Q[5]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_reg_0 [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_4 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg_0 [0]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_reg_0 [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_reg_0 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module xpm_counter_updn__parameterized1
   (Q,
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ,
    \count_value_i_reg[0]_0 ,
    rd_en,
    ram_empty_i,
    \count_value_i_reg[1]_0 ,
    wr_clk);
  output [7:0]Q;
  output \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ;
  input [1:0]\count_value_i_reg[0]_0 ;
  input rd_en;
  input ram_empty_i;
  input [0:0]\count_value_i_reg[1]_0 ;
  input wr_clk;

  wire \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ;
  wire [7:0]Q;
  wire \count_value_i[0]_i_1__2_n_0 ;
  wire \count_value_i[1]_i_1__2_n_0 ;
  wire \count_value_i[2]_i_1__2_n_0 ;
  wire \count_value_i[3]_i_1__2_n_0 ;
  wire \count_value_i[4]_i_1__2_n_0 ;
  wire \count_value_i[5]_i_1__2_n_0 ;
  wire \count_value_i[6]_i_1__2_n_0 ;
  wire \count_value_i[6]_i_2__2_n_0 ;
  wire \count_value_i[7]_i_1__2_n_0 ;
  wire \count_value_i[7]_i_2__2_n_0 ;
  wire [1:0]\count_value_i_reg[0]_0 ;
  wire [0:0]\count_value_i_reg[1]_0 ;
  wire ram_empty_i;
  wire rd_en;
  wire wr_clk;

  LUT4 #(
    .INIT(16'h10EF)) 
    \count_value_i[0]_i_1__2 
       (.I0(rd_en),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(\count_value_i_reg[0]_0 [1]),
        .I3(Q[0]),
        .O(\count_value_i[0]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \count_value_i[1]_i_1__2 
       (.I0(\count_value_i_reg[0]_0 [1]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\count_value_i[1]_i_1__2_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__2 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__2_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__2_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAA200000000)) 
    \count_value_i[6]_i_2__2 
       (.I0(Q[1]),
        .I1(\count_value_i_reg[0]_0 [1]),
        .I2(\count_value_i_reg[0]_0 [0]),
        .I3(rd_en),
        .I4(ram_empty_i),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__2_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__2 
       (.I0(Q[5]),
        .I1(\count_value_i[7]_i_2__2_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[7]_i_2__2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[7]_i_2__2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[0]_i_1__2_n_0 ),
        .Q(Q[0]),
        .S(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[1]_i_1__2_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[2]_i_1__2_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[3]_i_1__2_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[4]_i_1__2_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[5]_i_1__2_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[6]_i_1__2_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[7]_i_1__2_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[1]_0 ));
  LUT4 #(
    .INIT(16'h00FD)) 
    \gen_sdpram.xpm_memory_base_inst_i_2 
       (.I0(\count_value_i_reg[0]_0 [1]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(ram_empty_i),
        .O(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module xpm_counter_updn__parameterized1_6
   (Q,
    ram_wr_en_i,
    wr_en,
    \count_value_i_reg[5]_0 ,
    \count_value_i_reg[1]_0 ,
    rst_d1,
    wr_clk);
  output [7:0]Q;
  input ram_wr_en_i;
  input wr_en;
  input \count_value_i_reg[5]_0 ;
  input [0:0]\count_value_i_reg[1]_0 ;
  input rst_d1;
  input wr_clk;

  wire [7:0]Q;
  wire \count_value_i[0]_i_1__0_n_0 ;
  wire \count_value_i[1]_i_1__0_n_0 ;
  wire \count_value_i[2]_i_1__0_n_0 ;
  wire \count_value_i[3]_i_1__0_n_0 ;
  wire \count_value_i[4]_i_1__0_n_0 ;
  wire \count_value_i[5]_i_1_n_0 ;
  wire \count_value_i[6]_i_1_n_0 ;
  wire \count_value_i[6]_i_2_n_0 ;
  wire \count_value_i[7]_i_1_n_0 ;
  wire \count_value_i[7]_i_2_n_0 ;
  wire [0:0]\count_value_i_reg[1]_0 ;
  wire \count_value_i_reg[5]_0 ;
  wire ram_wr_en_i;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__0 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[6]_i_2 
       (.I0(Q[1]),
        .I1(wr_en),
        .I2(\count_value_i_reg[5]_0 ),
        .I3(\count_value_i_reg[1]_0 ),
        .I4(rst_d1),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1 
       (.I0(Q[5]),
        .I1(\count_value_i[7]_i_2_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[7]_i_2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(ram_wr_en_i),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[7]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[0]_i_1__0_n_0 ),
        .Q(Q[0]),
        .S(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[1]_i_1__0_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[2]_i_1__0_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[3]_i_1__0_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[4]_i_1__0_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[7]_i_1_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[1]_0 ));
endmodule

(* CASCADE_HEIGHT = "0" *) (* CDC_DEST_SYNC_FF = "2" *) (* COMMON_CLOCK = "1" *) 
(* DOUT_RESET_VALUE = "0" *) (* ECC_MODE = "0" *) (* ENABLE_ECC = "0" *) 
(* EN_ADV_FEATURE = "16'b0000000000000000" *) (* EN_AE = "1'b0" *) (* EN_AF = "1'b0" *) 
(* EN_DVLD = "1'b0" *) (* EN_OF = "1'b0" *) (* EN_PE = "1'b0" *) 
(* EN_PF = "1'b0" *) (* EN_RDC = "1'b0" *) (* EN_UF = "1'b0" *) 
(* EN_WACK = "1'b0" *) (* EN_WDC = "1'b0" *) (* FG_EQ_ASYM_DOUT = "1'b0" *) 
(* FIFO_MEMORY_TYPE = "1" *) (* FIFO_MEM_TYPE = "1" *) (* FIFO_READ_DEPTH = "256" *) 
(* FIFO_READ_LATENCY = "1" *) (* FIFO_SIZE = "8192" *) (* FIFO_WRITE_DEPTH = "256" *) 
(* FULL_RESET_VALUE = "0" *) (* FULL_RST_VAL = "1'b0" *) (* PE_THRESH_ADJ = "8" *) 
(* PE_THRESH_MAX = "251" *) (* PE_THRESH_MIN = "5" *) (* PF_THRESH_ADJ = "8" *) 
(* PF_THRESH_MAX = "251" *) (* PF_THRESH_MIN = "5" *) (* PROG_EMPTY_THRESH = "10" *) 
(* PROG_FULL_THRESH = "10" *) (* RD_DATA_COUNT_WIDTH = "1" *) (* RD_DC_WIDTH_EXT = "9" *) 
(* RD_LATENCY = "2" *) (* RD_MODE = "1" *) (* RD_PNTR_WIDTH = "8" *) 
(* READ_DATA_WIDTH = "32" *) (* READ_MODE = "1" *) (* RELATED_CLOCKS = "0" *) 
(* REMOVE_WR_RD_PROT_LOGIC = "0" *) (* SIM_ASSERT_CHK = "0" *) (* USE_ADV_FEATURES = "0000" *) 
(* VERSION = "0" *) (* WAKEUP_TIME = "0" *) (* WIDTH_RATIO = "1" *) 
(* WRITE_DATA_WIDTH = "32" *) (* WR_DATA_COUNT_WIDTH = "1" *) (* WR_DC_WIDTH_EXT = "9" *) 
(* WR_DEPTH_LOG = "8" *) (* WR_PNTR_WIDTH = "8" *) (* WR_RD_RATIO = "0" *) 
(* WR_WIDTH_LOG = "5" *) (* XPM_MODULE = "TRUE" *) (* both_stages_valid = "3" *) 
(* invalid = "0" *) (* keep_hierarchy = "soft" *) (* stage1_valid = "2" *) 
(* stage2_valid = "1" *) 
module xpm_fifo_base
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    full_n,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_clk,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [31:0]din;
  output full;
  output full_n;
  output prog_full;
  output [0:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_clk;
  input rd_en;
  output [31:0]dout;
  output empty;
  output prog_empty;
  output [0:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire [7:0]count_value_i__0;
  wire [1:0]curr_fwft_state;
  wire [31:0]din;
  wire [31:0]dout;
  wire empty;
  wire empty_fwft_i0;
  wire full;
  wire \gen_fwft.ram_regout_en ;
  wire leaving_empty0;
  wire [1:0]next_fwft_state__0;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire ram_full_i0;
  wire ram_wr_en_i;
  wire rd_en;
  wire [7:0]rd_pntr_ext;
  wire rdpp1_inst_n_0;
  wire rdpp1_inst_n_1;
  wire rdpp1_inst_n_2;
  wire rdpp1_inst_n_3;
  wire rdpp1_inst_n_4;
  wire rdpp1_inst_n_5;
  wire rdpp1_inst_n_6;
  wire rdpp1_inst_n_7;
  wire rdpp1_inst_n_8;
  wire rst;
  wire rst_d1;
  wire sleep;
  wire wr_clk;
  wire wr_en;
  wire [7:0]wr_pntr_ext;
  wire wr_rst_busy;
  wire xpm_fifo_rst_inst_n_1;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ;
  wire [31:0]\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED ;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign data_valid = \<const0> ;
  assign dbiterr = \<const0> ;
  assign full_n = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h6A85)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1 
       (.I0(curr_fwft_state[0]),
        .I1(rd_en),
        .I2(curr_fwft_state[1]),
        .I3(ram_empty_i),
        .O(next_fwft_state__0[0]));
  LUT3 #(
    .INIT(8'h7C)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1 
       (.I0(rd_en),
        .I1(curr_fwft_state[1]),
        .I2(curr_fwft_state[0]),
        .O(next_fwft_state__0[1]));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[0]),
        .Q(curr_fwft_state[0]),
        .R(xpm_fifo_rst_inst_n_1));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[1]),
        .Q(curr_fwft_state[1]),
        .R(xpm_fifo_rst_inst_n_1));
  GND GND
       (.G(\<const0> ));
  LUT4 #(
    .INIT(16'hF380)) 
    \gen_fwft.empty_fwft_i_i_1 
       (.I0(rd_en),
        .I1(curr_fwft_state[0]),
        .I2(curr_fwft_state[1]),
        .I3(empty),
        .O(empty_fwft_i0));
  FDSE #(
    .INIT(1'b1)) 
    \gen_fwft.empty_fwft_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(empty_fwft_i0),
        .Q(empty),
        .S(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(ram_full_i0),
        .Q(full),
        .R(xpm_fifo_rst_inst_n_1));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.ram_empty_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(ram_empty_i0),
        .Q(ram_empty_i),
        .S(xpm_fifo_rst_inst_n_1));
  (* ADDR_WIDTH_A = "8" *) 
  (* ADDR_WIDTH_B = "8" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "32" *) 
  (* BYTE_WRITE_WIDTH_B = "32" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CLOCKING_MODE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* MAX_NUM_CHAR = "0" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "1" *) 
  (* MEMORY_SIZE = "8192" *) 
  (* MEMORY_TYPE = "1" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "256" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "distributed" *) 
  (* P_MIN_WIDTH_DATA = "32" *) 
  (* P_MIN_WIDTH_DATA_A = "32" *) 
  (* P_MIN_WIDTH_DATA_B = "32" *) 
  (* P_MIN_WIDTH_DATA_ECC = "32" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "32" *) 
  (* P_NUM_COLS_WRITE_A = "1" *) 
  (* P_NUM_COLS_WRITE_B = "1" *) 
  (* P_NUM_ROWS_READ_A = "1" *) 
  (* P_NUM_ROWS_READ_B = "1" *) 
  (* P_NUM_ROWS_WRITE_A = "1" *) 
  (* P_NUM_ROWS_WRITE_B = "1" *) 
  (* P_SDP_WRITE_MODE = "yes" *) 
  (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) 
  (* P_WIDTH_ADDR_READ_A = "8" *) 
  (* P_WIDTH_ADDR_READ_B = "8" *) 
  (* P_WIDTH_ADDR_WRITE_A = "8" *) 
  (* P_WIDTH_ADDR_WRITE_B = "8" *) 
  (* P_WIDTH_COL_WRITE_A = "32" *) 
  (* P_WIDTH_COL_WRITE_B = "32" *) 
  (* READ_DATA_WIDTH_A = "32" *) 
  (* READ_DATA_WIDTH_B = "32" *) 
  (* READ_LATENCY_A = "2" *) 
  (* READ_LATENCY_B = "2" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "0" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "0" *) 
  (* USE_MEM_INIT_MMI = "0" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH_A = "32" *) 
  (* WRITE_DATA_WIDTH_B = "32" *) 
  (* WRITE_MODE_A = "2" *) 
  (* WRITE_MODE_B = "1" *) 
  (* WRITE_PROTECT = "1" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* rsta_loop_iter = "32" *) 
  (* rstb_loop_iter = "32" *) 
  xpm_memory_base \gen_sdpram.xpm_memory_base_inst 
       (.addra(wr_pntr_ext),
        .addrb(rd_pntr_ext),
        .clka(wr_clk),
        .clkb(1'b0),
        .dbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ),
        .dbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ),
        .dina(din),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED [31:0]),
        .doutb(dout),
        .ena(ram_wr_en_i),
        .enb(rdpp1_inst_n_8),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b0),
        .regceb(\gen_fwft.ram_regout_en ),
        .rsta(1'b0),
        .rstb(xpm_fifo_rst_inst_n_1),
        .sbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ),
        .sbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ),
        .sleep(sleep),
        .wea(1'b0),
        .web(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h62)) 
    \gen_sdpram.xpm_memory_base_inst_i_3 
       (.I0(curr_fwft_state[0]),
        .I1(curr_fwft_state[1]),
        .I2(rd_en),
        .O(\gen_fwft.ram_regout_en ));
  xpm_counter_updn__parameterized0 rdp_inst
       (.Q(rd_pntr_ext),
        .\count_value_i_reg[0]_0 (rdpp1_inst_n_8),
        .\count_value_i_reg[1]_0 (curr_fwft_state),
        .\count_value_i_reg[7]_0 (xpm_fifo_rst_inst_n_1),
        .\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg (full),
        .\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_0 (wr_pntr_ext),
        .\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_1 (count_value_i__0),
        .leaving_empty0(leaving_empty0),
        .ram_empty_i(ram_empty_i),
        .ram_full_i0(ram_full_i0),
        .ram_wr_en_i(ram_wr_en_i),
        .rd_en(rd_en),
        .wr_clk(wr_clk));
  xpm_counter_updn__parameterized1 rdpp1_inst
       (.\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] (rdpp1_inst_n_8),
        .Q({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3,rdpp1_inst_n_4,rdpp1_inst_n_5,rdpp1_inst_n_6,rdpp1_inst_n_7}),
        .\count_value_i_reg[0]_0 (curr_fwft_state),
        .\count_value_i_reg[1]_0 (xpm_fifo_rst_inst_n_1),
        .ram_empty_i(ram_empty_i),
        .rd_en(rd_en),
        .wr_clk(wr_clk));
  xpm_fifo_reg_bit rst_d1_inst
       (.Q(xpm_fifo_rst_inst_n_1),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk));
  xpm_counter_updn__parameterized0_5 wrp_inst
       (.Q(wr_pntr_ext),
        .\count_value_i_reg[0]_0 (xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[5]_0 (full),
        .\gen_pntr_flags_cc.ram_empty_i_reg (rdpp1_inst_n_8),
        .\gen_pntr_flags_cc.ram_empty_i_reg_0 ({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3,rdpp1_inst_n_4,rdpp1_inst_n_5,rdpp1_inst_n_6,rdpp1_inst_n_7}),
        .leaving_empty0(leaving_empty0),
        .ram_empty_i(ram_empty_i),
        .ram_empty_i0(ram_empty_i0),
        .ram_wr_en_i(ram_wr_en_i),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  xpm_counter_updn__parameterized1_6 wrpp1_inst
       (.Q(count_value_i__0),
        .\count_value_i_reg[1]_0 (xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[5]_0 (full),
        .ram_wr_en_i(ram_wr_en_i),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  xpm_fifo_rst xpm_fifo_rst_inst
       (.Q(xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[7] (full),
        .ram_wr_en_i(ram_wr_en_i),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_rst_busy(wr_rst_busy));
endmodule

module xpm_fifo_reg_bit
   (rst_d1,
    Q,
    wr_clk);
  output rst_d1;
  input [0:0]Q;
  input wr_clk;

  wire [0:0]Q;
  wire rst_d1;
  wire wr_clk;

  FDRE #(
    .INIT(1'b0)) 
    d_out_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(Q),
        .Q(rst_d1),
        .R(1'b0));
endmodule

module xpm_fifo_rst
   (ram_wr_en_i,
    Q,
    wr_rst_busy,
    wr_en,
    \count_value_i_reg[7] ,
    rst_d1,
    rst,
    wr_clk);
  output ram_wr_en_i;
  output [0:0]Q;
  output wr_rst_busy;
  input wr_en;
  input \count_value_i_reg[7] ;
  input rst_d1;
  input rst;
  input wr_clk;

  wire [0:0]Q;
  wire \count_value_i_reg[7] ;
  wire [1:0]\gen_rst_cc.fifo_wr_rst_cc ;
  wire p_0_in;
  wire \power_on_rst_reg_n_0_[0] ;
  wire ram_wr_en_i;
  wire rst;
  wire rst_d1;
  wire rst_i;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;

  LUT2 #(
    .INIT(4'hE)) 
    \gen_rst_cc.fifo_wr_rst_cc[2]_i_1 
       (.I0(p_0_in),
        .I1(rst),
        .O(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\gen_rst_cc.fifo_wr_rst_cc [0]),
        .S(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_cc.fifo_wr_rst_cc [0]),
        .Q(\gen_rst_cc.fifo_wr_rst_cc [1]),
        .S(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_cc.fifo_wr_rst_cc [1]),
        .Q(Q),
        .S(rst_i));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \gen_sdpram.xpm_memory_base_inst_i_1 
       (.I0(wr_en),
        .I1(\count_value_i_reg[7] ),
        .I2(Q),
        .I3(rst_d1),
        .O(ram_wr_en_i));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\power_on_rst_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\power_on_rst_reg_n_0_[0] ),
        .Q(p_0_in),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hE)) 
    wr_rst_busy_INST_0
       (.I0(Q),
        .I1(rst_d1),
        .O(wr_rst_busy));
endmodule

(* CASCADE_HEIGHT = "0" *) (* DOUT_RESET_VALUE = "0" *) (* ECC_MODE = "no_ecc" *) 
(* EN_ADV_FEATURE_SYNC = "16'b0000000000000000" *) (* FIFO_MEMORY_TYPE = "distributed" *) (* FIFO_READ_LATENCY = "1" *) 
(* FIFO_WRITE_DEPTH = "256" *) (* FULL_RESET_VALUE = "0" *) (* PROG_EMPTY_THRESH = "10" *) 
(* PROG_FULL_THRESH = "10" *) (* P_COMMON_CLOCK = "1" *) (* P_ECC_MODE = "0" *) 
(* P_FIFO_MEMORY_TYPE = "1" *) (* P_READ_MODE = "1" *) (* P_WAKEUP_TIME = "2" *) 
(* RD_DATA_COUNT_WIDTH = "1" *) (* READ_DATA_WIDTH = "32" *) (* READ_MODE = "fwft" *) 
(* SIM_ASSERT_CHK = "0" *) (* USE_ADV_FEATURES = "0000" *) (* WAKEUP_TIME = "0" *) 
(* WRITE_DATA_WIDTH = "32" *) (* WR_DATA_COUNT_WIDTH = "1" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "soft" *) 
module xpm_fifo_sync
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [31:0]din;
  output full;
  output prog_full;
  output [0:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_en;
  output [31:0]dout;
  output empty;
  output prog_empty;
  output [0:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire [31:0]din;
  wire [31:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire rd_rst_busy;
  wire rst;
  wire sleep;
  wire wr_clk;
  wire wr_en;
  wire NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_data_valid_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_full_n_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_overflow_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_prog_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_underflow_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED;
  wire [0:0]NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign data_valid = \<const0> ;
  assign dbiterr = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  assign wr_rst_busy = rd_rst_busy;
  GND GND
       (.G(\<const0> ));
  (* CASCADE_HEIGHT = "0" *) 
  (* CDC_DEST_SYNC_FF = "2" *) 
  (* COMMON_CLOCK = "1" *) 
  (* DOUT_RESET_VALUE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* ENABLE_ECC = "0" *) 
  (* EN_ADV_FEATURE = "16'b0000000000000000" *) 
  (* EN_AE = "1'b0" *) 
  (* EN_AF = "1'b0" *) 
  (* EN_DVLD = "1'b0" *) 
  (* EN_OF = "1'b0" *) 
  (* EN_PE = "1'b0" *) 
  (* EN_PF = "1'b0" *) 
  (* EN_RDC = "1'b0" *) 
  (* EN_UF = "1'b0" *) 
  (* EN_WACK = "1'b0" *) 
  (* EN_WDC = "1'b0" *) 
  (* FG_EQ_ASYM_DOUT = "1'b0" *) 
  (* FIFO_MEMORY_TYPE = "1" *) 
  (* FIFO_MEM_TYPE = "1" *) 
  (* FIFO_READ_DEPTH = "256" *) 
  (* FIFO_READ_LATENCY = "1" *) 
  (* FIFO_SIZE = "8192" *) 
  (* FIFO_WRITE_DEPTH = "256" *) 
  (* FULL_RESET_VALUE = "0" *) 
  (* FULL_RST_VAL = "1'b0" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* PE_THRESH_ADJ = "8" *) 
  (* PE_THRESH_MAX = "251" *) 
  (* PE_THRESH_MIN = "5" *) 
  (* PF_THRESH_ADJ = "8" *) 
  (* PF_THRESH_MAX = "251" *) 
  (* PF_THRESH_MIN = "5" *) 
  (* PROG_EMPTY_THRESH = "10" *) 
  (* PROG_FULL_THRESH = "10" *) 
  (* RD_DATA_COUNT_WIDTH = "1" *) 
  (* RD_DC_WIDTH_EXT = "9" *) 
  (* RD_LATENCY = "2" *) 
  (* RD_MODE = "1" *) 
  (* RD_PNTR_WIDTH = "8" *) 
  (* READ_DATA_WIDTH = "32" *) 
  (* READ_MODE = "1" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "0000" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WIDTH_RATIO = "1" *) 
  (* WRITE_DATA_WIDTH = "32" *) 
  (* WR_DATA_COUNT_WIDTH = "1" *) 
  (* WR_DC_WIDTH_EXT = "9" *) 
  (* WR_DEPTH_LOG = "8" *) 
  (* WR_PNTR_WIDTH = "8" *) 
  (* WR_RD_RATIO = "0" *) 
  (* WR_WIDTH_LOG = "5" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* both_stages_valid = "3" *) 
  (* invalid = "0" *) 
  (* stage1_valid = "2" *) 
  (* stage2_valid = "1" *) 
  xpm_fifo_base xpm_fifo_base_inst
       (.almost_empty(NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED),
        .almost_full(NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED),
        .data_valid(NLW_xpm_fifo_base_inst_data_valid_UNCONNECTED),
        .dbiterr(NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .full_n(NLW_xpm_fifo_base_inst_full_n_UNCONNECTED),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(NLW_xpm_fifo_base_inst_overflow_UNCONNECTED),
        .prog_empty(NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED),
        .prog_full(NLW_xpm_fifo_base_inst_prog_full_UNCONNECTED),
        .rd_clk(1'b0),
        .rd_data_count(NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED[0]),
        .rd_en(rd_en),
        .rd_rst_busy(NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED),
        .rst(rst),
        .sbiterr(NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED),
        .sleep(sleep),
        .underflow(NLW_xpm_fifo_base_inst_underflow_UNCONNECTED),
        .wr_ack(NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED[0]),
        .wr_en(wr_en),
        .wr_rst_busy(rd_rst_busy));
endmodule

(* ADDR_WIDTH_A = "8" *) (* ADDR_WIDTH_B = "8" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "32" *) (* BYTE_WRITE_WIDTH_B = "32" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "0" *) (* ECC_MODE = "0" *) (* MAX_NUM_CHAR = "0" *) 
(* MEMORY_INIT_FILE = "none" *) (* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) 
(* MEMORY_PRIMITIVE = "1" *) (* MEMORY_SIZE = "8192" *) (* MEMORY_TYPE = "1" *) 
(* MESSAGE_CONTROL = "0" *) (* NUM_CHAR_LOC = "0" *) (* P_ECC_MODE = "no_ecc" *) 
(* P_ENABLE_BYTE_WRITE_A = "0" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) (* P_MAX_DEPTH_DATA = "256" *) 
(* P_MEMORY_OPT = "yes" *) (* P_MEMORY_PRIMITIVE = "distributed" *) (* P_MIN_WIDTH_DATA = "32" *) 
(* P_MIN_WIDTH_DATA_A = "32" *) (* P_MIN_WIDTH_DATA_B = "32" *) (* P_MIN_WIDTH_DATA_ECC = "32" *) 
(* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "32" *) (* P_NUM_COLS_WRITE_A = "1" *) 
(* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_ROWS_READ_A = "1" *) (* P_NUM_ROWS_READ_B = "1" *) 
(* P_NUM_ROWS_WRITE_A = "1" *) (* P_NUM_ROWS_WRITE_B = "1" *) (* P_SDP_WRITE_MODE = "yes" *) 
(* P_WIDTH_ADDR_LSB_READ_A = "0" *) (* P_WIDTH_ADDR_LSB_READ_B = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
(* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) (* P_WIDTH_ADDR_READ_A = "8" *) (* P_WIDTH_ADDR_READ_B = "8" *) 
(* P_WIDTH_ADDR_WRITE_A = "8" *) (* P_WIDTH_ADDR_WRITE_B = "8" *) (* P_WIDTH_COL_WRITE_A = "32" *) 
(* P_WIDTH_COL_WRITE_B = "32" *) (* READ_DATA_WIDTH_A = "32" *) (* READ_DATA_WIDTH_B = "32" *) 
(* READ_LATENCY_A = "2" *) (* READ_LATENCY_B = "2" *) (* READ_RESET_VALUE_A = "0" *) 
(* READ_RESET_VALUE_B = "0" *) (* RST_MODE_A = "SYNC" *) (* RST_MODE_B = "SYNC" *) 
(* SIM_ASSERT_CHK = "0" *) (* USE_EMBEDDED_CONSTRAINT = "0" *) (* USE_MEM_INIT = "0" *) 
(* USE_MEM_INIT_MMI = "0" *) (* VERSION = "0" *) (* WAKEUP_TIME = "0" *) 
(* WRITE_DATA_WIDTH_A = "32" *) (* WRITE_DATA_WIDTH_B = "32" *) (* WRITE_MODE_A = "2" *) 
(* WRITE_MODE_B = "1" *) (* WRITE_PROTECT = "1" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "soft" *) (* rsta_loop_iter = "32" *) (* rstb_loop_iter = "32" *) 
module xpm_memory_base
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [7:0]addra;
  input [31:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [31:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [7:0]addrb;
  input [31:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [31:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [7:0]addra;
  wire [7:0]addrb;
  wire clka;
  wire [31:0]dina;
  wire [31:0]doutb;
  wire ena;
  wire enb;
  wire [31:0]\gen_rd_b.doutb_reg ;
  wire \gen_rd_b.doutb_reg_reg_pipe_100_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_101_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_102_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_103_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_104_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_105_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_106_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_107_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_108_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_109_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_10_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_110_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_111_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_112_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_113_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_114_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_115_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_116_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_117_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_118_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_119_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_11_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_120_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_121_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_122_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_123_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_124_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_125_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_126_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_127_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_128_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_129_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_12_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_130_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_13_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_14_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_15_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_16_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_17_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_18_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_19_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_1_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_20_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_21_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_22_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_23_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_24_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_25_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_26_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_27_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_28_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_29_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_2_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_30_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_31_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_32_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_33_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_34_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_35_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_36_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_37_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_38_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_39_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_3_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_40_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_41_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_42_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_43_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_44_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_45_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_46_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_47_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_48_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_49_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_4_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_50_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_51_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_52_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_53_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_54_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_55_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_56_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_57_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_58_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_59_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_60_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_61_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_62_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_63_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_64_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_65_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_66_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_67_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_68_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_69_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_70_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_71_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_72_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_73_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_74_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_75_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_76_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_77_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_78_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_79_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_7_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_80_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_81_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_82_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_83_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_84_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_85_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_86_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_87_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_88_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_89_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_8_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_90_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_91_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_92_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_93_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_94_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_95_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_96_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_97_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_98_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_99_reg_n_0 ;
  wire \gen_rd_b.doutb_reg_reg_pipe_9_reg_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_2_i_1_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_2_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_2_n_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_2_n_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0_63_12_14_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0_63_12_14_n_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0_63_12_14_n_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0_63_15_17_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0_63_15_17_n_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0_63_15_17_n_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0_63_18_20_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0_63_18_20_n_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0_63_18_20_n_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0_63_21_23_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0_63_21_23_n_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0_63_21_23_n_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0_63_24_26_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0_63_24_26_n_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0_63_24_26_n_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0_63_27_29_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0_63_27_29_n_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0_63_27_29_n_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0_63_30_30_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0_63_31_31_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0_63_3_5_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0_63_3_5_n_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0_63_3_5_n_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0_63_6_8_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0_63_6_8_n_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0_63_6_8_n_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0_63_9_11_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0_63_9_11_n_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0_63_9_11_n_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_128_191_0_2_i_1_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_128_191_0_2_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_128_191_0_2_n_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_128_191_0_2_n_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_128_191_12_14_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_128_191_12_14_n_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_128_191_12_14_n_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_128_191_15_17_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_128_191_15_17_n_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_128_191_15_17_n_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_128_191_18_20_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_128_191_18_20_n_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_128_191_18_20_n_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_128_191_21_23_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_128_191_21_23_n_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_128_191_21_23_n_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_128_191_24_26_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_128_191_24_26_n_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_128_191_24_26_n_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_128_191_27_29_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_128_191_27_29_n_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_128_191_27_29_n_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_128_191_30_30_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_128_191_31_31_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_128_191_3_5_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_128_191_3_5_n_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_128_191_3_5_n_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_128_191_6_8_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_128_191_6_8_n_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_128_191_6_8_n_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_128_191_9_11_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_128_191_9_11_n_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_128_191_9_11_n_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_192_255_0_2_i_1_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_192_255_0_2_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_192_255_0_2_n_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_192_255_0_2_n_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_192_255_12_14_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_192_255_12_14_n_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_192_255_12_14_n_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_192_255_15_17_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_192_255_15_17_n_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_192_255_15_17_n_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_192_255_18_20_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_192_255_18_20_n_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_192_255_18_20_n_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_192_255_21_23_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_192_255_21_23_n_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_192_255_21_23_n_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_192_255_24_26_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_192_255_24_26_n_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_192_255_24_26_n_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_192_255_27_29_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_192_255_27_29_n_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_192_255_27_29_n_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_192_255_30_30_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_192_255_31_31_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_192_255_3_5_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_192_255_3_5_n_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_192_255_3_5_n_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_192_255_6_8_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_192_255_6_8_n_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_192_255_6_8_n_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_192_255_9_11_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_192_255_9_11_n_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_192_255_9_11_n_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_2_i_1_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_2_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_2_n_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_2_n_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_64_127_12_14_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_64_127_12_14_n_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_64_127_12_14_n_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_64_127_15_17_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_64_127_15_17_n_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_64_127_15_17_n_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_64_127_18_20_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_64_127_18_20_n_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_64_127_18_20_n_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_64_127_21_23_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_64_127_21_23_n_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_64_127_21_23_n_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_64_127_24_26_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_64_127_24_26_n_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_64_127_24_26_n_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_64_127_27_29_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_64_127_27_29_n_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_64_127_27_29_n_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_64_127_30_30_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_64_127_31_31_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_64_127_3_5_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_64_127_3_5_n_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_64_127_3_5_n_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_64_127_6_8_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_64_127_6_8_n_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_64_127_6_8_n_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_64_127_9_11_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_64_127_9_11_n_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_64_127_9_11_n_2 ;
  wire regceb;
  wire rstb;
  wire select_piped_1_reg_pipe_5_reg_n_0;
  wire select_piped_3_reg_pipe_6_reg_n_0;
  wire sleep;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_0_2_DOD_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_12_14_DOD_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_15_17_DOD_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_18_20_DOD_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_21_23_DOD_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_24_26_DOD_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_27_29_DOD_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_30_30_SPO_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_31_31_SPO_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_3_5_DOD_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_6_8_DOD_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_9_11_DOD_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_128_191_0_2_DOD_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_128_191_12_14_DOD_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_128_191_15_17_DOD_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_128_191_18_20_DOD_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_128_191_21_23_DOD_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_128_191_24_26_DOD_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_128_191_27_29_DOD_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_128_191_30_30_SPO_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_128_191_31_31_SPO_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_128_191_3_5_DOD_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_128_191_6_8_DOD_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_128_191_9_11_DOD_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_192_255_0_2_DOD_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_192_255_12_14_DOD_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_192_255_15_17_DOD_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_192_255_18_20_DOD_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_192_255_21_23_DOD_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_192_255_24_26_DOD_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_192_255_27_29_DOD_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_192_255_30_30_SPO_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_192_255_31_31_SPO_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_192_255_3_5_DOD_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_192_255_6_8_DOD_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_192_255_9_11_DOD_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_64_127_0_2_DOD_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_64_127_12_14_DOD_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_64_127_15_17_DOD_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_64_127_18_20_DOD_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_64_127_21_23_DOD_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_64_127_24_26_DOD_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_64_127_27_29_DOD_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_64_127_30_30_SPO_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_64_127_31_31_SPO_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_64_127_3_5_DOD_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_64_127_6_8_DOD_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_64_127_9_11_DOD_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign douta[31] = \<const0> ;
  assign douta[30] = \<const0> ;
  assign douta[29] = \<const0> ;
  assign douta[28] = \<const0> ;
  assign douta[27] = \<const0> ;
  assign douta[26] = \<const0> ;
  assign douta[25] = \<const0> ;
  assign douta[24] = \<const0> ;
  assign douta[23] = \<const0> ;
  assign douta[22] = \<const0> ;
  assign douta[21] = \<const0> ;
  assign douta[20] = \<const0> ;
  assign douta[19] = \<const0> ;
  assign douta[18] = \<const0> ;
  assign douta[17] = \<const0> ;
  assign douta[16] = \<const0> ;
  assign douta[15] = \<const0> ;
  assign douta[14] = \<const0> ;
  assign douta[13] = \<const0> ;
  assign douta[12] = \<const0> ;
  assign douta[11] = \<const0> ;
  assign douta[10] = \<const0> ;
  assign douta[9] = \<const0> ;
  assign douta[8] = \<const0> ;
  assign douta[7] = \<const0> ;
  assign douta[6] = \<const0> ;
  assign douta[5] = \<const0> ;
  assign douta[4] = \<const0> ;
  assign douta[3] = \<const0> ;
  assign douta[2] = \<const0> ;
  assign douta[1] = \<const0> ;
  assign douta[0] = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_100_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_64_127_6_8_n_1 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_100_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_101_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_128_191_6_8_n_1 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_101_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_102_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_192_255_6_8_n_1 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_102_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_103_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_0_63_6_8_n_0 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_103_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_104_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_64_127_6_8_n_0 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_104_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_105_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_128_191_6_8_n_0 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_105_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_106_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_192_255_6_8_n_0 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_106_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_107_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_0_63_3_5_n_2 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_107_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_108_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_64_127_3_5_n_2 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_108_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_109_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_128_191_3_5_n_2 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_109_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_10_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_192_255_30_30_n_0 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_10_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_110_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_192_255_3_5_n_2 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_110_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_111_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_0_63_3_5_n_1 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_111_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_112_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_64_127_3_5_n_1 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_112_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_113_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_128_191_3_5_n_1 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_113_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_114_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_192_255_3_5_n_1 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_114_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_115_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_0_63_3_5_n_0 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_115_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_116_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_64_127_3_5_n_0 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_116_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_117_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_128_191_3_5_n_0 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_117_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_118_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_192_255_3_5_n_0 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_118_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_119_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_0_63_0_2_n_2 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_119_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_11_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_0_63_27_29_n_2 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_11_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_120_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_64_127_0_2_n_2 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_120_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_121_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_128_191_0_2_n_2 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_121_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_122_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_192_255_0_2_n_2 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_122_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_123_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_0_63_0_2_n_1 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_123_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_124_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_64_127_0_2_n_1 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_124_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_125_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_128_191_0_2_n_1 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_125_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_126_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_192_255_0_2_n_1 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_126_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_127_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_0_63_0_2_n_0 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_127_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_128_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_64_127_0_2_n_0 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_128_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_129_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_128_191_0_2_n_0 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_129_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_12_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_64_127_27_29_n_2 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_12_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_130_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_192_255_0_2_n_0 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_130_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_13_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_128_191_27_29_n_2 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_13_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_14_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_192_255_27_29_n_2 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_14_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_15_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_0_63_27_29_n_1 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_15_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_16_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_64_127_27_29_n_1 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_16_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_17_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_128_191_27_29_n_1 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_17_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_18_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_192_255_27_29_n_1 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_18_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_19_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_0_63_27_29_n_0 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_19_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_1_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_0_63_31_31_n_0 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_1_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_20_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_64_127_27_29_n_0 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_20_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_21_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_128_191_27_29_n_0 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_21_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_22_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_192_255_27_29_n_0 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_22_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_23_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_0_63_24_26_n_2 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_23_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_24_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_64_127_24_26_n_2 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_24_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_25_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_128_191_24_26_n_2 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_25_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_26_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_192_255_24_26_n_2 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_26_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_27_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_0_63_24_26_n_1 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_27_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_28_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_64_127_24_26_n_1 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_28_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_29_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_128_191_24_26_n_1 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_29_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_2_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_64_127_31_31_n_0 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_2_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_30_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_192_255_24_26_n_1 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_30_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_31_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_0_63_24_26_n_0 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_31_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_32_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_64_127_24_26_n_0 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_32_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_33_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_128_191_24_26_n_0 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_33_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_34_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_192_255_24_26_n_0 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_34_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_35_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_0_63_21_23_n_2 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_35_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_36_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_64_127_21_23_n_2 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_36_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_37_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_128_191_21_23_n_2 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_37_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_38_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_192_255_21_23_n_2 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_38_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_39_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_0_63_21_23_n_1 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_39_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_3_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_128_191_31_31_n_0 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_3_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_40_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_64_127_21_23_n_1 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_40_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_41_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_128_191_21_23_n_1 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_41_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_42_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_192_255_21_23_n_1 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_42_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_43_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_0_63_21_23_n_0 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_43_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_44_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_64_127_21_23_n_0 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_44_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_45_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_128_191_21_23_n_0 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_45_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_46_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_192_255_21_23_n_0 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_46_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_47_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_0_63_18_20_n_2 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_47_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_48_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_64_127_18_20_n_2 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_48_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_49_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_128_191_18_20_n_2 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_49_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_4_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_192_255_31_31_n_0 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_4_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_50_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_192_255_18_20_n_2 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_50_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_51_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_0_63_18_20_n_1 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_51_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_52_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_64_127_18_20_n_1 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_52_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_53_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_128_191_18_20_n_1 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_53_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_54_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_192_255_18_20_n_1 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_54_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_55_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_0_63_18_20_n_0 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_55_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_56_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_64_127_18_20_n_0 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_56_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_57_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_128_191_18_20_n_0 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_57_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_58_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_192_255_18_20_n_0 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_58_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_59_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_0_63_15_17_n_2 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_59_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_60_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_64_127_15_17_n_2 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_60_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_61_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_128_191_15_17_n_2 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_61_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_62_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_192_255_15_17_n_2 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_62_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_63_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_0_63_15_17_n_1 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_63_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_64_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_64_127_15_17_n_1 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_64_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_65_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_128_191_15_17_n_1 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_65_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_66_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_192_255_15_17_n_1 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_66_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_67_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_0_63_15_17_n_0 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_67_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_68_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_64_127_15_17_n_0 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_68_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_69_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_128_191_15_17_n_0 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_69_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_70_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_192_255_15_17_n_0 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_70_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_71_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_0_63_12_14_n_2 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_71_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_72_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_64_127_12_14_n_2 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_72_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_73_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_128_191_12_14_n_2 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_73_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_74_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_192_255_12_14_n_2 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_74_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_75_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_0_63_12_14_n_1 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_75_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_76_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_64_127_12_14_n_1 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_76_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_77_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_128_191_12_14_n_1 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_77_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_78_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_192_255_12_14_n_1 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_78_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_79_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_0_63_12_14_n_0 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_79_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_7_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_0_63_30_30_n_0 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_7_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_80_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_64_127_12_14_n_0 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_80_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_81_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_128_191_12_14_n_0 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_81_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_82_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_192_255_12_14_n_0 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_82_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_83_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_0_63_9_11_n_2 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_83_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_84_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_64_127_9_11_n_2 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_84_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_85_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_128_191_9_11_n_2 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_85_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_86_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_192_255_9_11_n_2 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_86_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_87_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_0_63_9_11_n_1 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_87_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_88_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_64_127_9_11_n_1 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_88_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_89_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_128_191_9_11_n_1 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_89_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_8_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_64_127_30_30_n_0 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_8_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_90_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_192_255_9_11_n_1 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_90_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_91_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_0_63_9_11_n_0 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_91_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_92_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_64_127_9_11_n_0 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_92_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_93_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_128_191_9_11_n_0 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_93_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_94_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_192_255_9_11_n_0 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_94_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_95_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_0_63_6_8_n_2 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_95_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_96_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_64_127_6_8_n_2 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_96_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_97_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_128_191_6_8_n_2 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_97_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_98_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_192_255_6_8_n_2 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_98_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_99_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_0_63_6_8_n_1 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_99_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg_pipe_9_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_128_191_30_30_n_0 ),
        .Q(\gen_rd_b.doutb_reg_reg_pipe_9_reg_n_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe[0][0]_i_1 
       (.I0(\gen_rd_b.doutb_reg_reg_pipe_130_reg_n_0 ),
        .I1(\gen_rd_b.doutb_reg_reg_pipe_129_reg_n_0 ),
        .I2(select_piped_3_reg_pipe_6_reg_n_0),
        .I3(\gen_rd_b.doutb_reg_reg_pipe_128_reg_n_0 ),
        .I4(select_piped_1_reg_pipe_5_reg_n_0),
        .I5(\gen_rd_b.doutb_reg_reg_pipe_127_reg_n_0 ),
        .O(\gen_rd_b.doutb_reg [0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe[0][10]_i_1 
       (.I0(\gen_rd_b.doutb_reg_reg_pipe_90_reg_n_0 ),
        .I1(\gen_rd_b.doutb_reg_reg_pipe_89_reg_n_0 ),
        .I2(select_piped_3_reg_pipe_6_reg_n_0),
        .I3(\gen_rd_b.doutb_reg_reg_pipe_88_reg_n_0 ),
        .I4(select_piped_1_reg_pipe_5_reg_n_0),
        .I5(\gen_rd_b.doutb_reg_reg_pipe_87_reg_n_0 ),
        .O(\gen_rd_b.doutb_reg [10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe[0][11]_i_1 
       (.I0(\gen_rd_b.doutb_reg_reg_pipe_86_reg_n_0 ),
        .I1(\gen_rd_b.doutb_reg_reg_pipe_85_reg_n_0 ),
        .I2(select_piped_3_reg_pipe_6_reg_n_0),
        .I3(\gen_rd_b.doutb_reg_reg_pipe_84_reg_n_0 ),
        .I4(select_piped_1_reg_pipe_5_reg_n_0),
        .I5(\gen_rd_b.doutb_reg_reg_pipe_83_reg_n_0 ),
        .O(\gen_rd_b.doutb_reg [11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe[0][12]_i_1 
       (.I0(\gen_rd_b.doutb_reg_reg_pipe_82_reg_n_0 ),
        .I1(\gen_rd_b.doutb_reg_reg_pipe_81_reg_n_0 ),
        .I2(select_piped_3_reg_pipe_6_reg_n_0),
        .I3(\gen_rd_b.doutb_reg_reg_pipe_80_reg_n_0 ),
        .I4(select_piped_1_reg_pipe_5_reg_n_0),
        .I5(\gen_rd_b.doutb_reg_reg_pipe_79_reg_n_0 ),
        .O(\gen_rd_b.doutb_reg [12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe[0][13]_i_1 
       (.I0(\gen_rd_b.doutb_reg_reg_pipe_78_reg_n_0 ),
        .I1(\gen_rd_b.doutb_reg_reg_pipe_77_reg_n_0 ),
        .I2(select_piped_3_reg_pipe_6_reg_n_0),
        .I3(\gen_rd_b.doutb_reg_reg_pipe_76_reg_n_0 ),
        .I4(select_piped_1_reg_pipe_5_reg_n_0),
        .I5(\gen_rd_b.doutb_reg_reg_pipe_75_reg_n_0 ),
        .O(\gen_rd_b.doutb_reg [13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe[0][14]_i_1 
       (.I0(\gen_rd_b.doutb_reg_reg_pipe_74_reg_n_0 ),
        .I1(\gen_rd_b.doutb_reg_reg_pipe_73_reg_n_0 ),
        .I2(select_piped_3_reg_pipe_6_reg_n_0),
        .I3(\gen_rd_b.doutb_reg_reg_pipe_72_reg_n_0 ),
        .I4(select_piped_1_reg_pipe_5_reg_n_0),
        .I5(\gen_rd_b.doutb_reg_reg_pipe_71_reg_n_0 ),
        .O(\gen_rd_b.doutb_reg [14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe[0][15]_i_1 
       (.I0(\gen_rd_b.doutb_reg_reg_pipe_70_reg_n_0 ),
        .I1(\gen_rd_b.doutb_reg_reg_pipe_69_reg_n_0 ),
        .I2(select_piped_3_reg_pipe_6_reg_n_0),
        .I3(\gen_rd_b.doutb_reg_reg_pipe_68_reg_n_0 ),
        .I4(select_piped_1_reg_pipe_5_reg_n_0),
        .I5(\gen_rd_b.doutb_reg_reg_pipe_67_reg_n_0 ),
        .O(\gen_rd_b.doutb_reg [15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe[0][16]_i_1 
       (.I0(\gen_rd_b.doutb_reg_reg_pipe_66_reg_n_0 ),
        .I1(\gen_rd_b.doutb_reg_reg_pipe_65_reg_n_0 ),
        .I2(select_piped_3_reg_pipe_6_reg_n_0),
        .I3(\gen_rd_b.doutb_reg_reg_pipe_64_reg_n_0 ),
        .I4(select_piped_1_reg_pipe_5_reg_n_0),
        .I5(\gen_rd_b.doutb_reg_reg_pipe_63_reg_n_0 ),
        .O(\gen_rd_b.doutb_reg [16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe[0][17]_i_1 
       (.I0(\gen_rd_b.doutb_reg_reg_pipe_62_reg_n_0 ),
        .I1(\gen_rd_b.doutb_reg_reg_pipe_61_reg_n_0 ),
        .I2(select_piped_3_reg_pipe_6_reg_n_0),
        .I3(\gen_rd_b.doutb_reg_reg_pipe_60_reg_n_0 ),
        .I4(select_piped_1_reg_pipe_5_reg_n_0),
        .I5(\gen_rd_b.doutb_reg_reg_pipe_59_reg_n_0 ),
        .O(\gen_rd_b.doutb_reg [17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe[0][18]_i_1 
       (.I0(\gen_rd_b.doutb_reg_reg_pipe_58_reg_n_0 ),
        .I1(\gen_rd_b.doutb_reg_reg_pipe_57_reg_n_0 ),
        .I2(select_piped_3_reg_pipe_6_reg_n_0),
        .I3(\gen_rd_b.doutb_reg_reg_pipe_56_reg_n_0 ),
        .I4(select_piped_1_reg_pipe_5_reg_n_0),
        .I5(\gen_rd_b.doutb_reg_reg_pipe_55_reg_n_0 ),
        .O(\gen_rd_b.doutb_reg [18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe[0][19]_i_1 
       (.I0(\gen_rd_b.doutb_reg_reg_pipe_54_reg_n_0 ),
        .I1(\gen_rd_b.doutb_reg_reg_pipe_53_reg_n_0 ),
        .I2(select_piped_3_reg_pipe_6_reg_n_0),
        .I3(\gen_rd_b.doutb_reg_reg_pipe_52_reg_n_0 ),
        .I4(select_piped_1_reg_pipe_5_reg_n_0),
        .I5(\gen_rd_b.doutb_reg_reg_pipe_51_reg_n_0 ),
        .O(\gen_rd_b.doutb_reg [19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe[0][1]_i_1 
       (.I0(\gen_rd_b.doutb_reg_reg_pipe_126_reg_n_0 ),
        .I1(\gen_rd_b.doutb_reg_reg_pipe_125_reg_n_0 ),
        .I2(select_piped_3_reg_pipe_6_reg_n_0),
        .I3(\gen_rd_b.doutb_reg_reg_pipe_124_reg_n_0 ),
        .I4(select_piped_1_reg_pipe_5_reg_n_0),
        .I5(\gen_rd_b.doutb_reg_reg_pipe_123_reg_n_0 ),
        .O(\gen_rd_b.doutb_reg [1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe[0][20]_i_1 
       (.I0(\gen_rd_b.doutb_reg_reg_pipe_50_reg_n_0 ),
        .I1(\gen_rd_b.doutb_reg_reg_pipe_49_reg_n_0 ),
        .I2(select_piped_3_reg_pipe_6_reg_n_0),
        .I3(\gen_rd_b.doutb_reg_reg_pipe_48_reg_n_0 ),
        .I4(select_piped_1_reg_pipe_5_reg_n_0),
        .I5(\gen_rd_b.doutb_reg_reg_pipe_47_reg_n_0 ),
        .O(\gen_rd_b.doutb_reg [20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe[0][21]_i_1 
       (.I0(\gen_rd_b.doutb_reg_reg_pipe_46_reg_n_0 ),
        .I1(\gen_rd_b.doutb_reg_reg_pipe_45_reg_n_0 ),
        .I2(select_piped_3_reg_pipe_6_reg_n_0),
        .I3(\gen_rd_b.doutb_reg_reg_pipe_44_reg_n_0 ),
        .I4(select_piped_1_reg_pipe_5_reg_n_0),
        .I5(\gen_rd_b.doutb_reg_reg_pipe_43_reg_n_0 ),
        .O(\gen_rd_b.doutb_reg [21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe[0][22]_i_1 
       (.I0(\gen_rd_b.doutb_reg_reg_pipe_42_reg_n_0 ),
        .I1(\gen_rd_b.doutb_reg_reg_pipe_41_reg_n_0 ),
        .I2(select_piped_3_reg_pipe_6_reg_n_0),
        .I3(\gen_rd_b.doutb_reg_reg_pipe_40_reg_n_0 ),
        .I4(select_piped_1_reg_pipe_5_reg_n_0),
        .I5(\gen_rd_b.doutb_reg_reg_pipe_39_reg_n_0 ),
        .O(\gen_rd_b.doutb_reg [22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe[0][23]_i_1 
       (.I0(\gen_rd_b.doutb_reg_reg_pipe_38_reg_n_0 ),
        .I1(\gen_rd_b.doutb_reg_reg_pipe_37_reg_n_0 ),
        .I2(select_piped_3_reg_pipe_6_reg_n_0),
        .I3(\gen_rd_b.doutb_reg_reg_pipe_36_reg_n_0 ),
        .I4(select_piped_1_reg_pipe_5_reg_n_0),
        .I5(\gen_rd_b.doutb_reg_reg_pipe_35_reg_n_0 ),
        .O(\gen_rd_b.doutb_reg [23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe[0][24]_i_1 
       (.I0(\gen_rd_b.doutb_reg_reg_pipe_34_reg_n_0 ),
        .I1(\gen_rd_b.doutb_reg_reg_pipe_33_reg_n_0 ),
        .I2(select_piped_3_reg_pipe_6_reg_n_0),
        .I3(\gen_rd_b.doutb_reg_reg_pipe_32_reg_n_0 ),
        .I4(select_piped_1_reg_pipe_5_reg_n_0),
        .I5(\gen_rd_b.doutb_reg_reg_pipe_31_reg_n_0 ),
        .O(\gen_rd_b.doutb_reg [24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe[0][25]_i_1 
       (.I0(\gen_rd_b.doutb_reg_reg_pipe_30_reg_n_0 ),
        .I1(\gen_rd_b.doutb_reg_reg_pipe_29_reg_n_0 ),
        .I2(select_piped_3_reg_pipe_6_reg_n_0),
        .I3(\gen_rd_b.doutb_reg_reg_pipe_28_reg_n_0 ),
        .I4(select_piped_1_reg_pipe_5_reg_n_0),
        .I5(\gen_rd_b.doutb_reg_reg_pipe_27_reg_n_0 ),
        .O(\gen_rd_b.doutb_reg [25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe[0][26]_i_1 
       (.I0(\gen_rd_b.doutb_reg_reg_pipe_26_reg_n_0 ),
        .I1(\gen_rd_b.doutb_reg_reg_pipe_25_reg_n_0 ),
        .I2(select_piped_3_reg_pipe_6_reg_n_0),
        .I3(\gen_rd_b.doutb_reg_reg_pipe_24_reg_n_0 ),
        .I4(select_piped_1_reg_pipe_5_reg_n_0),
        .I5(\gen_rd_b.doutb_reg_reg_pipe_23_reg_n_0 ),
        .O(\gen_rd_b.doutb_reg [26]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe[0][27]_i_1 
       (.I0(\gen_rd_b.doutb_reg_reg_pipe_22_reg_n_0 ),
        .I1(\gen_rd_b.doutb_reg_reg_pipe_21_reg_n_0 ),
        .I2(select_piped_3_reg_pipe_6_reg_n_0),
        .I3(\gen_rd_b.doutb_reg_reg_pipe_20_reg_n_0 ),
        .I4(select_piped_1_reg_pipe_5_reg_n_0),
        .I5(\gen_rd_b.doutb_reg_reg_pipe_19_reg_n_0 ),
        .O(\gen_rd_b.doutb_reg [27]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe[0][28]_i_1 
       (.I0(\gen_rd_b.doutb_reg_reg_pipe_18_reg_n_0 ),
        .I1(\gen_rd_b.doutb_reg_reg_pipe_17_reg_n_0 ),
        .I2(select_piped_3_reg_pipe_6_reg_n_0),
        .I3(\gen_rd_b.doutb_reg_reg_pipe_16_reg_n_0 ),
        .I4(select_piped_1_reg_pipe_5_reg_n_0),
        .I5(\gen_rd_b.doutb_reg_reg_pipe_15_reg_n_0 ),
        .O(\gen_rd_b.doutb_reg [28]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe[0][29]_i_1 
       (.I0(\gen_rd_b.doutb_reg_reg_pipe_14_reg_n_0 ),
        .I1(\gen_rd_b.doutb_reg_reg_pipe_13_reg_n_0 ),
        .I2(select_piped_3_reg_pipe_6_reg_n_0),
        .I3(\gen_rd_b.doutb_reg_reg_pipe_12_reg_n_0 ),
        .I4(select_piped_1_reg_pipe_5_reg_n_0),
        .I5(\gen_rd_b.doutb_reg_reg_pipe_11_reg_n_0 ),
        .O(\gen_rd_b.doutb_reg [29]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe[0][2]_i_1 
       (.I0(\gen_rd_b.doutb_reg_reg_pipe_122_reg_n_0 ),
        .I1(\gen_rd_b.doutb_reg_reg_pipe_121_reg_n_0 ),
        .I2(select_piped_3_reg_pipe_6_reg_n_0),
        .I3(\gen_rd_b.doutb_reg_reg_pipe_120_reg_n_0 ),
        .I4(select_piped_1_reg_pipe_5_reg_n_0),
        .I5(\gen_rd_b.doutb_reg_reg_pipe_119_reg_n_0 ),
        .O(\gen_rd_b.doutb_reg [2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe[0][30]_i_1 
       (.I0(\gen_rd_b.doutb_reg_reg_pipe_10_reg_n_0 ),
        .I1(\gen_rd_b.doutb_reg_reg_pipe_9_reg_n_0 ),
        .I2(select_piped_3_reg_pipe_6_reg_n_0),
        .I3(\gen_rd_b.doutb_reg_reg_pipe_8_reg_n_0 ),
        .I4(select_piped_1_reg_pipe_5_reg_n_0),
        .I5(\gen_rd_b.doutb_reg_reg_pipe_7_reg_n_0 ),
        .O(\gen_rd_b.doutb_reg [30]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe[0][31]_i_1 
       (.I0(\gen_rd_b.doutb_reg_reg_pipe_4_reg_n_0 ),
        .I1(\gen_rd_b.doutb_reg_reg_pipe_3_reg_n_0 ),
        .I2(select_piped_3_reg_pipe_6_reg_n_0),
        .I3(\gen_rd_b.doutb_reg_reg_pipe_2_reg_n_0 ),
        .I4(select_piped_1_reg_pipe_5_reg_n_0),
        .I5(\gen_rd_b.doutb_reg_reg_pipe_1_reg_n_0 ),
        .O(\gen_rd_b.doutb_reg [31]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe[0][3]_i_1 
       (.I0(\gen_rd_b.doutb_reg_reg_pipe_118_reg_n_0 ),
        .I1(\gen_rd_b.doutb_reg_reg_pipe_117_reg_n_0 ),
        .I2(select_piped_3_reg_pipe_6_reg_n_0),
        .I3(\gen_rd_b.doutb_reg_reg_pipe_116_reg_n_0 ),
        .I4(select_piped_1_reg_pipe_5_reg_n_0),
        .I5(\gen_rd_b.doutb_reg_reg_pipe_115_reg_n_0 ),
        .O(\gen_rd_b.doutb_reg [3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe[0][4]_i_1 
       (.I0(\gen_rd_b.doutb_reg_reg_pipe_114_reg_n_0 ),
        .I1(\gen_rd_b.doutb_reg_reg_pipe_113_reg_n_0 ),
        .I2(select_piped_3_reg_pipe_6_reg_n_0),
        .I3(\gen_rd_b.doutb_reg_reg_pipe_112_reg_n_0 ),
        .I4(select_piped_1_reg_pipe_5_reg_n_0),
        .I5(\gen_rd_b.doutb_reg_reg_pipe_111_reg_n_0 ),
        .O(\gen_rd_b.doutb_reg [4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe[0][5]_i_1 
       (.I0(\gen_rd_b.doutb_reg_reg_pipe_110_reg_n_0 ),
        .I1(\gen_rd_b.doutb_reg_reg_pipe_109_reg_n_0 ),
        .I2(select_piped_3_reg_pipe_6_reg_n_0),
        .I3(\gen_rd_b.doutb_reg_reg_pipe_108_reg_n_0 ),
        .I4(select_piped_1_reg_pipe_5_reg_n_0),
        .I5(\gen_rd_b.doutb_reg_reg_pipe_107_reg_n_0 ),
        .O(\gen_rd_b.doutb_reg [5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe[0][6]_i_1 
       (.I0(\gen_rd_b.doutb_reg_reg_pipe_106_reg_n_0 ),
        .I1(\gen_rd_b.doutb_reg_reg_pipe_105_reg_n_0 ),
        .I2(select_piped_3_reg_pipe_6_reg_n_0),
        .I3(\gen_rd_b.doutb_reg_reg_pipe_104_reg_n_0 ),
        .I4(select_piped_1_reg_pipe_5_reg_n_0),
        .I5(\gen_rd_b.doutb_reg_reg_pipe_103_reg_n_0 ),
        .O(\gen_rd_b.doutb_reg [6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe[0][7]_i_1 
       (.I0(\gen_rd_b.doutb_reg_reg_pipe_102_reg_n_0 ),
        .I1(\gen_rd_b.doutb_reg_reg_pipe_101_reg_n_0 ),
        .I2(select_piped_3_reg_pipe_6_reg_n_0),
        .I3(\gen_rd_b.doutb_reg_reg_pipe_100_reg_n_0 ),
        .I4(select_piped_1_reg_pipe_5_reg_n_0),
        .I5(\gen_rd_b.doutb_reg_reg_pipe_99_reg_n_0 ),
        .O(\gen_rd_b.doutb_reg [7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe[0][8]_i_1 
       (.I0(\gen_rd_b.doutb_reg_reg_pipe_98_reg_n_0 ),
        .I1(\gen_rd_b.doutb_reg_reg_pipe_97_reg_n_0 ),
        .I2(select_piped_3_reg_pipe_6_reg_n_0),
        .I3(\gen_rd_b.doutb_reg_reg_pipe_96_reg_n_0 ),
        .I4(select_piped_1_reg_pipe_5_reg_n_0),
        .I5(\gen_rd_b.doutb_reg_reg_pipe_95_reg_n_0 ),
        .O(\gen_rd_b.doutb_reg [8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe[0][9]_i_1 
       (.I0(\gen_rd_b.doutb_reg_reg_pipe_94_reg_n_0 ),
        .I1(\gen_rd_b.doutb_reg_reg_pipe_93_reg_n_0 ),
        .I2(select_piped_3_reg_pipe_6_reg_n_0),
        .I3(\gen_rd_b.doutb_reg_reg_pipe_92_reg_n_0 ),
        .I4(select_piped_1_reg_pipe_5_reg_n_0),
        .I5(\gen_rd_b.doutb_reg_reg_pipe_91_reg_n_0 ),
        .O(\gen_rd_b.doutb_reg [9]));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][0] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [0]),
        .Q(doutb[0]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][10] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [10]),
        .Q(doutb[10]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][11] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [11]),
        .Q(doutb[11]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][12] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [12]),
        .Q(doutb[12]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][13] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [13]),
        .Q(doutb[13]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][14] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [14]),
        .Q(doutb[14]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][15] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [15]),
        .Q(doutb[15]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][16] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [16]),
        .Q(doutb[16]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][17] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [17]),
        .Q(doutb[17]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][18] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [18]),
        .Q(doutb[18]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][19] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [19]),
        .Q(doutb[19]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][1] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [1]),
        .Q(doutb[1]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][20] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [20]),
        .Q(doutb[20]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][21] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [21]),
        .Q(doutb[21]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][22] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [22]),
        .Q(doutb[22]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][23] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [23]),
        .Q(doutb[23]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][24] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [24]),
        .Q(doutb[24]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][25] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [25]),
        .Q(doutb[25]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][26] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [26]),
        .Q(doutb[26]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][27] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [27]),
        .Q(doutb[27]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][28] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [28]),
        .Q(doutb[28]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][29] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [29]),
        .Q(doutb[29]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][2] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [2]),
        .Q(doutb[2]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][30] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [30]),
        .Q(doutb[30]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][31] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [31]),
        .Q(doutb[31]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][3] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [3]),
        .Q(doutb[3]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][4] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [4]),
        .Q(doutb[4]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][5] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [5]),
        .Q(doutb[5]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][6] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [6]),
        .Q(doutb[6]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][7] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [7]),
        .Q(doutb[7]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][8] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [8]),
        .Q(doutb[8]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][9] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [9]),
        .Q(doutb[9]),
        .R(rstb));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_2 
       (.ADDRA(addrb[5:0]),
        .ADDRB(addrb[5:0]),
        .ADDRC(addrb[5:0]),
        .ADDRD(addra[5:0]),
        .DIA(dina[0]),
        .DIB(dina[1]),
        .DIC(dina[2]),
        .DID(1'b0),
        .DOA(\gen_wr_a.gen_word_narrow.mem_reg_0_63_0_2_n_0 ),
        .DOB(\gen_wr_a.gen_word_narrow.mem_reg_0_63_0_2_n_1 ),
        .DOC(\gen_wr_a.gen_word_narrow.mem_reg_0_63_0_2_n_2 ),
        .DOD(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_0_2_DOD_UNCONNECTED ),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_0_63_0_2_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_63_0_2_i_1 
       (.I0(ena),
        .I1(addra[6]),
        .I2(addra[7]),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_0_63_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "14" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_63_12_14 
       (.ADDRA(addrb[5:0]),
        .ADDRB(addrb[5:0]),
        .ADDRC(addrb[5:0]),
        .ADDRD(addra[5:0]),
        .DIA(dina[12]),
        .DIB(dina[13]),
        .DIC(dina[14]),
        .DID(1'b0),
        .DOA(\gen_wr_a.gen_word_narrow.mem_reg_0_63_12_14_n_0 ),
        .DOB(\gen_wr_a.gen_word_narrow.mem_reg_0_63_12_14_n_1 ),
        .DOC(\gen_wr_a.gen_word_narrow.mem_reg_0_63_12_14_n_2 ),
        .DOD(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_12_14_DOD_UNCONNECTED ),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_0_63_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "17" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_63_15_17 
       (.ADDRA(addrb[5:0]),
        .ADDRB(addrb[5:0]),
        .ADDRC(addrb[5:0]),
        .ADDRD(addra[5:0]),
        .DIA(dina[15]),
        .DIB(dina[16]),
        .DIC(dina[17]),
        .DID(1'b0),
        .DOA(\gen_wr_a.gen_word_narrow.mem_reg_0_63_15_17_n_0 ),
        .DOB(\gen_wr_a.gen_word_narrow.mem_reg_0_63_15_17_n_1 ),
        .DOC(\gen_wr_a.gen_word_narrow.mem_reg_0_63_15_17_n_2 ),
        .DOD(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_15_17_DOD_UNCONNECTED ),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_0_63_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "20" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_63_18_20 
       (.ADDRA(addrb[5:0]),
        .ADDRB(addrb[5:0]),
        .ADDRC(addrb[5:0]),
        .ADDRD(addra[5:0]),
        .DIA(dina[18]),
        .DIB(dina[19]),
        .DIC(dina[20]),
        .DID(1'b0),
        .DOA(\gen_wr_a.gen_word_narrow.mem_reg_0_63_18_20_n_0 ),
        .DOB(\gen_wr_a.gen_word_narrow.mem_reg_0_63_18_20_n_1 ),
        .DOC(\gen_wr_a.gen_word_narrow.mem_reg_0_63_18_20_n_2 ),
        .DOD(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_18_20_DOD_UNCONNECTED ),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_0_63_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "23" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_63_21_23 
       (.ADDRA(addrb[5:0]),
        .ADDRB(addrb[5:0]),
        .ADDRC(addrb[5:0]),
        .ADDRD(addra[5:0]),
        .DIA(dina[21]),
        .DIB(dina[22]),
        .DIC(dina[23]),
        .DID(1'b0),
        .DOA(\gen_wr_a.gen_word_narrow.mem_reg_0_63_21_23_n_0 ),
        .DOB(\gen_wr_a.gen_word_narrow.mem_reg_0_63_21_23_n_1 ),
        .DOC(\gen_wr_a.gen_word_narrow.mem_reg_0_63_21_23_n_2 ),
        .DOD(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_21_23_DOD_UNCONNECTED ),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_0_63_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "26" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_63_24_26 
       (.ADDRA(addrb[5:0]),
        .ADDRB(addrb[5:0]),
        .ADDRC(addrb[5:0]),
        .ADDRD(addra[5:0]),
        .DIA(dina[24]),
        .DIB(dina[25]),
        .DIC(dina[26]),
        .DID(1'b0),
        .DOA(\gen_wr_a.gen_word_narrow.mem_reg_0_63_24_26_n_0 ),
        .DOB(\gen_wr_a.gen_word_narrow.mem_reg_0_63_24_26_n_1 ),
        .DOC(\gen_wr_a.gen_word_narrow.mem_reg_0_63_24_26_n_2 ),
        .DOD(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_24_26_DOD_UNCONNECTED ),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_0_63_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "27" *) 
  (* ram_slice_end = "29" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_63_27_29 
       (.ADDRA(addrb[5:0]),
        .ADDRB(addrb[5:0]),
        .ADDRC(addrb[5:0]),
        .ADDRD(addra[5:0]),
        .DIA(dina[27]),
        .DIB(dina[28]),
        .DIC(dina[29]),
        .DID(1'b0),
        .DOA(\gen_wr_a.gen_word_narrow.mem_reg_0_63_27_29_n_0 ),
        .DOB(\gen_wr_a.gen_word_narrow.mem_reg_0_63_27_29_n_1 ),
        .DOC(\gen_wr_a.gen_word_narrow.mem_reg_0_63_27_29_n_2 ),
        .DOD(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_27_29_DOD_UNCONNECTED ),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_0_63_0_2_i_1_n_0 ));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "30" *) 
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_63_30_30 
       (.A0(addra[0]),
        .A1(addra[1]),
        .A2(addra[2]),
        .A3(addra[3]),
        .A4(addra[4]),
        .A5(addra[5]),
        .D(dina[30]),
        .DPO(\gen_wr_a.gen_word_narrow.mem_reg_0_63_30_30_n_0 ),
        .DPRA0(addrb[0]),
        .DPRA1(addrb[1]),
        .DPRA2(addrb[2]),
        .DPRA3(addrb[3]),
        .DPRA4(addrb[4]),
        .DPRA5(addrb[5]),
        .SPO(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_30_30_SPO_UNCONNECTED ),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_0_63_0_2_i_1_n_0 ));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "31" *) 
  (* ram_slice_end = "31" *) 
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_63_31_31 
       (.A0(addra[0]),
        .A1(addra[1]),
        .A2(addra[2]),
        .A3(addra[3]),
        .A4(addra[4]),
        .A5(addra[5]),
        .D(dina[31]),
        .DPO(\gen_wr_a.gen_word_narrow.mem_reg_0_63_31_31_n_0 ),
        .DPRA0(addrb[0]),
        .DPRA1(addrb[1]),
        .DPRA2(addrb[2]),
        .DPRA3(addrb[3]),
        .DPRA4(addrb[4]),
        .DPRA5(addrb[5]),
        .SPO(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_31_31_SPO_UNCONNECTED ),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_0_63_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_63_3_5 
       (.ADDRA(addrb[5:0]),
        .ADDRB(addrb[5:0]),
        .ADDRC(addrb[5:0]),
        .ADDRD(addra[5:0]),
        .DIA(dina[3]),
        .DIB(dina[4]),
        .DIC(dina[5]),
        .DID(1'b0),
        .DOA(\gen_wr_a.gen_word_narrow.mem_reg_0_63_3_5_n_0 ),
        .DOB(\gen_wr_a.gen_word_narrow.mem_reg_0_63_3_5_n_1 ),
        .DOC(\gen_wr_a.gen_word_narrow.mem_reg_0_63_3_5_n_2 ),
        .DOD(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_3_5_DOD_UNCONNECTED ),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_0_63_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_63_6_8 
       (.ADDRA(addrb[5:0]),
        .ADDRB(addrb[5:0]),
        .ADDRC(addrb[5:0]),
        .ADDRD(addra[5:0]),
        .DIA(dina[6]),
        .DIB(dina[7]),
        .DIC(dina[8]),
        .DID(1'b0),
        .DOA(\gen_wr_a.gen_word_narrow.mem_reg_0_63_6_8_n_0 ),
        .DOB(\gen_wr_a.gen_word_narrow.mem_reg_0_63_6_8_n_1 ),
        .DOC(\gen_wr_a.gen_word_narrow.mem_reg_0_63_6_8_n_2 ),
        .DOD(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_6_8_DOD_UNCONNECTED ),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_0_63_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_63_9_11 
       (.ADDRA(addrb[5:0]),
        .ADDRB(addrb[5:0]),
        .ADDRC(addrb[5:0]),
        .ADDRD(addra[5:0]),
        .DIA(dina[9]),
        .DIB(dina[10]),
        .DIC(dina[11]),
        .DID(1'b0),
        .DOA(\gen_wr_a.gen_word_narrow.mem_reg_0_63_9_11_n_0 ),
        .DOB(\gen_wr_a.gen_word_narrow.mem_reg_0_63_9_11_n_1 ),
        .DOC(\gen_wr_a.gen_word_narrow.mem_reg_0_63_9_11_n_2 ),
        .DOD(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_9_11_DOD_UNCONNECTED ),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_0_63_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_128_191_0_2 
       (.ADDRA(addrb[5:0]),
        .ADDRB(addrb[5:0]),
        .ADDRC(addrb[5:0]),
        .ADDRD(addra[5:0]),
        .DIA(dina[0]),
        .DIB(dina[1]),
        .DIC(dina[2]),
        .DID(1'b0),
        .DOA(\gen_wr_a.gen_word_narrow.mem_reg_128_191_0_2_n_0 ),
        .DOB(\gen_wr_a.gen_word_narrow.mem_reg_128_191_0_2_n_1 ),
        .DOC(\gen_wr_a.gen_word_narrow.mem_reg_128_191_0_2_n_2 ),
        .DOD(\NLW_gen_wr_a.gen_word_narrow.mem_reg_128_191_0_2_DOD_UNCONNECTED ),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_128_191_0_2_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \gen_wr_a.gen_word_narrow.mem_reg_128_191_0_2_i_1 
       (.I0(addra[6]),
        .I1(addra[7]),
        .I2(ena),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_128_191_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "14" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_128_191_12_14 
       (.ADDRA(addrb[5:0]),
        .ADDRB(addrb[5:0]),
        .ADDRC(addrb[5:0]),
        .ADDRD(addra[5:0]),
        .DIA(dina[12]),
        .DIB(dina[13]),
        .DIC(dina[14]),
        .DID(1'b0),
        .DOA(\gen_wr_a.gen_word_narrow.mem_reg_128_191_12_14_n_0 ),
        .DOB(\gen_wr_a.gen_word_narrow.mem_reg_128_191_12_14_n_1 ),
        .DOC(\gen_wr_a.gen_word_narrow.mem_reg_128_191_12_14_n_2 ),
        .DOD(\NLW_gen_wr_a.gen_word_narrow.mem_reg_128_191_12_14_DOD_UNCONNECTED ),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_128_191_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "17" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_128_191_15_17 
       (.ADDRA(addrb[5:0]),
        .ADDRB(addrb[5:0]),
        .ADDRC(addrb[5:0]),
        .ADDRD(addra[5:0]),
        .DIA(dina[15]),
        .DIB(dina[16]),
        .DIC(dina[17]),
        .DID(1'b0),
        .DOA(\gen_wr_a.gen_word_narrow.mem_reg_128_191_15_17_n_0 ),
        .DOB(\gen_wr_a.gen_word_narrow.mem_reg_128_191_15_17_n_1 ),
        .DOC(\gen_wr_a.gen_word_narrow.mem_reg_128_191_15_17_n_2 ),
        .DOD(\NLW_gen_wr_a.gen_word_narrow.mem_reg_128_191_15_17_DOD_UNCONNECTED ),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_128_191_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "20" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_128_191_18_20 
       (.ADDRA(addrb[5:0]),
        .ADDRB(addrb[5:0]),
        .ADDRC(addrb[5:0]),
        .ADDRD(addra[5:0]),
        .DIA(dina[18]),
        .DIB(dina[19]),
        .DIC(dina[20]),
        .DID(1'b0),
        .DOA(\gen_wr_a.gen_word_narrow.mem_reg_128_191_18_20_n_0 ),
        .DOB(\gen_wr_a.gen_word_narrow.mem_reg_128_191_18_20_n_1 ),
        .DOC(\gen_wr_a.gen_word_narrow.mem_reg_128_191_18_20_n_2 ),
        .DOD(\NLW_gen_wr_a.gen_word_narrow.mem_reg_128_191_18_20_DOD_UNCONNECTED ),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_128_191_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "23" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_128_191_21_23 
       (.ADDRA(addrb[5:0]),
        .ADDRB(addrb[5:0]),
        .ADDRC(addrb[5:0]),
        .ADDRD(addra[5:0]),
        .DIA(dina[21]),
        .DIB(dina[22]),
        .DIC(dina[23]),
        .DID(1'b0),
        .DOA(\gen_wr_a.gen_word_narrow.mem_reg_128_191_21_23_n_0 ),
        .DOB(\gen_wr_a.gen_word_narrow.mem_reg_128_191_21_23_n_1 ),
        .DOC(\gen_wr_a.gen_word_narrow.mem_reg_128_191_21_23_n_2 ),
        .DOD(\NLW_gen_wr_a.gen_word_narrow.mem_reg_128_191_21_23_DOD_UNCONNECTED ),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_128_191_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "26" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_128_191_24_26 
       (.ADDRA(addrb[5:0]),
        .ADDRB(addrb[5:0]),
        .ADDRC(addrb[5:0]),
        .ADDRD(addra[5:0]),
        .DIA(dina[24]),
        .DIB(dina[25]),
        .DIC(dina[26]),
        .DID(1'b0),
        .DOA(\gen_wr_a.gen_word_narrow.mem_reg_128_191_24_26_n_0 ),
        .DOB(\gen_wr_a.gen_word_narrow.mem_reg_128_191_24_26_n_1 ),
        .DOC(\gen_wr_a.gen_word_narrow.mem_reg_128_191_24_26_n_2 ),
        .DOD(\NLW_gen_wr_a.gen_word_narrow.mem_reg_128_191_24_26_DOD_UNCONNECTED ),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_128_191_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "27" *) 
  (* ram_slice_end = "29" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_128_191_27_29 
       (.ADDRA(addrb[5:0]),
        .ADDRB(addrb[5:0]),
        .ADDRC(addrb[5:0]),
        .ADDRD(addra[5:0]),
        .DIA(dina[27]),
        .DIB(dina[28]),
        .DIC(dina[29]),
        .DID(1'b0),
        .DOA(\gen_wr_a.gen_word_narrow.mem_reg_128_191_27_29_n_0 ),
        .DOB(\gen_wr_a.gen_word_narrow.mem_reg_128_191_27_29_n_1 ),
        .DOC(\gen_wr_a.gen_word_narrow.mem_reg_128_191_27_29_n_2 ),
        .DOD(\NLW_gen_wr_a.gen_word_narrow.mem_reg_128_191_27_29_DOD_UNCONNECTED ),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_128_191_0_2_i_1_n_0 ));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "30" *) 
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_128_191_30_30 
       (.A0(addra[0]),
        .A1(addra[1]),
        .A2(addra[2]),
        .A3(addra[3]),
        .A4(addra[4]),
        .A5(addra[5]),
        .D(dina[30]),
        .DPO(\gen_wr_a.gen_word_narrow.mem_reg_128_191_30_30_n_0 ),
        .DPRA0(addrb[0]),
        .DPRA1(addrb[1]),
        .DPRA2(addrb[2]),
        .DPRA3(addrb[3]),
        .DPRA4(addrb[4]),
        .DPRA5(addrb[5]),
        .SPO(\NLW_gen_wr_a.gen_word_narrow.mem_reg_128_191_30_30_SPO_UNCONNECTED ),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_128_191_0_2_i_1_n_0 ));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "31" *) 
  (* ram_slice_end = "31" *) 
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_128_191_31_31 
       (.A0(addra[0]),
        .A1(addra[1]),
        .A2(addra[2]),
        .A3(addra[3]),
        .A4(addra[4]),
        .A5(addra[5]),
        .D(dina[31]),
        .DPO(\gen_wr_a.gen_word_narrow.mem_reg_128_191_31_31_n_0 ),
        .DPRA0(addrb[0]),
        .DPRA1(addrb[1]),
        .DPRA2(addrb[2]),
        .DPRA3(addrb[3]),
        .DPRA4(addrb[4]),
        .DPRA5(addrb[5]),
        .SPO(\NLW_gen_wr_a.gen_word_narrow.mem_reg_128_191_31_31_SPO_UNCONNECTED ),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_128_191_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_128_191_3_5 
       (.ADDRA(addrb[5:0]),
        .ADDRB(addrb[5:0]),
        .ADDRC(addrb[5:0]),
        .ADDRD(addra[5:0]),
        .DIA(dina[3]),
        .DIB(dina[4]),
        .DIC(dina[5]),
        .DID(1'b0),
        .DOA(\gen_wr_a.gen_word_narrow.mem_reg_128_191_3_5_n_0 ),
        .DOB(\gen_wr_a.gen_word_narrow.mem_reg_128_191_3_5_n_1 ),
        .DOC(\gen_wr_a.gen_word_narrow.mem_reg_128_191_3_5_n_2 ),
        .DOD(\NLW_gen_wr_a.gen_word_narrow.mem_reg_128_191_3_5_DOD_UNCONNECTED ),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_128_191_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_128_191_6_8 
       (.ADDRA(addrb[5:0]),
        .ADDRB(addrb[5:0]),
        .ADDRC(addrb[5:0]),
        .ADDRD(addra[5:0]),
        .DIA(dina[6]),
        .DIB(dina[7]),
        .DIC(dina[8]),
        .DID(1'b0),
        .DOA(\gen_wr_a.gen_word_narrow.mem_reg_128_191_6_8_n_0 ),
        .DOB(\gen_wr_a.gen_word_narrow.mem_reg_128_191_6_8_n_1 ),
        .DOC(\gen_wr_a.gen_word_narrow.mem_reg_128_191_6_8_n_2 ),
        .DOD(\NLW_gen_wr_a.gen_word_narrow.mem_reg_128_191_6_8_DOD_UNCONNECTED ),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_128_191_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_128_191_9_11 
       (.ADDRA(addrb[5:0]),
        .ADDRB(addrb[5:0]),
        .ADDRC(addrb[5:0]),
        .ADDRD(addra[5:0]),
        .DIA(dina[9]),
        .DIB(dina[10]),
        .DIC(dina[11]),
        .DID(1'b0),
        .DOA(\gen_wr_a.gen_word_narrow.mem_reg_128_191_9_11_n_0 ),
        .DOB(\gen_wr_a.gen_word_narrow.mem_reg_128_191_9_11_n_1 ),
        .DOC(\gen_wr_a.gen_word_narrow.mem_reg_128_191_9_11_n_2 ),
        .DOD(\NLW_gen_wr_a.gen_word_narrow.mem_reg_128_191_9_11_DOD_UNCONNECTED ),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_128_191_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_192_255_0_2 
       (.ADDRA(addrb[5:0]),
        .ADDRB(addrb[5:0]),
        .ADDRC(addrb[5:0]),
        .ADDRD(addra[5:0]),
        .DIA(dina[0]),
        .DIB(dina[1]),
        .DIC(dina[2]),
        .DID(1'b0),
        .DOA(\gen_wr_a.gen_word_narrow.mem_reg_192_255_0_2_n_0 ),
        .DOB(\gen_wr_a.gen_word_narrow.mem_reg_192_255_0_2_n_1 ),
        .DOC(\gen_wr_a.gen_word_narrow.mem_reg_192_255_0_2_n_2 ),
        .DOD(\NLW_gen_wr_a.gen_word_narrow.mem_reg_192_255_0_2_DOD_UNCONNECTED ),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_192_255_0_2_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \gen_wr_a.gen_word_narrow.mem_reg_192_255_0_2_i_1 
       (.I0(ena),
        .I1(addra[6]),
        .I2(addra[7]),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_192_255_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "14" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_192_255_12_14 
       (.ADDRA(addrb[5:0]),
        .ADDRB(addrb[5:0]),
        .ADDRC(addrb[5:0]),
        .ADDRD(addra[5:0]),
        .DIA(dina[12]),
        .DIB(dina[13]),
        .DIC(dina[14]),
        .DID(1'b0),
        .DOA(\gen_wr_a.gen_word_narrow.mem_reg_192_255_12_14_n_0 ),
        .DOB(\gen_wr_a.gen_word_narrow.mem_reg_192_255_12_14_n_1 ),
        .DOC(\gen_wr_a.gen_word_narrow.mem_reg_192_255_12_14_n_2 ),
        .DOD(\NLW_gen_wr_a.gen_word_narrow.mem_reg_192_255_12_14_DOD_UNCONNECTED ),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_192_255_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "17" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_192_255_15_17 
       (.ADDRA(addrb[5:0]),
        .ADDRB(addrb[5:0]),
        .ADDRC(addrb[5:0]),
        .ADDRD(addra[5:0]),
        .DIA(dina[15]),
        .DIB(dina[16]),
        .DIC(dina[17]),
        .DID(1'b0),
        .DOA(\gen_wr_a.gen_word_narrow.mem_reg_192_255_15_17_n_0 ),
        .DOB(\gen_wr_a.gen_word_narrow.mem_reg_192_255_15_17_n_1 ),
        .DOC(\gen_wr_a.gen_word_narrow.mem_reg_192_255_15_17_n_2 ),
        .DOD(\NLW_gen_wr_a.gen_word_narrow.mem_reg_192_255_15_17_DOD_UNCONNECTED ),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_192_255_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "20" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_192_255_18_20 
       (.ADDRA(addrb[5:0]),
        .ADDRB(addrb[5:0]),
        .ADDRC(addrb[5:0]),
        .ADDRD(addra[5:0]),
        .DIA(dina[18]),
        .DIB(dina[19]),
        .DIC(dina[20]),
        .DID(1'b0),
        .DOA(\gen_wr_a.gen_word_narrow.mem_reg_192_255_18_20_n_0 ),
        .DOB(\gen_wr_a.gen_word_narrow.mem_reg_192_255_18_20_n_1 ),
        .DOC(\gen_wr_a.gen_word_narrow.mem_reg_192_255_18_20_n_2 ),
        .DOD(\NLW_gen_wr_a.gen_word_narrow.mem_reg_192_255_18_20_DOD_UNCONNECTED ),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_192_255_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "23" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_192_255_21_23 
       (.ADDRA(addrb[5:0]),
        .ADDRB(addrb[5:0]),
        .ADDRC(addrb[5:0]),
        .ADDRD(addra[5:0]),
        .DIA(dina[21]),
        .DIB(dina[22]),
        .DIC(dina[23]),
        .DID(1'b0),
        .DOA(\gen_wr_a.gen_word_narrow.mem_reg_192_255_21_23_n_0 ),
        .DOB(\gen_wr_a.gen_word_narrow.mem_reg_192_255_21_23_n_1 ),
        .DOC(\gen_wr_a.gen_word_narrow.mem_reg_192_255_21_23_n_2 ),
        .DOD(\NLW_gen_wr_a.gen_word_narrow.mem_reg_192_255_21_23_DOD_UNCONNECTED ),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_192_255_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "26" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_192_255_24_26 
       (.ADDRA(addrb[5:0]),
        .ADDRB(addrb[5:0]),
        .ADDRC(addrb[5:0]),
        .ADDRD(addra[5:0]),
        .DIA(dina[24]),
        .DIB(dina[25]),
        .DIC(dina[26]),
        .DID(1'b0),
        .DOA(\gen_wr_a.gen_word_narrow.mem_reg_192_255_24_26_n_0 ),
        .DOB(\gen_wr_a.gen_word_narrow.mem_reg_192_255_24_26_n_1 ),
        .DOC(\gen_wr_a.gen_word_narrow.mem_reg_192_255_24_26_n_2 ),
        .DOD(\NLW_gen_wr_a.gen_word_narrow.mem_reg_192_255_24_26_DOD_UNCONNECTED ),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_192_255_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "27" *) 
  (* ram_slice_end = "29" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_192_255_27_29 
       (.ADDRA(addrb[5:0]),
        .ADDRB(addrb[5:0]),
        .ADDRC(addrb[5:0]),
        .ADDRD(addra[5:0]),
        .DIA(dina[27]),
        .DIB(dina[28]),
        .DIC(dina[29]),
        .DID(1'b0),
        .DOA(\gen_wr_a.gen_word_narrow.mem_reg_192_255_27_29_n_0 ),
        .DOB(\gen_wr_a.gen_word_narrow.mem_reg_192_255_27_29_n_1 ),
        .DOC(\gen_wr_a.gen_word_narrow.mem_reg_192_255_27_29_n_2 ),
        .DOD(\NLW_gen_wr_a.gen_word_narrow.mem_reg_192_255_27_29_DOD_UNCONNECTED ),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_192_255_0_2_i_1_n_0 ));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "30" *) 
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_192_255_30_30 
       (.A0(addra[0]),
        .A1(addra[1]),
        .A2(addra[2]),
        .A3(addra[3]),
        .A4(addra[4]),
        .A5(addra[5]),
        .D(dina[30]),
        .DPO(\gen_wr_a.gen_word_narrow.mem_reg_192_255_30_30_n_0 ),
        .DPRA0(addrb[0]),
        .DPRA1(addrb[1]),
        .DPRA2(addrb[2]),
        .DPRA3(addrb[3]),
        .DPRA4(addrb[4]),
        .DPRA5(addrb[5]),
        .SPO(\NLW_gen_wr_a.gen_word_narrow.mem_reg_192_255_30_30_SPO_UNCONNECTED ),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_192_255_0_2_i_1_n_0 ));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "31" *) 
  (* ram_slice_end = "31" *) 
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_192_255_31_31 
       (.A0(addra[0]),
        .A1(addra[1]),
        .A2(addra[2]),
        .A3(addra[3]),
        .A4(addra[4]),
        .A5(addra[5]),
        .D(dina[31]),
        .DPO(\gen_wr_a.gen_word_narrow.mem_reg_192_255_31_31_n_0 ),
        .DPRA0(addrb[0]),
        .DPRA1(addrb[1]),
        .DPRA2(addrb[2]),
        .DPRA3(addrb[3]),
        .DPRA4(addrb[4]),
        .DPRA5(addrb[5]),
        .SPO(\NLW_gen_wr_a.gen_word_narrow.mem_reg_192_255_31_31_SPO_UNCONNECTED ),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_192_255_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_192_255_3_5 
       (.ADDRA(addrb[5:0]),
        .ADDRB(addrb[5:0]),
        .ADDRC(addrb[5:0]),
        .ADDRD(addra[5:0]),
        .DIA(dina[3]),
        .DIB(dina[4]),
        .DIC(dina[5]),
        .DID(1'b0),
        .DOA(\gen_wr_a.gen_word_narrow.mem_reg_192_255_3_5_n_0 ),
        .DOB(\gen_wr_a.gen_word_narrow.mem_reg_192_255_3_5_n_1 ),
        .DOC(\gen_wr_a.gen_word_narrow.mem_reg_192_255_3_5_n_2 ),
        .DOD(\NLW_gen_wr_a.gen_word_narrow.mem_reg_192_255_3_5_DOD_UNCONNECTED ),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_192_255_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_192_255_6_8 
       (.ADDRA(addrb[5:0]),
        .ADDRB(addrb[5:0]),
        .ADDRC(addrb[5:0]),
        .ADDRD(addra[5:0]),
        .DIA(dina[6]),
        .DIB(dina[7]),
        .DIC(dina[8]),
        .DID(1'b0),
        .DOA(\gen_wr_a.gen_word_narrow.mem_reg_192_255_6_8_n_0 ),
        .DOB(\gen_wr_a.gen_word_narrow.mem_reg_192_255_6_8_n_1 ),
        .DOC(\gen_wr_a.gen_word_narrow.mem_reg_192_255_6_8_n_2 ),
        .DOD(\NLW_gen_wr_a.gen_word_narrow.mem_reg_192_255_6_8_DOD_UNCONNECTED ),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_192_255_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_192_255_9_11 
       (.ADDRA(addrb[5:0]),
        .ADDRB(addrb[5:0]),
        .ADDRC(addrb[5:0]),
        .ADDRD(addra[5:0]),
        .DIA(dina[9]),
        .DIB(dina[10]),
        .DIC(dina[11]),
        .DID(1'b0),
        .DOA(\gen_wr_a.gen_word_narrow.mem_reg_192_255_9_11_n_0 ),
        .DOB(\gen_wr_a.gen_word_narrow.mem_reg_192_255_9_11_n_1 ),
        .DOC(\gen_wr_a.gen_word_narrow.mem_reg_192_255_9_11_n_2 ),
        .DOD(\NLW_gen_wr_a.gen_word_narrow.mem_reg_192_255_9_11_DOD_UNCONNECTED ),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_192_255_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_2 
       (.ADDRA(addrb[5:0]),
        .ADDRB(addrb[5:0]),
        .ADDRC(addrb[5:0]),
        .ADDRD(addra[5:0]),
        .DIA(dina[0]),
        .DIB(dina[1]),
        .DIC(dina[2]),
        .DID(1'b0),
        .DOA(\gen_wr_a.gen_word_narrow.mem_reg_64_127_0_2_n_0 ),
        .DOB(\gen_wr_a.gen_word_narrow.mem_reg_64_127_0_2_n_1 ),
        .DOC(\gen_wr_a.gen_word_narrow.mem_reg_64_127_0_2_n_2 ),
        .DOD(\NLW_gen_wr_a.gen_word_narrow.mem_reg_64_127_0_2_DOD_UNCONNECTED ),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_64_127_0_2_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \gen_wr_a.gen_word_narrow.mem_reg_64_127_0_2_i_1 
       (.I0(addra[7]),
        .I1(addra[6]),
        .I2(ena),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_64_127_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "14" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_64_127_12_14 
       (.ADDRA(addrb[5:0]),
        .ADDRB(addrb[5:0]),
        .ADDRC(addrb[5:0]),
        .ADDRD(addra[5:0]),
        .DIA(dina[12]),
        .DIB(dina[13]),
        .DIC(dina[14]),
        .DID(1'b0),
        .DOA(\gen_wr_a.gen_word_narrow.mem_reg_64_127_12_14_n_0 ),
        .DOB(\gen_wr_a.gen_word_narrow.mem_reg_64_127_12_14_n_1 ),
        .DOC(\gen_wr_a.gen_word_narrow.mem_reg_64_127_12_14_n_2 ),
        .DOD(\NLW_gen_wr_a.gen_word_narrow.mem_reg_64_127_12_14_DOD_UNCONNECTED ),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_64_127_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "17" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_64_127_15_17 
       (.ADDRA(addrb[5:0]),
        .ADDRB(addrb[5:0]),
        .ADDRC(addrb[5:0]),
        .ADDRD(addra[5:0]),
        .DIA(dina[15]),
        .DIB(dina[16]),
        .DIC(dina[17]),
        .DID(1'b0),
        .DOA(\gen_wr_a.gen_word_narrow.mem_reg_64_127_15_17_n_0 ),
        .DOB(\gen_wr_a.gen_word_narrow.mem_reg_64_127_15_17_n_1 ),
        .DOC(\gen_wr_a.gen_word_narrow.mem_reg_64_127_15_17_n_2 ),
        .DOD(\NLW_gen_wr_a.gen_word_narrow.mem_reg_64_127_15_17_DOD_UNCONNECTED ),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_64_127_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "20" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_64_127_18_20 
       (.ADDRA(addrb[5:0]),
        .ADDRB(addrb[5:0]),
        .ADDRC(addrb[5:0]),
        .ADDRD(addra[5:0]),
        .DIA(dina[18]),
        .DIB(dina[19]),
        .DIC(dina[20]),
        .DID(1'b0),
        .DOA(\gen_wr_a.gen_word_narrow.mem_reg_64_127_18_20_n_0 ),
        .DOB(\gen_wr_a.gen_word_narrow.mem_reg_64_127_18_20_n_1 ),
        .DOC(\gen_wr_a.gen_word_narrow.mem_reg_64_127_18_20_n_2 ),
        .DOD(\NLW_gen_wr_a.gen_word_narrow.mem_reg_64_127_18_20_DOD_UNCONNECTED ),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_64_127_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "23" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_64_127_21_23 
       (.ADDRA(addrb[5:0]),
        .ADDRB(addrb[5:0]),
        .ADDRC(addrb[5:0]),
        .ADDRD(addra[5:0]),
        .DIA(dina[21]),
        .DIB(dina[22]),
        .DIC(dina[23]),
        .DID(1'b0),
        .DOA(\gen_wr_a.gen_word_narrow.mem_reg_64_127_21_23_n_0 ),
        .DOB(\gen_wr_a.gen_word_narrow.mem_reg_64_127_21_23_n_1 ),
        .DOC(\gen_wr_a.gen_word_narrow.mem_reg_64_127_21_23_n_2 ),
        .DOD(\NLW_gen_wr_a.gen_word_narrow.mem_reg_64_127_21_23_DOD_UNCONNECTED ),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_64_127_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "26" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_64_127_24_26 
       (.ADDRA(addrb[5:0]),
        .ADDRB(addrb[5:0]),
        .ADDRC(addrb[5:0]),
        .ADDRD(addra[5:0]),
        .DIA(dina[24]),
        .DIB(dina[25]),
        .DIC(dina[26]),
        .DID(1'b0),
        .DOA(\gen_wr_a.gen_word_narrow.mem_reg_64_127_24_26_n_0 ),
        .DOB(\gen_wr_a.gen_word_narrow.mem_reg_64_127_24_26_n_1 ),
        .DOC(\gen_wr_a.gen_word_narrow.mem_reg_64_127_24_26_n_2 ),
        .DOD(\NLW_gen_wr_a.gen_word_narrow.mem_reg_64_127_24_26_DOD_UNCONNECTED ),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_64_127_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "27" *) 
  (* ram_slice_end = "29" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_64_127_27_29 
       (.ADDRA(addrb[5:0]),
        .ADDRB(addrb[5:0]),
        .ADDRC(addrb[5:0]),
        .ADDRD(addra[5:0]),
        .DIA(dina[27]),
        .DIB(dina[28]),
        .DIC(dina[29]),
        .DID(1'b0),
        .DOA(\gen_wr_a.gen_word_narrow.mem_reg_64_127_27_29_n_0 ),
        .DOB(\gen_wr_a.gen_word_narrow.mem_reg_64_127_27_29_n_1 ),
        .DOC(\gen_wr_a.gen_word_narrow.mem_reg_64_127_27_29_n_2 ),
        .DOD(\NLW_gen_wr_a.gen_word_narrow.mem_reg_64_127_27_29_DOD_UNCONNECTED ),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_64_127_0_2_i_1_n_0 ));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "30" *) 
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_64_127_30_30 
       (.A0(addra[0]),
        .A1(addra[1]),
        .A2(addra[2]),
        .A3(addra[3]),
        .A4(addra[4]),
        .A5(addra[5]),
        .D(dina[30]),
        .DPO(\gen_wr_a.gen_word_narrow.mem_reg_64_127_30_30_n_0 ),
        .DPRA0(addrb[0]),
        .DPRA1(addrb[1]),
        .DPRA2(addrb[2]),
        .DPRA3(addrb[3]),
        .DPRA4(addrb[4]),
        .DPRA5(addrb[5]),
        .SPO(\NLW_gen_wr_a.gen_word_narrow.mem_reg_64_127_30_30_SPO_UNCONNECTED ),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_64_127_0_2_i_1_n_0 ));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "31" *) 
  (* ram_slice_end = "31" *) 
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_64_127_31_31 
       (.A0(addra[0]),
        .A1(addra[1]),
        .A2(addra[2]),
        .A3(addra[3]),
        .A4(addra[4]),
        .A5(addra[5]),
        .D(dina[31]),
        .DPO(\gen_wr_a.gen_word_narrow.mem_reg_64_127_31_31_n_0 ),
        .DPRA0(addrb[0]),
        .DPRA1(addrb[1]),
        .DPRA2(addrb[2]),
        .DPRA3(addrb[3]),
        .DPRA4(addrb[4]),
        .DPRA5(addrb[5]),
        .SPO(\NLW_gen_wr_a.gen_word_narrow.mem_reg_64_127_31_31_SPO_UNCONNECTED ),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_64_127_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_64_127_3_5 
       (.ADDRA(addrb[5:0]),
        .ADDRB(addrb[5:0]),
        .ADDRC(addrb[5:0]),
        .ADDRD(addra[5:0]),
        .DIA(dina[3]),
        .DIB(dina[4]),
        .DIC(dina[5]),
        .DID(1'b0),
        .DOA(\gen_wr_a.gen_word_narrow.mem_reg_64_127_3_5_n_0 ),
        .DOB(\gen_wr_a.gen_word_narrow.mem_reg_64_127_3_5_n_1 ),
        .DOC(\gen_wr_a.gen_word_narrow.mem_reg_64_127_3_5_n_2 ),
        .DOD(\NLW_gen_wr_a.gen_word_narrow.mem_reg_64_127_3_5_DOD_UNCONNECTED ),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_64_127_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_64_127_6_8 
       (.ADDRA(addrb[5:0]),
        .ADDRB(addrb[5:0]),
        .ADDRC(addrb[5:0]),
        .ADDRD(addra[5:0]),
        .DIA(dina[6]),
        .DIB(dina[7]),
        .DIC(dina[8]),
        .DID(1'b0),
        .DOA(\gen_wr_a.gen_word_narrow.mem_reg_64_127_6_8_n_0 ),
        .DOB(\gen_wr_a.gen_word_narrow.mem_reg_64_127_6_8_n_1 ),
        .DOC(\gen_wr_a.gen_word_narrow.mem_reg_64_127_6_8_n_2 ),
        .DOD(\NLW_gen_wr_a.gen_word_narrow.mem_reg_64_127_6_8_DOD_UNCONNECTED ),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_64_127_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_64_127_9_11 
       (.ADDRA(addrb[5:0]),
        .ADDRB(addrb[5:0]),
        .ADDRC(addrb[5:0]),
        .ADDRD(addra[5:0]),
        .DIA(dina[9]),
        .DIB(dina[10]),
        .DIC(dina[11]),
        .DID(1'b0),
        .DOA(\gen_wr_a.gen_word_narrow.mem_reg_64_127_9_11_n_0 ),
        .DOB(\gen_wr_a.gen_word_narrow.mem_reg_64_127_9_11_n_1 ),
        .DOC(\gen_wr_a.gen_word_narrow.mem_reg_64_127_9_11_n_2 ),
        .DOD(\NLW_gen_wr_a.gen_word_narrow.mem_reg_64_127_9_11_DOD_UNCONNECTED ),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_64_127_0_2_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    select_piped_1_reg_pipe_5_reg
       (.C(clka),
        .CE(enb),
        .D(addrb[6]),
        .Q(select_piped_1_reg_pipe_5_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    select_piped_3_reg_pipe_6_reg
       (.C(clka),
        .CE(enb),
        .D(addrb[7]),
        .Q(select_piped_3_reg_pipe_6_reg_n_0),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
