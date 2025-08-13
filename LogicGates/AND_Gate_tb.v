`timescale 1ns / 1ns
`include "AND_Gate.v"

module AND_Gate_tb;

reg A;
reg B;

wire Y;

AND_Gate uut(
    .A(A),
    .B(B),
    .Y(Y)
    );

initial begin
    $dumpfile("AND_Gate_tb.vcd");
    $dumpvars(0,AND_Gate_tb);

    A= 0; 
    B=0;
    #20;

    A= 0; 
    B=1;
    #20;

    A= 1; 
    B=0;
    #20;

    A= 1; 
    B=1;
    #20;

    $display("Test Complete!");
    $finish;
end

endmodule






