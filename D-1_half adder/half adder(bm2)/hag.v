`timescale 1ns / 1ps

module hag(s,c,a,b);

output s,c;
input a,b;
reg s,c;

always @(a or b) 
begin
 if (a==0 & b==0) begin s=0; c=0; end
else if (a==0 & b==1) begin s=1; c=0; end
else if (a==1 & b==0) begin s=1; c=0; end
else if (a==1 & b==1) begin s=0; c=1; end

end

endmodule   

