`timescale 1ns / 1ps

module half_sub(d,bout,a,b);
output d,bout;
input a,b;
reg d,bout;

always@(*)
begin
    case ({a, b})
            2'b00: begin d = 0; bout = 0; end
            2'b01: begin d = 1; bout = 1; end
            2'b10: begin d = 1; bout = 0; end
            2'b11: begin d = 0; bout = 0; end
    endcase
end


endmodule
