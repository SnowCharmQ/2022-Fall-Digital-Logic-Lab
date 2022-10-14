module sid_group_sim();

reg[3:0] sid_sim;
wire [1:0] group;

sid_group sg(.sid(sid_sim), .g(group));

initial begin
    sid_sim = 4'b0000;
    repeat(15) #10 sid_sim  = sid_sim + 1;
    #10 $finish();
end

endmodule