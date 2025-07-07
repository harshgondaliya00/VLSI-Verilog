module tb_seq_detector_moore;

    reg clk, rst, in_bit;
    wire detected;


    seq_detector_moore dut (
        .clk(clk),
        .rst(rst),
        .in_bit(in_bit),
        .detected(detected)
    );


    initial clk = 0;
    always #5 clk = ~clk;  

    initial begin 
   rst = 1; 
    in_bit = 0;
    clk = 0;
            #20
        rst = 0 ;
      in_bit = 0;#10;
      in_bit = 1;#10;
      in_bit = 0;#10;
      in_bit = 1;#10;
      in_bit = 1;#10;
      in_bit = 0;#10;
      in_bit = 1;#10;
      in_bit = 1;#10;
      in_bit = 0;#10;
      in_bit = 0;#10;
      in_bit = 1;#10;
      in_bit = 0;#10;
      in_bit = 1;#10;
      in_bit = 1;#10;
      in_bit = 0;#20;
        $finish;
    end
  initial begin
  $dumpfile("seq_detector.vcd");
        $dumpvars;
  end

endmodule
