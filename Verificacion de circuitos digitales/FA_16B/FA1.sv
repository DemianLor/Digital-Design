module FA1
(
    input wire A,B,Cin,
    output wire S, Cout
);

assign {Cout, S} = A + B + Cin;

endmodule




