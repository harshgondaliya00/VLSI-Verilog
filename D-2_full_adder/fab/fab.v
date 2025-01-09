`timescale 1ns / 1ps

module fab(s,c,a,b,cin);

output s,c;
input a,b,cin;
reg s,c;

always @(a or b or cin)
begin 
if (a==0 & b==0 & cin==0) begin s=0;c=0; end
else if (a==0 & b==0 & cin==1) begin s=1;c=0; end
else if (a==0 & b==1 & cin==0) begin s=1;c=0; end
else if (a==0 & b==1 & cin==1) begin s=0;c=1; end
else if (a==1 & b==0 & cin==0) begin s=1;c=0; end
else if (a==1 & b==0 & cin==1) begin s=0;c=1; end
else if (a==1 & b==1 & cin==0) begin s=0;c=1; end
else if (a==1 & b==1 & cin==1) begin s=1;c=1; end
end 
endmodule   

