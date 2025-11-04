module T_FlipFlop(
    input T,
    input E,
    output Q,
    output NotQ
    );
    
    
    JK_FlipFlop JK_FlipFlop_inst (
           .J(T),
           .K(T),
           .E(E),
           .Q(Q),
           .NotQ(NotQ)
    );
endmodule
