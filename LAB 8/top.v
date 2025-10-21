module top(
    input [15:0] sw,
    input btnL,
    input btnU,
    input btnD,
    input btnR, 
    input btnC,
    output [15:0] led
);
    wire [3:0] mux_out;

    ternary_4_mux_4_bits mux_inst(
        .CEO(sw[3:0]),
        .YOU(sw[7:4]),
        .FRED(sw[11:8]),
        .Y(mux_out),
        .JILL(sw[15:12]),
        .SEL({btnU, btnL})
    );
    
    ternary_4_demux_4_bits demux_inst(
        .data(mux_out),
        .SEL({btnR, btnD}),
        .LIBRARY(led[3:0]),
        .FIRE(led[7:4]),
        .SCHOOL(led[11:8]),
        .RIB(led[15:12])
    );
    
endmodule
  
