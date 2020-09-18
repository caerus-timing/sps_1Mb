`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/21/2019 06:41:23 PM
// Design Name: 
// Module Name: clk_en_sig_tb
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


module clk_en_sig_tb(

    );
     reg s_axi_aclk = 0; reg s_axi_aresetn = 0;
    reg [21:0] i_gpio_half_period = 1;
    reg write_hp = 0;
    
    wire clk_en_sig;
    clk_en_sig  #(.DEFAULT_HALF_PERIOD(2))
    uut
    (
    
    
    .s_axi_aclk(s_axi_aclk),.s_axi_aresetn(s_axi_aresetn),
    .i_gpio_half_period(i_gpio_half_period),
    .write_hp(write_hp),
    .clk_en_sig(clk_en_sig)
    
        );
        
        initial fork 
        
        #4 s_axi_aresetn = 1;
        
        #18 write_hp = 1;
        #20 write_hp = 0;
        
        #50 $stop;
        
        join
    
    always #1 s_axi_aclk = ~s_axi_aclk;
    
endmodule
