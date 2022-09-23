`timescale 1ns / 1ps

module lab3_practice1(
    input x, y, z,
    output o1, o2, o3
);

assign o1 = x & y & z | x & y & ~z;
assign o2 = x & y & (z | ~z);
assign o3 = x & y;

endmodule