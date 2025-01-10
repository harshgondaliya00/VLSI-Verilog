`timescale 1ns / 1ps

module mux1(y,s,d);
output y;
input [1:0] s;
input [3:0] d;

assign y=~s[1]&~s[0]&d[0] | ~s[1]&s[0]&d[1] | s[1]&~s[0]&d[2] | s[1]&s[0]&d[3];

endmodule


module mux(y,s,d);
output y;
input [3:0] s;
input [15:0] d;
wire [3:0] p; 

mux1 l0(p[0],s[1:0],d[3:0]);
mux1 l1(p[1],s[1:0],d[7:4]);
mux1 l2(p[2],s[1:0],d[11:8]);
mux1 l3(p[3],s[1:0],d[15:12]);
mux1 l4(y,s[3:2],p[3:0]);

endmodule
