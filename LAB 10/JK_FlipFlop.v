module JK_FlipFlop(
    input J,
    input K,
    input E,
    output Q,
    output NotQ
    );
    
   wire InputD;
    
    assign InputD = (J & NotQ) | (~K & Q);

    D_FlipFlop D_FlipFlop_inst(
        .D(InputD),
        .E(E),
        .Q(Q),
        .NotQ(NotQ)
    );
    
endmodule
