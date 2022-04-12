// Clock generator
module clock;

 output reg clk;
 
 initial
  clk = 1'b0;
  
 always
  #5 clk = ~clk;
  
 initial
  #500 $finish;

endmodule
