module sr_latch (S, R, Q, Qn);

    input S, R;
    output Q, Qn;

    assign Q = ~(R & Qn);
    assign Qn = ~(S & Q);

endmodule


