`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/09/19 10:50:22
// Design Name: 
// Module Name: lab3_df_sim
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


module lab3_df_sim( );
reg simx,simy;
wire simq1,simq2,simq3;
lab3_df u_df(
.x(simx),.y(simy),.q1(simq1),.q2(simq2),.q3(simq3)
);
initial begin 
    {simx,simy} = 2'b0;
    repeat(3) #10 {simx,simy} = {simx,simy} + 1;
    #10 $finish();
end
endmodule
