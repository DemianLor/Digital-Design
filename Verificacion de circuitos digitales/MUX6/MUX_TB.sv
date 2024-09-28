`timescale 1ns/1ps


module MUX6_TB();

reg [7:0] E1,E2,E3,E4,E5,E6;
reg [2:0] sel;
reg [7:0] salida;


MUX6 dub
(
	.E1(E1),
	.E2(E2),
	.E3(E3),
	.E4(E4),
	.E5(E5),
	.E6(E6),
	.sel(sel),
	.salida(salida)
);

initial
	begin
		sel = 0'b000;
		E1 = 8'hE1;
		E2 = 8'hE2;
		E3 = 8'hE3;
		E4 = 8'hE4;
		E5 = 8'hE5;
		E6 = 8'hE6;
		#100;
		E1 = 8'hEA;
		#100;
		sel = 0'b001;
		#100;
		E2 = 8'hEB;
		#100;
		sel = 0'b010;
		#100;
		E3 = 8'hEC;
		#100;
		sel = 0'b011;
		#100;
		E4 = 8'hED;
		#100;
		sel = 0'b100;
		#100;
		E5 = 8'hEE;
		#100;
		sel = 0'b101;
		#100;
		E6 = 8'hEF;
		#100;
		sel = 0'b110;
		#100;
		sel = 0'b111;
		#100;
		$stop;
	end


endmodule