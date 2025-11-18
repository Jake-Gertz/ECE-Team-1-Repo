module top (
    input btnC, btnU,
    output [6:0] led
);

RippleCounter RippleCounter(
    .btnC(btnC),
    .btnU(btnU),
    .Q(led[2:0])
);

ModuloCounter ModuloCounter (
    .btnC(btnC),
    .btnU(btnU),
    .Q(led[6:3])
);

endmodule 
