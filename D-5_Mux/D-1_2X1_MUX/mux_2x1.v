`timescale 1ns / 1ps

module mux(y,s,d);
output y;
input  s;
input [1:0] d;
reg y;

always@(*)
begin
case({s})
1'b0 : y=d[0];
1'b1 : y=d[1];
endcase
end
endmodule
    