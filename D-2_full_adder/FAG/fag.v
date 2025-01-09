`timescale 1ns / 1ps

module fag(s,c,a,b,cin);

output s,c;
input a,b,cin;
wire s0,s1,s2;

xor l0(s0,a,b);
and l1(s1,a,b);
xor l2(s,s0,cin);
and l3(s2,s0,cin);
or l4(c,s1,s2);
endmodule   

