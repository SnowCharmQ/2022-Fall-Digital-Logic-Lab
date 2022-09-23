`timescale 1ns / 1ps

module lab3_practice1_sim();
reg simx, simy, simz;
wire simo1, simo2, simo3;

lab3_practice1 prac1(
    .x(simx), .y(simy), .z(simz),
    .o1(simo1), .o2(simo2), .o3(simo3)
);

initial begin
    {simx, simy, simz} = 3'b0;
    repeat(8) #10 {simx, simy, simz} = {simx, simy, simz} + 1;
    #10 $finish();
end

endmodule