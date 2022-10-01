`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/09/25 16:24:45
// Design Name: 
// Module Name: sop_som_pom_sim
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
module sop_som_pom_sim( );
    reg sa,sb,sc;
    wire sz1,sz2,sz3;
    sop_som_pom u1(.a(sa),.b(sb),.c(sc),.z1(sz1),.z2(sz2),.z3(sz3));
    //sop_som_pom u1(sa,sb,sz1,sz2,sz3);
     /*
    initial begin
        {sa,sb,sc} = 3'b0;
        forever #100 {sa,sb,sc} = {sa,sb,sc} + 1;
    end
    initial begin
        {sa,sb,sc} = 3'b0;
         repeat(7) #100 {sa,sb,sc} = {sa,sb,sc} + 1;
         $finish();
    end */
    initial begin
        {sa,sb,sc} = 3'b0;
        repeat(7); begin
             forever #100 {sa,sb,sc} = {sa,sb,sc} + 1;
        end     
        #100 $finish();
    end  
  /*   initial begin
        {sa,sb,sc} = 3'b0;
        for(integer i=0;i<7;i=i+1) begin
             #100 {sa,sb,sc} = {sa,sb,sc} + 1;
        end     
        #100 $finish();
    end   
    integer i=0;
    initial begin
        {sa,sb,sc} = 3'b0;
         while(i<7) begin
            #100 {sa,sb,sc} = {sa,sb,sc} + 1;
            i=i+1;
         end     
         #100 $finish();
     end   */
endmodule
