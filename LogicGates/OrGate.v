module OrGate(
    A,
    B,
    Y
);

input A;
input B;

output Y;

assign Y = A || B;

endmodule