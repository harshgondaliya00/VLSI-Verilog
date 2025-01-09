`timescale 1ns / 1ps

module half_adder_tb;
    reg A,B;
    wire C,S;
half_adder uut(.A(A),.B(B),.C(C),.S(S));

initial 
begin
{A,B}=2'b00;
#10
{A,B}=2'b01;
#10
{A,B}=2'b10;
#10
{A,B}=2'b11;
#10
$finish;
end
endmodule