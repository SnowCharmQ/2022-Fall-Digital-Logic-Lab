`timescale 1ns / 1ps

module sid_group(input [3:0] sid, output reg[1:0] g);

always @(*) begin
    casex (sid)
        4'bxx00: g = 2'b00;
        4'bxx01: g = 2'b01;
        4'bxx10: g = 2'b10;
        4'bxx11: g = 2'b11;
        default: g = 2'b00;
    endcase
end

endmodule