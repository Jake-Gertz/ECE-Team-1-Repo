module D_FlipFlop(
    input reset,
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
        if(reset)
            Q <= 1'b0;
    end 
    
    assign NotQ = ~Q;
endmodule
