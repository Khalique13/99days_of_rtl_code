
module generate_mux (data, sel, out);
 
 input [15:0] data;
 input [3:0] sel;
 output out;

// Non-constant index in expession on RHS generates MUX 
 assign out = data[sel];
 
endmodule

module generate_set_mux (a, b, f, sel);

 input [0:3] a, b;
 input sel;
 output [0:3] f;

// Conditional operator generates a MUX 
 assign f = sel ? a : b;
 
endmodule


module generate_decoder (out, in, sel);

 input in;
 input [0:1] sel;
 output [0:3] out;

// Non-constant index in expression on LHS generates a decoder
 assign out[sel] = in;
 
endmodule


module latch (D, Q, En);

    input D, En;
    input Q;

// Sequential logic element
    assign Q = En ? D : Q;

endmodule


module sr_latch (S, R, Q, Qn);

    input S, R;
    output Q, Qn;

    assign Q = ~(R & Qn);
    assign Qn = ~(S & Q);

endmodule
