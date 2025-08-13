`include "fullAdder.v"

module binAdder4bit(    //4 bit Ripple carry adder
    input wire [3:0] inBit1,
    input wire [3:0] inBit2,
    input wire Cin,
    output wire [3:0] outBit,
    output wire Cout
);

wire Cout1;
wire Cout2;
wire Cout3;

fullAdder f0 (
    .A(inBit1[0]),
    .B(inBit2[0]),
    .Cin(Cin),
    .Y(outBit[0]),
    .Cout(Cout1)
);
fullAdder f1 (
    .A(inBit1[1]),
    .B(inBit2[1]),
    .Cin(Cout1),
    .Y(outBit[1]),
    .Cout(Cout2)
);
fullAdder f2 (
    .A(inBit1[2]),
    .B(inBit2[2]),
    .Cin(Cout2),
    .Y(outBit[2]),
    .Cout(Cout3)
);
fullAdder f3 (
    .A(inBit1[3]),
    .B(inBit2[3]),
    .Cin(Cout3),
    .Y(outBit[3]),
    .Cout(Cout)
);

endmodule