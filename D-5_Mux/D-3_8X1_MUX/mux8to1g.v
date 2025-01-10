`timescale 1ns / 1ps

module mux(y,s,d);
output y;
input [2:0] s;
input [7:0] d;
wire [7:0] p; 

and l0(p[0],~s[2],~s[1],~s[0],d[0]);
and l1(p[1],~s[2],~s[1],s[0],d[1]);
and l2(p[2],~s[2],s[1],~s[0],d[2]);
and l3(p[3],~s[2],s[1],s[0],d[3]);
and l4(p[4],s[2],~s[1],~s[0],d[4]);
and l5(p[5],s[2],~s[1],s[0],d[5]);
and l6(p[6],s[2],s[1],~s[0],d[6]);
and l7(p[7],s[2],s[1],s[0],d[7]);
or l8(y,p[0],p[1],p[2],p[3],p[4],p[5],p[6],p[7] );
endmodule
