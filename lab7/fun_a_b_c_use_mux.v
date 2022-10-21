module fun_a_b_c_use_mux(input A,B,C, output F);

wire sen, sd7, sd6, sd5, sd4, sd3, sd2, sd1, sd0;
wire snf;

assign {sen, sd7, sd6, sd5, sd4, sd3, sd2, sd1, sd0} = 9'b0_1100_0111;

multiplexer74151 u74151(.en(sen), .s2(C), .s1(B), .s0(A), .d7(sd7), .d6(sd6), 
.d5(sd5), .d4(sd4), .d3(sd3), .d2(sd2), .d1(sd1), .d0(sd0), .y(F), .w(snf));

endmodule