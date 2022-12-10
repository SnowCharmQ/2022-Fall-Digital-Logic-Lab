`timescale 1ns / 1ps

module D_latch(input En, D, output reg Q, output wire nQ);
assign nQ = ~Q;
always @(*)
    if (En)
        Q = D;
    else
        Q = Q;
endmodule
