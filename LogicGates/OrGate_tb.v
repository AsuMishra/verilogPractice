`timescale 1ns/1ns
`include "OrGate.v"

module OrGate_tb;

reg A;
reg B;
wire Y;

OrGate uut(
    .A(A),
    .B(B),
    .Y(Y)
);

initial begin
    $dumpfile("OrGate_tb.vcd");
    $dumpvars(0,OrGate_tb);

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
