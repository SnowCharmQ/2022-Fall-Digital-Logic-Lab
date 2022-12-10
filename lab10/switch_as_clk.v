`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/30 10:17:52
// Design Name: 
// Module Name: switch_as_clk
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


module switch_as_clk(input clk, D, output reg Q, Qn);
    always @(posedge clk) begin
        Q  <= D;
        Qn <= ~D;
    end
endmodule
