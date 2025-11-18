module RippleCounter(
    input btnU, btnC,
    output [2:0] Q
    );
    
    T_FlipFlop T_FlipFlop1(
        .reset(btnU),
        .T(1),
        .E(btnC),
        .Q(Q[0])
    );
    
    T_FlipFlop T_FlipFlop2(
        .reset(btnU),
        .T(T_FlipFlop1.Q),
        .E(btnC),
        .Q(Q[1])
    );
    
    T_FlipFlop T_FlipFlop3(
        .reset(btnU),
        .T(T_FlipFlop2.Q & T_FlipFlop1.Q),
        .E(btnC),
        .Q(Q[2])
    );
    
    
endmodule

