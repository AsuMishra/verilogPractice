`timescale 1ns/1ns
`include "binAdder4bit.v"

module binAdder4bitTB;

parameter DELAY =20;

reg [3:0] inBit1;
reg [3:0] inBit2;
reg Cin;

wire [3:0] outBit;
wire Cout;

binAdder4bit uut (
    .inBit1(inBit1),
    .inBit2(inBit2),
    .Cin(Cin),
    .outBit(outBit),
    .Cout(Cout)
);

initial begin
    $dumpfile("binAdder4bitTB.vcd");
    $dumpvars(0,binAdder4bitTB);

    //test case 1 : simple addition
    inBit1 = 4'b0011;
    inBit2 = 4'b0001;
    Cin = 1'b0;
    #DELAY;

    //test case 2: overflow case
    inBit1 = 4'b1111;
    inBit2 = 4'b0001;
    Cin = 1'b0;
    #DELAY;

    //test case 3 :  max addition
    inBit1 = 4'b1111;
    inBit2 = 4'b1111;
    Cin = 1'b1;
    #DELAY;


    $display("Test Complete!");
    $finish;
end

endmodule