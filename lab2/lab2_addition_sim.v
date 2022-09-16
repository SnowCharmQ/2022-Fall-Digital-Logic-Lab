`timescale 1ns / 1ps

module lab2_addition_sim();
reg [1:0] in1_sim, in2_sim;
wire [2:0] out_sim;

addition2bit ua1(.add_in1(in1_sim), .add_in2(in2_sim), .add_out(out_sim));
initial begin
    in1_sim = 2'b0; in2_sim = 2'b0;
    {in1_sim, in2_sim} = {in1_sim, in2_sim} + 1;
    #10 $finish();
end

endmodule