`timescale 1ns/1ps

module flash_led_top(input clk, input rst_n, input sw0, output [7:0] led);
    wire clk_bps;
    counter counter(.clk(clk), .rst_n(rst_n), .clk_bps(clk_bps));
    flash_led_ctrl flash_led_ctrl(.clk(clk), .rst_n(rst_n), .dir(sw0), .clk_bps(clk_bps), .led(led));
endmodule