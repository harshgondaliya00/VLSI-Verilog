`timescale 1ns / 1ps


module fsg(d,bout,a,b,bin);
output d,bout;
input a,b,bin;
wire s0,s1,s2;

assign s0=a^b;
assign s1=~a&b;
assign d=s0^bin;
assign s2=~s0&bin;
assign bout=s1|s2;
endmodule
