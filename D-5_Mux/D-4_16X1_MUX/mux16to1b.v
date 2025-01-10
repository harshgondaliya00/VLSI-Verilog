`timescale 1ns / 1ps

module mux(y,s,d);
output y;
input [3:0] s;
input [15:0] d;
reg y;

always@(*)
begin
case({s})
4'b0000 : y=d[0];
4'b0001 : y=d[1];
4'b0010 : y=d[2];
4'b0011 : y=d[3];
4'b0100 : y=d[4];
4'b0101 : y=d[5];
4'b0110 : y=d[6];
4'b0111 : y=d[7];
4'b1000 : y=d[8];
4'b1001 : y=d[9];
4'b1010 : y=d[10];
4'b1011 : y=d[11];
4'b1100 : y=d[12];
4'b1101 : y=d[13];
4'b1110 : y=d[14];
4'b1111 : y=d[15];
endcase
end
endmodule
    