module D_Latch(
    input D,
    input E, 
    output reg Q,
    output NotQ
    );
    
    always @(D, E) begin
        if(E)
            Q <= D;
        else
            Q <= Q;
    end 
    
    assign NotQ = ~Q;
     
endmodule
