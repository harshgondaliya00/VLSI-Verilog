`timescale 1ns / 1ps

module half_sub(d,bout,a,b);
output d,bout;
input a,b;

xor lo(d,a,b);
and l1(bout,~a,b);
endmodule
