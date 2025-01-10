`timescale 1ns / 1ps

module mux_4x1 (
    input wire [3:0] I,   // 4-bit data input
    input wire [1:0] S,   // 2-bit select input
    output wire Y         // Output
);

assign Y = (S == 2'b00) ? I[0] :  // When S = 00, Y = I[0]
           (S == 2'b01) ? I[1] :  // When S = 01, Y = I[1]
           (S == 2'b10) ? I[2] :  // When S = 10, Y = I[2]
           ( S== 2'b11) ? I[3] :              // When S = 11, Y = I[3]

endmodule

