module lab2_addition (add_in1, add_in2, add_out); 

input [1:0] add_in1, add_in2;
output [2:0] add_out;

assign add_out = add_in1 + add_in2;
    
endmodule