module twos_compliment (
    input [7:0] A,
    output [7:0] Y
);

    wire[6:0] carry;

full_adder B0(
    .A(!A[0]),
    .B(1'b0),
    .Y(Y[0]),
    .Cin(1'b1),
    .Cout(carry[0])
);

full_adder B1(
    .A(!A[1]),
    .B(1'b0),
    .Y(Y[1]),
    .Cin(carry[0]),
    .Cout(carry[1])
);

full_adder B2(
    .A(!A[2]),
    .B(1'b0),
    .Y(Y[2]),
    .Cin(carry[1]),
    .Cout(carry[2])
);

full_adder B3(
    .A(!A[3]),
    .B(1'b0),
    .Y(Y[3]),
    .Cin(carry[2]),
    .Cout(carry[3])
);

full_adder B4(
    .A(!A[4]),
    .B(1'b0),
    .Y(Y[4]),
    .Cin(carry[3]),
    .Cout(carry[4])
);

full_adder B5(
    .A(!A[5]),
    .B(1'b0),
    .Y(Y[5]),
    .Cin(carry[4]),
    .Cout(carry[5])
);

full_adder B6(
    .A(!A[6]),
    .B(1'b0),
    .Y(Y[6]),
    .Cin(carry[5]),
    .Cout(carry[6])
);

full_adder B7(
    .A(!A[7]),
    .B(1'b0),
    .Y(Y[7]),
    .Cin(carry[6])
);

endmodule