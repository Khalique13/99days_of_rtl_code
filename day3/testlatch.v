`include "latch.v"

module latchtest;
    reg S, R;
    wire Q, Qn;
    
    sr_latch LAT (.Q(Q), .Qn(Qn), .S(S), .R(R));
    initial 
        begin
            $monitor ($time, "S=%b, R=%b, Q=%b, Qn=%b", S, R, Q, Qn);

            S = 1'b0; R = 1'b1;
        #5 S = 1'b1; R = 1'b1;
        #5 S = 1'b1; R = 1'b0;
        #5 S = 1'b1; R = 1'b1;
        #5 S = 1'b0; R = 1'b0;
        #5 S = 1'b1; R = 1'b1;
        end
endmodule

// Here the simulator hangs due to indeterminate case

