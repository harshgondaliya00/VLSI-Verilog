`timescale 1ns / 1ps

module half_sub_df1( );
reg a,b;
wire d,bo;

half_sub_df utt(.a(a),.b(b),.d(d),.bo(bo));

initial begin

    {a,b}=2'b00;
    #2 {a,b}=2'b01;
    #2 {a,b}=2'b10;
    #2 {a,b}=2'b11;
    #2 $finish;
end

endmodule
