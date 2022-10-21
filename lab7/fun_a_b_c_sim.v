`timescale 1ns/1ps

module fun_a_b_c_sim();

reg sa, sb, sc;
wire sf, sf_mux;

fun_a_b_c uf(.A(sa), .B(sb), .C(sc), .F(sf));
fun_a_b_c_use_mux uf_mux(.A(sa), .B(sb), .C(sc), .F(sf_mux));

initial begin
    {sa, sb, sc} = 3'b000;
    repeat (7)
    begin
      #100 {sa, sb, sc} = {sa, sb, sc} + 1;
      $display($time, "{sa, sb, sc}=%d_%d_%d sf=%d sf_mux=%d", sa, sb, sc, sf, sf_mux);
    end
    #100 $finish();
end


endmodule