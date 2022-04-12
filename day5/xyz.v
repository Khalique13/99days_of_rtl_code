/*module xyz (input a, b, c, output reg f);
	always @ (*)
		if (a == 1) f = b & c;
endmodule
*/
module xyz (input a, b, c, output reg f);
	always @ (*)
		begin
			f = c;
			if (a == 1) f = b & c;
		end
endmodule
