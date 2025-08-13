`timescale 1ns/1ns
`include "fullAdder.v"

module fullAdder_tb;

reg A;
reg B;
reg Cin;
wire Y;
wire Cout;

fullAdder uut(
    .A(A),
    .B(B),
    .Cin(Cin),
    .Y(Y),
    .Cout(Cout)
);

initial begin 
    $dumpfile("fullAdder.vcd");
    $dumpvars(0,fullAdder_tb); 

    A=0;
    B=0;
    Cin=0;
    #20;

    A=0;
    B=1;
    Cin=0;
    #20;

    A=1;
    B=0;
    Cin=0;
    #20;

    A=1;
    B=1;
    Cin=0;
    #20;

    A=0;
    B=0;
    Cin=1;
    #20;

    A=0;
    B=1;
    Cin=1;
    #20;

    A=1;
    B=0;
    Cin=1;
    #20;

    A=1;
    B=1;
    Cin=1;
    #20;    

    $display("Test Complete!");
    $finish;

end
endmodule

