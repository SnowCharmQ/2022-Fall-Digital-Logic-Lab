`timescale 1ns/1ps

module sim_moore_12();

reg clk, rst_n, x_in;
wire [1:0] u1s, u2s, u2ns;

moore_1b u1(clk, rst_n, x_in, u1s);
moore_2b u2(clk, rst_n, x_in, u2s, u2ns);

initial #70 $finish;
initial begin
    clk = 1'b0;
    rst_n = 1'b0;
    forever #5 clk = ~clk;
end

initial fork
    x_in = 1'b0;
    #1 rst_n = 1'b1;
    #3 x_in = 1'b1;
    #35 x_in = 1'b0;
    #40 x_in = 1'b1;
join

endmodule