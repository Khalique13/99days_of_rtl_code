// RTL Behavioral code for 16-bit Multiplexer
// Design Engineer: Mohammad Khalique Khan

module mux16 (in, sel, out);

	input [15:0] in;
	input [3:0] sel;
	output out;

		assign out = in[sel];
		
endmodule 
