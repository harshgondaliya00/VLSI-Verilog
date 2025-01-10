`timescale 1ns / 1ps

module mux(y,s,d);
output y;
input [1:0] s;
input [3:0] d;
reg y;

always@(*)
begin
case({s})
2'b00 : y=d[0];
2'b01 : y=d[1];
2'b10 : y=d[2];
2'b11 : y=d[3];
endcase
end
endmodule
    