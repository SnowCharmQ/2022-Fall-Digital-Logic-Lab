`timescale 1ns / 1ps

module lab3_practice2 (a, b, sum);

input [1:0] a, b;
output [2:0] sum;

assign sum[0] = ~a[0]&b[0] | ~b[0]&a[0];
assign sum[1] = (~a[1]&a[0]&~b[1]&b[0]) | (a[1]&a[0]&b[1]&b[0]) | (~a[1]&~a[0]&b[1]) | 
                (~a[1]&b[1]&~b[0]) | (a[1]&~b[1]&~b[0]) | (a[1]&~a[0]&~b[1]);
assign sum[2] = (a[1]&a[0]&b[0]) | (a[0]&b[1]&b[0]) | (a[1]&b[1]);

endmodule