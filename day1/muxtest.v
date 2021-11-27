`include "mux16.v"

module muxtest;

	reg [15:0]in; reg [3:0]sel; wire out;
	
	mux16 M (.in(in), .sel(sel), .out(out));
	
	initial 
		begin 
		$dumpfile ("mux16.vcd");
		$dumpvars (0, muxtest);
		$monitor ($time, "in=%h, out=%b", in,sel,out );
		#5 in=16'h3f0a; sel=4'h0;
		#5 sel=4'h1;
		#5 sel=4'h6;
		#5 sel=4'hc;
		#5 $finish;
	
	end

endmodule


