`timescale 1ns / 1ps

module full_sub_str2( );
reg a,b,bi;
wire d,bo;
full_sub_str utt(.a(a),.b(b),.bi(bi),.d(d),.bo(bo));

initial begin
    {a,b,bi}=3'b000;
    #10 {a,b,bi}=3'b001;
    #10 {a,b,bi}=3'b010;
    #10 {a,b,bi}=3'b011;
    #10 {a,b,bi}=3'b100;
    #10 {a,b,bi}=3'b101;
    #10 {a,b,bi}=3'b110;
    #10 {a,b,bi}=3'b111;
    #10 $finish;
end
endmodule 