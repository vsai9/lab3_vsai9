`timescale 1ns/1ns
module top();


reg [3:0]A;
reg [3:0]B;
wire [3:0]sum;
wire Cout;
reg Cin;
  
    integer i;
  adder_1a A1(A,B, Cin,sum,Cout);
   
  initial
    for(i=0;i < 512;i = i + 1)
  	begin
      {A,B,Cin} =i; #1;
      $display("values of A=%b, B=%b, Cin =%b, Sum =%b, Cout=%b",A,B,Cin,sum, Cout);
    end  
  
endmodule
