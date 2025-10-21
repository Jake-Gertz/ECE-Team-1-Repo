module ternary_4_demux_4_bits(
    input [3:0] data, [1:0]SEL,
    output [3:0] LIBRARY, [3:0] FIRE, [3:0] SCHOOL, [3:0] RIB  
    );
    
    assign LIBRARY = (SEL == 'b00 ? data : 'b0000);
    assign FIRE = (SEL == 'b01 ? data : 'b0000);
    assign SCHOOL = (SEL == 'b10 ? data: 'b0000);
    assign RIB = (SEL == 'b11 ? data: 'b0000);
    
endmodule
