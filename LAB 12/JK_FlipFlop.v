module JK_FlipFlop(
    input reset, 
    input J,
    input K,
    input E,
    output Q,
    output NotQ
    );
    
   wire InputD;
    
    assign InputD = (J & NotQ) | (~K & Q);

    D_FlipFlop D_FlipFlop_inst(
        .reset(reset),
        .D(InputD),
        .E(E),
        .Q(Q),
        .NotQ(NotQ)
    );
    
endmodule
