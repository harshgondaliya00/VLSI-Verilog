`timescale 1ns / 1ps



module fsg(d,bout,a,b,cin);
output d,bout;
input a,b,cin;
wire s0,s1,s2;

xor l0(s0,a,b);
and l1(s1,~a,b);
xor l2(d,s0,cin);
and l3(s2,~s0,cin);
or l4(bout,s1,s2);
endmodule
