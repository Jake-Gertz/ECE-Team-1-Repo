module ternary_4_mux_4_bits(
    input [3:0] CEO, [3:0] YOU, [3:0] FRED, [3:0] JILL, [1:0]SEL,
    output [3:0] Y  
    );
    
    assign Y = SEL == 'b00 ?  CEO :
               SEL == 'b01 ? YOU :
               SEL == 'b10 ? FRED : JILL;
endmodule
