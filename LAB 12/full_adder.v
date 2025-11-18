// Implement module called full_adder
module full_adder(
    input A,B,C,
    output Cout,Sum
);

assign Cout = (A&B)|(B&C)|(A&C);
assign Sum = A^B^C;

endmodule 
