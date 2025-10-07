module full_adder(
    input A,B,Cin,
    output Cout,Y
);

assign Cout = (A&B)|(B&Cin)|(A&Cin);
assign Y = A^B^Cin;

endmodule 