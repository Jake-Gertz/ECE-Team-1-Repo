module top(
        input [3:0]sw,
        input btnC,
        output [5:0]led
    );
    
    D_FlipFlop D_FlipFlop_inst(
        .D(sw[0]),
        .E(btnC),
        .Q(led[0]),
        .NotQ(led[1])
    );
    
    JK_FlipFlop JK_FlipFlop_inst(
        .J(sw[1]),
        .K(sw[2]),
        .E(btnC),
        .Q(led[2]),
        .NotQ(led[3])
    );
    
    T_FlipFlop T_FlipFlop_inst(
        .T(sw[3]),
        .E(btnC),
        .Q(led[4]),
        .NotQ(led[5])
    );
    
endmodule
