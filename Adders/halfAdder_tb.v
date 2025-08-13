`timescale 1ns/1ns
`include "halfAdder.v"

module halfAdder_tb;

reg A;
reg B;
wire Y;
wire Cout;

halfAdder uut(
    .A(A),
    .B(B),
    .Y(Y),
    .Cout(Cout)
    );

initial begin
    $dumpfile("halfAdder.vcd");
    $dumpvars(0,halfAdder_tb);

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

