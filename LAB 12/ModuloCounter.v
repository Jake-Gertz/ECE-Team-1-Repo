module ModuloCounter(
    input btnU, btnC,
    output [3:0] Q
    );
    
    wire resetTrigger;
    
    D_FlipFlop DFlipFlop1(
        .reset(btnU | resetTrigger),
        .D(FullAdder1.Sum),
        .E(btnC),
        .Q(Q[0])
    );
    
    D_FlipFlop DFlipFlop2(
        .reset(btnU | resetTrigger),
        .D(FullAdder2.Sum),
        .E(btnC),
        .Q(Q[1])
    );
    
    D_FlipFlop DFlipFlop3(
        .reset(btnU | resetTrigger),
        .D(FullAdder3.Sum),
        .E(btnC),
        .Q(Q[2])
    );
    
    full_adder FullAdder1 (
        .A(DFlipFlop1.Q),
        .B(btnC),
        .C(1'b0)
    );
    
    full_adder FullAdder2 (
        .A(DFlipFlop2.Q),
        .B(1'b0),
        .C(FullAdder1.Cout)
    );
    
    full_adder FullAdder3 (
        .A(DFlipFlop3.Q),
        .B(1'b0),
        .C(FullAdder2.Cout)
    );
    
    assign resetTrigger = (DFlipFlop3.Q & DFlipFlop2.Q & ~DFlipFlop1.Q);
    assign Q[3] = resetTrigger;
  
    
endmodule
