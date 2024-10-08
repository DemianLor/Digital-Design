`timescale 1ns/1ps


module FA_8B
(
	input wire [7:0]A, B,
	input wire Cin,
	output wire [7:0]S,
	output wire Cout
);

wire carry;

FA_4B LSB
(
	.A(A[3:0]),
	.B(B[3:0]),
	.S(S[3:0]),

	.Cin(Cin),
	.Cout(carry)
);

FA_4B MSB
(
	.A(A[7:4]),
	.B(B[7:4]),
	.S(S[7:4]),

	.Cin(carry),
	.Cout(Cout)
);





endmodule
