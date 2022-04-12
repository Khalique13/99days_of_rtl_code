module mycount;
 integer mycount;

 initial
 begin
 mycount = 0;
 while (mycount <= 255)
  begin
   $display
   mycount = mycount + 1;
  end
endmodule

