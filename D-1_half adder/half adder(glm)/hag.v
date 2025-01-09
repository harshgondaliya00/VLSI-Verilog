`timescale 1ns / 1ps

module hag(s,c,a,b);

output s,c;
input a,b;

xor l0(s,a,b);
and l1(c,a,b);

endmodule
