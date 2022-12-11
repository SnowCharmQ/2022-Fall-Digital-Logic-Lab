`timescale 1ns/1ps

module clk_div_tb();
    reg clk, rst_n;
    wire clk_out;
    clk_div cd(clk, rst_n, clk_out);

    initial fork
        clk <= 0;
        rst_n <= 0;
        #3 rst_n <= 1;
        forever 
            #5 clk = ~clk;
    join
endmodule