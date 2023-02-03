/// adder_1a

module adder_1a (
input [3:0]A, 
input [3:0]B,
input Cin,
output [3:0]Sum,
output Cout);

wire Carry[2:0];

FA FA_0 (.x(A[0]), .y(B[0]), .C_FA(Cin), .Sum_FA(Sum[0]), .Cout_FA(Carry[0]));
FA FA_1 (.x(A[1]), .y(B[1]), .C_FA(Carry[0]), .Sum_FA(Sum[1]), .Cout_FA(Carry[1]));
FA FA_2 (.x(A[2]), .y(B[2]), .C_FA(Carry[1]), .Sum_FA(Sum[2]), .Cout_FA(Carry[2]));
FA FA_3 (.x(A[3]), .y(B[3]), .C_FA(Carry[2]), .Sum_FA(Sum[3]), .Cout_FA(Cout));


endmodule 


module FA ( x, y, C_FA, Sum_FA, Cout_FA); 
input x, y, C_FA;
output Sum_FA, Cout_FA;

assign Sum_FA = x^y^C_FA;

assign Cout_FA = (x&y) | (y&C_FA) | (x&C_FA);

endmodule

