module multiplexer74151(en, s2, s1, s0, d7, d6, d5, d4, d3, d2, d1, d0, y, w);

input en, s2, s1, s0, d7, d6, d5, d4, d3, d2, d1, d0;
output reg y;
output w;

always @(*) begin
    if (~en)
        case ({s2, s1, s0})
            3'b000: y = d0; 
            3'b001: y = d1;
            3'b010: y = d2;
            3'b011: y = d3;
            3'b100: y = d4;
            3'b101: y = d5;
            3'b110: y = d6;
            3'b111: y = d7;
        endcase
    else
        y = 1'b0;
end
assign w = ~y;

endmodule