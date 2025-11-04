module D_FlipFlop(
    input D,
    input E, 
    output reg Q,
    output NotQ
    );
    
    initial begin
        Q <= 0;
     end
     
    always @(posedge E) begin
        if(E)
            Q <= D;
    end 
    
    assign NotQ = ~Q;
endmodule
