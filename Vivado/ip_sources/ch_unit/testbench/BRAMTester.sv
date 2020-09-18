`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: RHIT
// Engineer: Brendan Mulholland
// 
// Create Date: 09/07/2020 11:33:41 AM
// Design Name: 
// Module Name: BRAMTester
// Project Name: Caerus
// Target Devices: 
// Tool Versions: 
// Description: Test bench for the BRAM unit. Don't know why this is broken
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////



parameter CLKPERIOD = 5;
parameter DELAYTIME = 5 * CLKPERIOD;




module BRAMTester(

    );
    
    reg AXI_CLK = 0;
    reg S_CLK = 0;
    reg RESET = 1;
    reg [19:0] START_ADDR = 0;
    reg LOOP = 0;
    reg WRAM = 0;
    reg DATA_A = 0;
    wire OUT;
    wire [19:0] ADDR;
    reg MODE = 0;
    reg W_ADDR = 0;
    wire DONE;
    reg [19:0] STOP = 0;
    reg W_STOP = 0;
    reg P_EN = 0;
    reg B_EN = 0;
    reg W_B = 0;
    reg [14:0] ADDR_B;
    reg [31:0] DATA_B;
    wire [31:0] OUT_B;
    
   
    
    
    ch_unit #(.N_ADDR_BITS(20),.DATA_WIDTH(1),.MEM_DEPTH(1048576))
    UUT (
        .s_axi_clk(AXI_CLK), 
        .s_axi_reset(RESET),
        .playback_clk(S_CLK),
        .i_gpio_set_ram_addr(START_ADDR),
        .i_gpio_loop_playback(LOOP),
        .i_gpio_write_ram(WRAM),
        .i_gpio_din(DATA_A),
        .ch_out(OUT),
        .o_gpio_addr_readback(ADDR),
        .i_gpio_mode(MODE),
        .i_gpio_write_addr(W_ADDR),
        .o_gpio_playback_done(DONE),
        .i_gpio_write_stop_addr(W_STOP),
        .i_gpio_stop_addr(STOP),
        .i_gpio_playback_en(P_EN),
        .clkb(AXI_CLK),    // input wire clkb
        .enb(B_EN),      // input wire enb
        .web(W_B),      // input wire [0 : 0] web
        .addrb(ADDR_B),  // input wire [14 : 0] addrb
        .dinb(DATA_B),    // input wire [0 : 0] dinb
        .doutb(OUT_B)  // output wire [0 : 0] doutb
    );
    
    //GENERATORS
    always 
        #CLKPERIOD AXI_CLK = !AXI_CLK;

    
    always
        #DELAYTIME S_CLK = !S_CLK;

    
    
    
    
    //Calling this will write the given data to the BRAM
    task writeBRAM(logic [31:0] addr, logic [31:0] data);
    //ENABLE BRAM
        B_EN <= 1;
        #CLKPERIOD
        W_B <= 1;
        DATA_B <= data;
        ADDR_B <= addr;
        #DELAYTIME
        W_B <= 0;
        DATA_B <= 0;
        ADDR_B <= 0;
        B_EN <= 0;
    endtask
    
    //Calling this will place the given data in the OUT_B register
    task readBRAM(logic [31:0] addr);
    //ENABLE BRAM
        B_EN <= 1;
        #CLKPERIOD
        W_B <= 0;
        DATA_B <= 0;
        ADDR_B <= addr;
        #DELAYTIME
        W_B <= 0;
        DATA_B <=0;
        ADDR_B <=0;
        B_EN <=0;
    
    endtask
    
    initial begin
    //RESET EVERYTHING
    RESET <= 0;
    #100
    RESET <= 1;
    
    
    //Start to send a lot of data to the BRAM
    //I'm going to send all 32 kWords of data and max out the address range.
    
    //Seed the RNG
    $srandom(271828);
    
    for(integer i = 0; i < 32768; i++) begin
        writeBRAM(i, $urandom());
    end
    
    
    //Now we have to do the whole playback thing
    
    START_ADDR <= 0;
    STOP <= 19'hFFFFF;
    #DELAYTIME
    W_STOP <= 1;
    W_ADDR <= 1;
    #DELAYTIME
    MODE <= 0;
    P_EN <= 1;
    
    #10us
    
    $display("DONE");
    
    end

    
    
    
    
endmodule
