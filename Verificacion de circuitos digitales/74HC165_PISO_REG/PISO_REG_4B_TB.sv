`timescale 1ns/1ps


module PISO_REG_4B_TB();

reg LOAD, clk_tb, clken_tb;
reg[7:0] D_in;
reg Q,QNEG,SER;


PISO_REG_4B duv
(
  .clk(clk_tb),
  .clken(clken_tb),
  .SER(SER),
  .D_in(D_in),
  .LOAD(LOAD),
  .Q(Q),
  .QNEG(QNEG)
);



initial
begin
  clk_tb = 1'b0;
  clken_tb = 1'b1;
  LOAD = 1'b1;
  SER=1'b0;
  @(posedge clk_tb);  
  D_in = 8'hAB;
  LOAD = 1'b0;
  @(posedge clk_tb);
  @(posedge clk_tb);
  LOAD = 1'b1;
  @(posedge clk_tb);
  clken_tb = 1'b0;
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  //clken_tb = 1'b1;
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  D_in = 8'h97;
  LOAD = 1'b0;
  @(posedge clk_tb);
  @(posedge clk_tb);
  LOAD = 1'b1;
  @(posedge clk_tb);
  clken_tb = 1'b0;
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  D_in = 8'h66;
  LOAD = 1'b0;
  @(posedge clk_tb);
  @(posedge clk_tb);
  LOAD = 1'b1;
  @(posedge clk_tb);
  clken_tb = 1'b0;
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  clken_tb = 1'b1;
  @(posedge clk_tb);
  clken_tb = 1'b0;
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  SER = 1'b1;
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  #100
  $stop;
end

always
  #10 clk_tb = !clk_tb;




endmodule
