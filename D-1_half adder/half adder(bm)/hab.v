`timescale 1ns / 1ps

module hag(s,c,a,b);

output s,c;
input a,b;
reg s,c;

always @(a or b) begin
    case ({a, b})
            2'b00: begin s = 0; c = 0; end
            2'b01: begin s = 1; c = 0; end
            2'b10: begin s = 1; c = 0; end
            2'b11: begin s = 0; c = 1; end
    endcase
end

endmodule   

