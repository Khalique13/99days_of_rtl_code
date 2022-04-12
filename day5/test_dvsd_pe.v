
`timescale 1ns / 1ps
`include "dvsd_pe.v"

module test_dvsd_pe;

	reg en, clk;
	reg [7:0] in;
	
 	wire eno, gs;
	wire [2:0] out;
	

 dvsd_pe DUT (.in(in), .en(en), .out(out), .eno(eno), .gs(gs), .clk(clk));

initial
	begin
		$monitor ($time, " en=%4b, in=%8b, out=%3b, eno=%4b, gs=%4b", en, in, out, eno, gs);
		$dumpfile("dvsd_pe.vcd");	
		$dumpvars(0,test_dvsd_pe);
		
		clk = 1;
		forever #5 clk = ~clk;
	end
	
initial
	begin	
		in = 8'b00000000; en = 0; #5;
		in = 8'b00000001; en = 1; #5;
		in = 8'b00100010; en = 1; #5;
		in = 8'b10000100; en = 1; #5;
		in = 8'b00001000; en = 1; #5;
		in = 8'b00010000; en = 1; #5;
		in = 8'b00100000; en = 1; #5;
		in = 8'b01000000; en = 1; #5;
		in = 8'b10001000; en = 1; #5;
		in = 5'b00000; en = 1; 
	end
initial 
	#50 $finish;
endmodule
