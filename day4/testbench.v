module testbench;
 reg a, b, cin, sum, cout;
 
 initial
  cin = 1'b0;
  
 initial
 
  begin
   #5 a = 1'b1; b = 1'b1;
   #5 b = 1'b0;
  end
 
 initial
  #25 $finish;
  
endmodule
