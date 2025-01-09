`timescale 1ns / 1ps

module hag(s,c,a,b);

output s,c;
input a,b;

assign s = a^b;
assign c = a&b;

endmodule
