module Storage(
        input [1:0]Select,
        input [7:0] D, 
        input E, 
        output [7:0] Q
    );
    
    reg [7:0] arr_Q[3:0];
    
    wire [7:0] arr_Output[3:0];
    
    reg arr_E[3:0];
    
    assign Q = arr_Output[Select];
    
    EBDL EBDL_1(
        .D(arr_Q[0]),
        .E(arr_E[0]),
        .Q(arr_Output[0])  
    );
    
    EBDL EBDL_2(
        .D(arr_Q[1]),
        .E(arr_E[1]),
        .Q(arr_Output[1])  
    );
    
    EBDL EBDL_3(
        .D(arr_Q[2]),
        .E(arr_E[2]),
        .Q(arr_Output[2])
    );
    
    EBDL EBDL_4(
        .D(arr_Q[3]),
        .E(arr_E[3]),
        .Q(arr_Output[3])
    );
    
    
    always @(*) begin
        case(Select)
            2'b00: {arr_Q[0], arr_Q[1], arr_Q[2], arr_Q[3]} <= {D, 8'b0, 8'b0, 8'b0};
            2'b01: {arr_Q[0], arr_Q[1], arr_Q[2], arr_Q[3]} <= {8'b0, D, 8'b0, 8'b0};
            2'b10: {arr_Q[0], arr_Q[1], arr_Q[2], arr_Q[3]} <= {8'b0, 8'b0, D, 8'b0};
            2'b11: {arr_Q[0], arr_Q[1], arr_Q[2], arr_Q[3]} <= {8'b0, 8'b0, 8'b0, D};
        endcase
        
        case(Select)
            2'b00: {arr_E[0], arr_E[1], arr_E[2], arr_E[3]} <= {E, 1'b0, 1'b0, 1'b0};
            2'b01: {arr_E[0], arr_E[1], arr_E[2], arr_E[3]} <= {1'b0, E, 1'b0, 1'b0};
            2'b10: {arr_E[0], arr_E[1], arr_E[2], arr_E[3]} <= {1'b0, 1'b0, E, 1'b0};
            2'b11: {arr_E[0], arr_E[1], arr_E[2], arr_E[3]} <= {1'b0, 1'b0, 1'b0, E};
        endcase
    end 
    
    
endmodule

module EBDL(
    input [7:0] D, 
    input E, 
    output reg [7:0] Q
);

always @(D, E) begin
        if(E)
            Q <= D;
        else 
            Q <= Q;     
    end 

endmodule