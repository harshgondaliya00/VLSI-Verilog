`timescale 1ns / 1ps

module half_sub(d,bout,a,b);
output d,bout;
input a,b;

assign d=a^b;
assign bout=(~a)&b;

endmodule
