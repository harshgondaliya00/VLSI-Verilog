`timescale 1ns / 1ps

module full_sub_dt(output d,bo, input a,b,bi);

    assign d= a^b^bi;
    assign bo=(~a&b) | (~b&bi) | (~a&bi);

endmodule

