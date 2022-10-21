module fun_a_b_c(input A,B,C, output F);

assign F = ((~A) & (~C)) | ((~B) & (~C)) | ((~A) & B) | (B & C);

endmodule