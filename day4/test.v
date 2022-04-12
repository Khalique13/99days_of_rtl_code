// D flip-flop with synchronous set and reset

module dff (q, qn, d, set, reset, clk);

	input d, set, reset, clk;
	output reg q; output qn;
 
	assign qn = ~q;
	
	always @ (posedge clk)
	begin
		if (reset == 0) q <= 0;
		else if (set == 0) q <= 1;
		else q <= d;
	end
endmodule

// Transparent latch with enable

module latch (q, qn, din, enable);

	input din, enable;
	output reg q;
	output qn;
	
	assign qn = ~q;
	
	always @ (din, enable)
		begin
			if (enable) q = din;
		end
endmodule
	
