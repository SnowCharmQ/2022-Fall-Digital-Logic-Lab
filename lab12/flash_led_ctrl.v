module flash_led_ctrl(input clk, input rst_n, input dir, input clk_bps, output reg[7:0] led);

always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        led <= 8'h80;
    else
        case (dir)
            1'b0: 
                if (clk_bps) 
                    if (led != 8'h01)
                        led <= (led >> 1'b1);
                    else
                        led <= 8'h80;
            1'b1:
                if (clk_bps)
                    if (led != 8'h80)
                        led <= (led << 1'b1);
                    else 
                        led <= 8'h01; 
        endcase
end

endmodule