	integer mycount;
  
	reg [100:1] data;
	integer i;
  
	initial
		for (mycount = 0; mycount <= 255; mycount = mycount + 1)
		$display ("My count: %d" mycount);
  
	initial
		for (i = 1; i <= 100; i = i + 1)
		data[i] = 1'b0;
    
    
reg clock;
initial 
	begin
		clock = 1'b0;
		repeat (100)
		#5 clock = ~clock ;
	end
 
reg clock;
 
initial 
	begin  
	clk = 1'b0;
	forever #5  clk = ~clk;
end
  

