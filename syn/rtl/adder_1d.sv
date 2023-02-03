///// adder_1d

module adder_1d (
input [3:0]A, 
input [3:0]B,
input Cin,
output reg [3:0]Sum,
output reg Cout);




always_comb
begin

{Cout,Sum} = A + B + Cin;

end

endmodule 
