`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/09/19 10:48:27
// Design Name: 
// Module Name: lab3_df
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


module lab3_df(
input x,y,
output q1,q2,q3
    );
    assign q1 = x;
    assign q2 = x | (x & y);
    assign q3 = x & (x | y);
endmodule
