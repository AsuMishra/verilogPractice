module halfAdder(
    A,
    B,
    Y,
    Cout
);

input A;
input B;
output Y;
output Cout;

assign Y = A^B;
assign Cout = A && B;

endmodule