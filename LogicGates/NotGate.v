module NotGate (
    A,
    Y
);

input A;
output Y;

assign Y = ~A;

endmodule