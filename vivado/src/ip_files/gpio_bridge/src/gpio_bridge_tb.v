`timescale 1ns / 1ps
//Adam Satar
//team17 ece1819
//test bench for gpio bridge to test splits and concats
module gpio_bridge_tb();

//inputs
    
    reg [31:0] gpio_in = 0;
    

//outputs
wire [5:0] ctrl_0,ctrl_1,ctrl_2,ctrl_3;

wire din_0,din_1,din_2,din_3;
wire dout_en_0,dout_en_1,dout_en_2, dout_en_3;

gpio_bridge uut (
    
    .gpio_in(gpio_in),
    .ctrl_0(ctrl_0),
    .ctrl_1(ctrl_1),
    .ctrl_2(ctrl_2),
    .ctrl_3(ctrl_3),
    
    .din_0(din_0),
    .din_1(din_1),
    .din_2(din_2),
    .din_3(din_3),
    
    .dout_en_0(dout_en_0),
    .dout_en_1(dout_en_1),
    .dout_en_2(dout_en_2),
    .dout_en_3(dout_en_3)

);
//always #5 gpio_in = gpio_in + 2;

initial begin 

#10 gpio_in = gpio_in | 32'hE3224321;
#20  $stop;

 end
endmodule
