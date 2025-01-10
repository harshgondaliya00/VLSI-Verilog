`timescale 1ns / 1ps

module mux(y,s,d);
output y;
input [1:0] s;
input [3:0] d;
wire [3:0] p;

and l0(p[0],~s[0],~s[1],d[0]);
and l1(p[1],~s[0],s[1],d[1]);
and l2(p[2],s[0],~s[1],d[2]);
and l3(p[3],s[0],s[1],d[3]);
or l4(y,p[0],p[1],p[2],p[3] );
endmodule
