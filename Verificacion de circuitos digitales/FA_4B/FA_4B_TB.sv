`timescale 1ns/1ps

module FA_4B_TB();

reg[3:0] A, B;
wire[3:0] S;
wire Cout;
wire Cin = 1'b0;

FA_4B duv
(
	.A(A),
	.B(B),

	.S(S),
	.Cin(Cin),
	.Cout(Cout)
);

initial
begin

	A = 4'h0; B = 4'h0; #100;
	A = 4'h0; B = 4'h1; #100;
	A = 4'h0; B = 4'h2; #100;
	A = 4'h0; B = 4'h3; #100;
	A = 4'h0; B = 4'h4; #100;
	A = 4'h0; B = 4'h5; #100;
	A = 4'h0; B = 4'h6; #100;
	A = 4'h0; B = 4'h7; #100;
	A = 4'h0; B = 4'h8; #100;
	A = 4'h0; B = 4'h9; #100;
	A = 4'h0; B = 4'hA; #100;
	A = 4'h0; B = 4'hB; #100;
	A = 4'h0; B = 4'hC; #100;
	A = 4'h0; B = 4'hD; #100;
	A = 4'h0; B = 4'hE; #100;
	A = 4'h0; B = 4'hF; #100;
	
	A = 4'h1; B = 4'h0; #100;
	A = 4'h1; B = 4'h1; #100;
	A = 4'h1; B = 4'h2; #100;
	A = 4'h1; B = 4'h3; #100;
	A = 4'h1; B = 4'h4; #100;
	A = 4'h1; B = 4'h5; #100;
	A = 4'h1; B = 4'h6; #100;
	A = 4'h1; B = 4'h7; #100;
	A = 4'h1; B = 4'h8; #100;
	A = 4'h1; B = 4'h9; #100;
	A = 4'h1; B = 4'hA; #100;
	A = 4'h1; B = 4'hB; #100;
	A = 4'h1; B = 4'hC; #100;
	A = 4'h1; B = 4'hD; #100;
	A = 4'h1; B = 4'hE; #100;
	A = 4'h1; B = 4'hF; #100;
	
	A = 4'h2; B = 4'h0; #100;
	A = 4'h2; B = 4'h1; #100;
	A = 4'h2; B = 4'h2; #100;
	A = 4'h2; B = 4'h3; #100;
	A = 4'h2; B = 4'h4; #100;
	A = 4'h2; B = 4'h5; #100;
	A = 4'h2; B = 4'h6; #100;
	A = 4'h2; B = 4'h7; #100;
	A = 4'h2; B = 4'h8; #100;
	A = 4'h2; B = 4'h9; #100;
	A = 4'h2; B = 4'hA; #100;
	A = 4'h2; B = 4'hB; #100;
	A = 4'h2; B = 4'hC; #100;
	A = 4'h2; B = 4'hD; #100;
	A = 4'h2; B = 4'hE; #100;
	A = 4'h2; B = 4'hF; #100;
	
	A = 4'h3; B = 4'h0; #100;
	A = 4'h3; B = 4'h1; #100;
	A = 4'h3; B = 4'h2; #100;
	A = 4'h3; B = 4'h3; #100;
	A = 4'h3; B = 4'h4; #100;
	A = 4'h3; B = 4'h5; #100;
	A = 4'h3; B = 4'h6; #100;
	A = 4'h3; B = 4'h7; #100;
	A = 4'h3; B = 4'h8; #100;
	A = 4'h3; B = 4'h9; #100;
	A = 4'h3; B = 4'hA; #100;
	A = 4'h3; B = 4'hB; #100;
	A = 4'h3; B = 4'hC; #100;
	A = 4'h3; B = 4'hD; #100;
	A = 4'h3; B = 4'hE; #100;
	A = 4'h3; B = 4'hF; #100;
	
	A = 4'h4; B = 4'h0; #100;
	A = 4'h4; B = 4'h1; #100;
	A = 4'h4; B = 4'h2; #100;
	A = 4'h4; B = 4'h3; #100;
	A = 4'h4; B = 4'h4; #100;
	A = 4'h4; B = 4'h5; #100;
	A = 4'h4; B = 4'h6; #100;
	A = 4'h4; B = 4'h7; #100;
	A = 4'h4; B = 4'h8; #100;
	A = 4'h4; B = 4'h9; #100;
	A = 4'h4; B = 4'hA; #100;
	A = 4'h4; B = 4'hB; #100;
	A = 4'h4; B = 4'hC; #100;
	A = 4'h4; B = 4'hD; #100;
	A = 4'h4; B = 4'hE; #100;
	A = 4'h4; B = 4'hF; #100;
	
	A = 4'h5; B = 4'h0; #100;
	A = 4'h5; B = 4'h1; #100;
	A = 4'h5; B = 4'h2; #100;
	A = 4'h5; B = 4'h3; #100;
	A = 4'h5; B = 4'h4; #100;
	A = 4'h5; B = 4'h5; #100;
	A = 4'h5; B = 4'h6; #100;
	A = 4'h5; B = 4'h7; #100;
	A = 4'h5; B = 4'h8; #100;
	A = 4'h5; B = 4'h9; #100;
	A = 4'h5; B = 4'hA; #100;
	A = 4'h5; B = 4'hB; #100;
	A = 4'h5; B = 4'hC; #100;
	A = 4'h5; B = 4'hD; #100;
	A = 4'h5; B = 4'hE; #100;
	A = 4'h5; B = 4'hF; #100;
	
	A = 4'h6; B = 4'h0; #100;
	A = 4'h6; B = 4'h1; #100;
	A = 4'h6; B = 4'h2; #100;
	A = 4'h6; B = 4'h3; #100;
	A = 4'h6; B = 4'h4; #100;
	A = 4'h6; B = 4'h5; #100;
	A = 4'h6; B = 4'h6; #100;
	A = 4'h6; B = 4'h7; #100;
	A = 4'h6; B = 4'h8; #100;
	A = 4'h6; B = 4'h9; #100;
	A = 4'h6; B = 4'hA; #100;
	A = 4'h6; B = 4'hB; #100;
	A = 4'h6; B = 4'hC; #100;
	A = 4'h6; B = 4'hD; #100;
	A = 4'h6; B = 4'hE; #100;
	A = 4'h6; B = 4'hF; #100;
	
	A = 4'h7; B = 4'h0; #100;
	A = 4'h7; B = 4'h1; #100;
	A = 4'h7; B = 4'h2; #100;
	A = 4'h7; B = 4'h3; #100;
	A = 4'h7; B = 4'h4; #100;
	A = 4'h7; B = 4'h5; #100;
	A = 4'h7; B = 4'h6; #100;
	A = 4'h7; B = 4'h7; #100;
	A = 4'h7; B = 4'h8; #100;
	A = 4'h7; B = 4'h9; #100;
	A = 4'h7; B = 4'hA; #100;
	A = 4'h7; B = 4'hB; #100;
	A = 4'h7; B = 4'hC; #100;
	A = 4'h7; B = 4'hD; #100;
	A = 4'h7; B = 4'hE; #100;
	A = 4'h7; B = 4'hF; #100;
	
	A = 4'h8; B = 4'h0; #100;
	A = 4'h8; B = 4'h1; #100;
	A = 4'h8; B = 4'h2; #100;
	A = 4'h8; B = 4'h3; #100;
	A = 4'h8; B = 4'h4; #100;
	A = 4'h8; B = 4'h5; #100;
	A = 4'h8; B = 4'h6; #100;
	A = 4'h8; B = 4'h7; #100;
	A = 4'h8; B = 4'h8; #100;
	A = 4'h8; B = 4'h9; #100;
	A = 4'h8; B = 4'hA; #100;
	A = 4'h8; B = 4'hB; #100;
	A = 4'h8; B = 4'hC; #100;
	A = 4'h8; B = 4'hD; #100;
	A = 4'h8; B = 4'hE; #100;
	A = 4'h8; B = 4'hF; #100;
	
	A = 4'h9; B = 4'h0; #100;
	A = 4'h9; B = 4'h1; #100;
	A = 4'h9; B = 4'h2; #100;
	A = 4'h9; B = 4'h3; #100;
	A = 4'h9; B = 4'h4; #100;
	A = 4'h9; B = 4'h5; #100;
	A = 4'h9; B = 4'h6; #100;
	A = 4'h9; B = 4'h7; #100;
	A = 4'h9; B = 4'h8; #100;
	A = 4'h9; B = 4'h9; #100;
	A = 4'h9; B = 4'hA; #100;
	A = 4'h9; B = 4'hB; #100;
	A = 4'h9; B = 4'hC; #100;
	A = 4'h9; B = 4'hD; #100;
	A = 4'h9; B = 4'hE; #100;
	A = 4'h9; B = 4'hF; #100;
	
	A = 4'hA; B = 4'h0; #100;
	A = 4'hA; B = 4'h1; #100;
	A = 4'hA; B = 4'h2; #100;
	A = 4'hA; B = 4'h3; #100;
	A = 4'hA; B = 4'h4; #100;
	A = 4'hA; B = 4'h5; #100;
	A = 4'hA; B = 4'h6; #100;
	A = 4'hA; B = 4'h7; #100;
	A = 4'hA; B = 4'h8; #100;
	A = 4'hA; B = 4'h9; #100;
	A = 4'hA; B = 4'hA; #100;
	A = 4'hA; B = 4'hB; #100;
	A = 4'hA; B = 4'hC; #100;
	A = 4'hA; B = 4'hD; #100;
	A = 4'hA; B = 4'hE; #100;
	A = 4'hA; B = 4'hF; #100;
	
	A = 4'hB; B = 4'h0; #100;
	A = 4'hB; B = 4'h1; #100;
	A = 4'hB; B = 4'h2; #100;
	A = 4'hB; B = 4'h3; #100;
	A = 4'hB; B = 4'h4; #100;
	A = 4'hB; B = 4'h5; #100;
	A = 4'hB; B = 4'h6; #100;
	A = 4'hB; B = 4'h7; #100;
	A = 4'hB; B = 4'h8; #100;
	A = 4'hB; B = 4'h9; #100;
	A = 4'hB; B = 4'hA; #100;
	A = 4'hB; B = 4'hB; #100;
	A = 4'hB; B = 4'hC; #100;
	A = 4'hB; B = 4'hD; #100;
	A = 4'hB; B = 4'hE; #100;
	A = 4'hB; B = 4'hF; #100;
	
	A = 4'hC; B = 4'h0; #100;
	A = 4'hC; B = 4'h1; #100;
	A = 4'hC; B = 4'h2; #100;
	A = 4'hC; B = 4'h3; #100;
	A = 4'hC; B = 4'h4; #100;
	A = 4'hC; B = 4'h5; #100;
	A = 4'hC; B = 4'h6; #100;
	A = 4'hC; B = 4'h7; #100;
	A = 4'hC; B = 4'h8; #100;
	A = 4'hC; B = 4'h9; #100;
	A = 4'hC; B = 4'hA; #100;
	A = 4'hC; B = 4'hB; #100;
	A = 4'hC; B = 4'hC; #100;
	A = 4'hC; B = 4'hD; #100;
	A = 4'hC; B = 4'hE; #100;
	A = 4'hC; B = 4'hF; #100;
	
	A = 4'hD; B = 4'h0; #100;
	A = 4'hD; B = 4'h1; #100;
	A = 4'hD; B = 4'h2; #100;
	A = 4'hD; B = 4'h3; #100;
	A = 4'hD; B = 4'h4; #100;
	A = 4'hD; B = 4'h5; #100;
	A = 4'hD; B = 4'h6; #100;
	A = 4'hD; B = 4'h7; #100;
	A = 4'hD; B = 4'h8; #100;
	A = 4'hD; B = 4'h9; #100;
	A = 4'hD; B = 4'hA; #100;
	A = 4'hD; B = 4'hB; #100;
	A = 4'hD; B = 4'hC; #100;
	A = 4'hD; B = 4'hD; #100;
	A = 4'hD; B = 4'hE; #100;
	A = 4'hD; B = 4'hF; #100;
	
	A = 4'hE; B = 4'h0; #100;
	A = 4'hE; B = 4'h1; #100;
	A = 4'hE; B = 4'h2; #100;
	A = 4'hE; B = 4'h3; #100;
	A = 4'hE; B = 4'h4; #100;
	A = 4'hE; B = 4'h5; #100;
	A = 4'hE; B = 4'h6; #100;
	A = 4'hE; B = 4'h7; #100;
	A = 4'hE; B = 4'h8; #100;
	A = 4'hE; B = 4'h9; #100;
	A = 4'hE; B = 4'hA; #100;
	A = 4'hE; B = 4'hB; #100;
	A = 4'hE; B = 4'hC; #100;
	A = 4'hE; B = 4'hD; #100;
	A = 4'hE; B = 4'hE; #100;
	A = 4'hE; B = 4'hF; #100;
	
	A = 4'hF; B = 4'h0; #100;
	A = 4'hF; B = 4'h1; #100;
	A = 4'hF; B = 4'h2; #100;
	A = 4'hF; B = 4'h3; #100;
	A = 4'hF; B = 4'h4; #100;
	A = 4'hF; B = 4'h5; #100;
	A = 4'hF; B = 4'h6; #100;
	A = 4'hF; B = 4'h7; #100;
	A = 4'hF; B = 4'h8; #100;
	A = 4'hF; B = 4'h9; #100;
	A = 4'hF; B = 4'hA; #100;
	A = 4'hF; B = 4'hB; #100;
	A = 4'hF; B = 4'hC; #100;
	A = 4'hF; B = 4'hD; #100;
	A = 4'hF; B = 4'hE; #100;
	A = 4'hF; B = 4'hF; #100;
	

	$stop;
end


endmodule 