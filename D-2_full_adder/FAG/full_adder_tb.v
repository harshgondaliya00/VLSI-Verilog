`timescale 1ns / 1ps

module full_adder_df1();
reg a,b,c;
wire s,co;

full_adder_df utt(.a(a),.b(b),.c(c),.s(s),.co(co));
initial begin

    {a,b,c}=3'b000;
    #10 {a,b,c}=3'b001;
    #10 {a,b,c}=3'b010;
    #10 {a,b,c}=3'b011;
    #10 {a,b,c}=3'b100;
    #10 {a,b,c}=3'b101;
    #10 {a,b,c}=3'b110;
    #10 {a,b,c}=3'b111;
    #10 $finish;
end
endmodule 
