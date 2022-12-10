`timescale 1ns / 1ps

module D_ff_from_latch(input clk, D, output Q);
    wire Y, nq_master, nq_slaver;

    D_latch DL_mster(clk, D, Y, nq_master);
    D_latch DL_slaver(~clk, Y, Q, nq_slaver);
endmodule