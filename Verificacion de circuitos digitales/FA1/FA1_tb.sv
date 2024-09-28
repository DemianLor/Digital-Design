`timescale 1ns/1ps

module FA1_tb;

reg A;
reg B;
reg Cin;

reg clk_tb;


wire S;
wire Cout;

FA1 duv
(
	.A(A),
	.B(B),
	.Cin(Cin),
	.S(S),
	.Cout(Cout)
);

initial
begin
	clk_tb = 1'b0;
	A = 1'b0;
	B = 1'b0;
	Cin = 1'b0;
	#100;
	A = 1'b1;
	B = 1'b0;
	Cin = 1'b0;
	#100;
	A = 1'b0;
	B = 1'b1;
	Cin = 1'b0;
	#100;
	A = 1'b1;
	B = 1'b1;
	Cin = 1'b0;
	#100;
	A = 1'b0;
	B = 1'b0;
	Cin = 1'b1;
	#100;
	A = 1'b1;
	B = 1'b0;
	Cin = 1'b1;
	#100;
	A = 1'b0;
	B = 1'b1;
	Cin = 1'b1;
	#100;
	A = 1'b1;
	B = 1'b1;
	Cin = 1'b1;
	#100;

	$stop;
end


always
	#10 clk_tb = !clk_tb;

endmodule
