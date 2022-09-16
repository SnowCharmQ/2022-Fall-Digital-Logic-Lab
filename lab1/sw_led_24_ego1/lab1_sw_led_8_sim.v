`timescale 1ns / 1ps

module lab1_sw_led_8_sim( );
//connect to input
reg [7:0] tb_sw=24'h000000;
//connect to output
wire [7:0] tb_led;
//instantiate the unit 
lab1_sw_led_8 usrc1(
.sw(tb_sw),
.led(tb_led)
);

always #10 tb_sw=tb_sw+1;
endmodule
