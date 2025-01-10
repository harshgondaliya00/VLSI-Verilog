`timescale 1ns / 1ps

module tb_mux8to1;

    reg [7:0] data_in;   
    reg [2:0] sel;      
    wire data_out;       

    mux8to1 uut (
        .data_in(data_in),
        .sel(sel),
        .data_out(data_out)
    );

    initial begin

        // Test case 1: Set data_in to a known value and test each select line
        data_in = 8'b10101010;
        sel = 3'b000; #10;  // Expect data_out = data_in[0] = 0
        sel = 3'b001; #10;  // Expect data_out = data_in[1] = 1
        sel = 3'b010; #10;  // Expect data_out = data_in[2] = 0
        sel = 3'b011; #10;  // Expect data_out = data_in[3] = 1
        sel = 3'b100; #10;  // Expect data_out = data_in[4] = 0
        sel = 3'b101; #10;  // Expect data_out = data_in[5] = 1
        sel = 3'b110; #10;  // Expect data_out = data_in[6] = 0
        sel = 3'b111; #10;  // Expect data_out = data_in[7] = 1
        $finish;
    
    end

endmodule
