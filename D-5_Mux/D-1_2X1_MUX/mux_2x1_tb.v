`timescale 1ns / 1ps

module tb_mux_2x1;
    reg [1:0] I;
    reg S;

    wire Y;

    mux_2x1 uut (
        .I(I),
        .S(S),
        .Y(Y)
    );

    initial begin

        I = 2'b00; S = 0; #10; 
        I = 2'b01; S = 0; #10; 
        I = 2'b10; S = 0; #10; 
        I = 2'b11; S = 0; #10; 

        I = 2'b00; S = 1; #10; 
        I = 2'b01; S = 1; #10; 
        I = 2'b10; S = 1; #10; 
        I = 2'b11; S = 1; #10; 

        $finish;
    end
    

endmodule
