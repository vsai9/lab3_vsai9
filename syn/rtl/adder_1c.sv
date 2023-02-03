///// adder_1c
module adder_1c (
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
output reg Sum_FA, 
output reg Cout_FA);


always_comb 
begin 

case({x,y, C_FA})

3'b000 : begin Sum_FA = 0 ; Cout_FA = 0 ;end 
3'b001 : begin Sum_FA = 1 ; Cout_FA = 0 ;end 
3'b010 : begin Sum_FA = 1 ; Cout_FA = 0 ;end 
3'b011 : begin Sum_FA = 0 ; Cout_FA = 1 ;end 
3'b100 : begin Sum_FA = 1 ; Cout_FA = 0 ;end 
3'b101 : begin Sum_FA = 0 ; Cout_FA = 1 ;end 
3'b110 : begin Sum_FA = 0 ; Cout_FA = 1 ;end 
3'b111 : begin Sum_FA = 1 ; Cout_FA = 1 ;end 
default : begin Sum_FA = 0 ; Cout_FA = 0 ;end

endcase

end

endmodule
