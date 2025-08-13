`timescale 1ns/1ns
`include "XorGate.v"

module XorGate_tb;

reg A;
reg B;
wire Y;

XorGate uut(
    .A(A),
    .B(B),
    .Y(Y)
);

initial begin
    $dumpfile("XorGate_tb.vcd");
    $dumpvars(0,XorGate_tb);

    A=0;
    B=0;
    #20;

    A=0;
    B=1;
    #20;

    A=1;
    B=0;
    #20;

    A=1;
    B=1;
    #20;

    $display("Test Complete!");
    $finish;
end
endmodule