// Using multiple edges of the same clock

module mult_edge_clk (a, b, f, clk);
	
	input a, b, clk;
	output reg f; reg t;
	
	always @(posedge clk)
		f <= t & b;
	always @(negedge clk)
		t <= a | b;
endmodule

// Another example

module multi_edge_clk (a, b, c, d, f, clk);

	input a, b, d, clk;
	output reg c, f; 
		
	always @(posedge clk)
		c <= a + b;
	always @(negedge clk)
		f <= c - d;
endmodule
