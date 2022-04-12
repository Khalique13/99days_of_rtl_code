// Combinational logic example

module mux21 (in1, in0, s, f);

    input in1, in0, s;
    output reg f;
    
    always @ (in1, in0, s)
        if (s)
            f = in1;
        else
            f = in0;
endmodule

// A sequential logic example 

module dff_ngedge (D, clock, Q, Qn);

	input D, clock;
	output reg Q, Qn;
	
	always @ (negedge clock)
		begin
			Q = D;
			Qn = ~D;
		end
endmodule

// 4-bit counter with asynchronous reset

module counter (clk, rst, count);

	input clk, rst;
	output reg [3:0] count;
	
	always @ (posedge clk or posedge rst)
		begin
			if (rst)
				count <= 0;
			else
				count <= count + 1;
		end
endmodule

// 4-bit counter with synchronous reset

module _counter_ (clk, rst, count);

	input clk, rst;
	output reg [3:0] count;
	
	always @ (posedge clk)
		begin
			if (rst)
				count <= 0;
			else
				count <= count + 1;
		end
endmodule

// Sequential logic example vs Combinational

module incomp_state_spec (curr_state, flag);

	input [0:1] curr_state;
	output reg [0:1] flag;
	
	always @ (curr_state)
	begin
		// To avoid mapping of 2-bit latch for flag, add below line 
		flag = 0;
		case (curr_state)
			0, 1 : flag = 2;
			3 : flag = 0;
		endcase
	end
endmodule


