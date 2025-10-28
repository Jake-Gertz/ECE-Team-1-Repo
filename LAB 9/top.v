module top(
        input [15:0]sw,
        input btnC,
        output [15:0]led
    );
    
    D_Latch D_Latch_inst(
        .D(sw[0]),
        .E(btnC),
        .Q(led[0]),
        .NotQ(led[1])
    );
    
    Storage Storage_inst(
        .Select(sw[7:6]),
        .D(sw[15:8]),
        .E(btnC),
        .Q(led[15:8])
    );
    
endmodule
