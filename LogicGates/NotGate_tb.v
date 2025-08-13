`timescale 1ns/1ns
`include "NotGate.v"

module NotGate_tb;

reg A;
wire Y;

NotGate uut(
    .A(A),
    .Y(Y)
);

initial begin
    $dumpfile("NotGate_tb.vcd");
    $dumpvars(0,NotGate_tb);

    A= 0;
    #20;

    A=1;
    #20;


    $display("Test Complete!");
    $finish;
end
endmodule
