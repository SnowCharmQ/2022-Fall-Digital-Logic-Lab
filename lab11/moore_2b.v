`timescale 1ns/1ps

module moore_2b(input clk, rst_n, x_in, output[1:0] state, next_state);

reg [1:0] state, next_state;
parameter S0 = 2'b00, S1 = 2'b01, S2 = 2'b10, S3 = 2'b11;
always @(posedge clk, negedge rst_n) begin
    if (~rst_n)
        state <= S0;
    else
        state <= next_state;
end
always @(state, x_in) begin
    case (state)
        S0: if (x_in) next_state = S1; else next_state = S0;
        S1: if (x_in) next_state = S2; else next_state = S1;
        S2: if (x_in) next_state = S3; else next_state = S2;
        S3: if (x_in) next_state = S0; else next_state = S3;
    endcase
end

endmodule