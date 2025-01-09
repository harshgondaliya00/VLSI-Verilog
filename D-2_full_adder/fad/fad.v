`timescale 1ns / 1ps

module fad(s,c,a,b,cin);

output s,c;
input a,b,cin;
wire s0,s1,s2;

// //Or
//assign s=a^b^cin;
//assign c=((a^b)&cin)|(a&b);

assign s0=a^b;
assign s1=a&b;
assign s=s0^cin;
assign s2=s0&cin;
assign c=s1|s2;

endmodule   

