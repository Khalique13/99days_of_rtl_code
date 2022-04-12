module dvsd_pe (in, out, en, eno, gs, clk);

	input en, clk;
	input [7:0] in;
	output reg [2:0] out;
	output reg eno, gs;
	
	reg _a_;
	
	always @ (posedge clk or negedge clk)
		begin
			_a_ = ~& in ;
			eno = ~(_a_ & en);
			gs = ~eno & en;
		end
			
	always @ (posedge clk or negedge clk)
		begin
			if (en)
			casex (in)
				// Highest Priority
				8'bxxxxxxx1: out = 3'b000;
				8'bxxxxxx1x: out = 3'b001;
				8'bxxxxx1xx: out = 3'b010;
				8'bxxxx1xxx: out = 3'b011;
				8'bxxx1xxxx: out = 3'b100;
				8'bxx1xxxxx: out = 3'b101;
				8'bx1xxxxxx: out = 3'b110;
				8'b1xxxxxxx: out = 3'b111;
				// Lowest Priority
				default : out = 1'bx;
			endcase
		end
		
endmodule
