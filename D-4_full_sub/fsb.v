`timescale 1ns / 1ps


module fsg(d,bout,a,b,bin);
output d,bout;
input a,b,bin;
reg d,bout;

always@(*)

begin 
if (a==0 & b==0 & bin==0) begin d=0;bout=0; end
else if (a==0 & b==0 & bin==1) begin d=1;bout=1; end
else if (a==0 & b==1 & bin==0) begin d=1;bout=1; end
else if (a==0 & b==1 & bin==1) begin d=1;bout=0; end
else if (a==1 & b==0 & bin==0) begin d=1;bout=0; end
else if (a==1 & b==0 & bin==1) begin d=0;bout=0; end
else if (a==1 & b==1 & bin==0) begin d=0;bout=0; end
else if (a==1 & b==1 & bin==1) begin d=1;bout=1; end
end 
endmodule
