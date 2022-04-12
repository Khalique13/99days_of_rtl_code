// Behavioral model of 4-bit Shit register using sequenntial non-blocking assignments

module shift_4bit (clock, clear, A, E);

	input clock, clear, A;
	output reg E;
	reg B, C, D;
	
	always @ (posedge clock or negedge clear)
		begin
			if (!clear)
				begin
					B <= 0;
					C <= 0;
					D <= 0;
					E <= 0;
				end
			else
				begin
					E <= D;
					B <= A;
					C <= B;
					D <= C;
				end
		end
endmodule
	
	
