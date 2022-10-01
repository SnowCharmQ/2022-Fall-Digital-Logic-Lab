`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/09/25 16:16:24
// Design Name: 
// Module Name: sop_som_pom
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


module sop_som_pom(input a,b,c,output z1,z2,z3);
    // a+b'c
    assign z1 = a | (~b & c); 
    //m1(a'b'c) + m4(ab'c') + m5(ab'c) + m6(abc') + m7(abc)
    assign z2 = (~a & ~b & c) | (a & ~b & ~c) | (a & ~b & c) | (a & b &~c) | (a & b & c);
    //M0(a+b+c) . M2(a+b'+c) . M3(a+b'+c')
    assign z3 = (a | b | c) & (a | ~b | c) & (a | ~b | ~c);
endmodule
