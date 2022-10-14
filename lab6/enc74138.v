`timescale 1ns / 1ps

module enc74138(input [7:0] x, input ei, output reg[2:0] y);

always @(ei, x) begin
    if (ei == 1'b1) 
        y = 3'b11;
    else
        casex (x)
            8'b0xxx_xxxx: y = 3'b000;
            8'b10xx_xxxx: y = 3'b001; 
            default: y = 3'b111;
        endcase
end

endmodule