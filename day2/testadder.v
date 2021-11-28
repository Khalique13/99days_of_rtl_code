`include "adder.v"

module testadder;

	reg [15:0] X, Y;
	wire [15:0] Z;
	wire S, ZR, CY, P, V;
	
	adder DUT (X, Y, Z, S, ZR, CY, P, V);
	initial
		begin
		$dumpfile ("adder.vcd");
		$dumpvars (0, testadder);
		$monitor ($time, "X=%h, Y=%h, Z=%h, S=%b, ZR=%b, CY=%b, P=%b, V=%b", X, Y, Z, S, ZR, CY, P, V);
		#5 X =16'h8fff; Y =16'h3234;
		#5 X =16'hfffe; Y =16'h4645;
		#5 X =16'hAAAA; Y =16'h4444;
		#5 $finish;
	end
endmodule
