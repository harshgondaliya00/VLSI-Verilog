
`timescale 1ns / 1ps

module hag(s,c,a,b);

output s,c;
input a,b;

xor l0(s,a,b);
and l1(c,a,b);

endmodule

module fabyha(s,c,a,b,cin);

output s,c;
input a,b,cin;
wire s0,s1,s2;

hag l0(s0,s1,a,b);
hag l1(s,s2,s0,cin);
or l3(c,s1,s2);

endmodule   

