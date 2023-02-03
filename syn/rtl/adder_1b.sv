///// adder_1b

module adder_1b (
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



module FA (
input x,
input y, 
input C_FA,
output Sum_FA, 
output Cout_FA);

wire [2:0]c;

xor x1(Sum_FA,x,y,C_FA);
and a1(c[0],x,y);
and a2(c[1],y,C_FA);
and a3(c[2],x,C_FA);
or o1(Cout_FA,c[0],c[1],c[2]);


endmodule
