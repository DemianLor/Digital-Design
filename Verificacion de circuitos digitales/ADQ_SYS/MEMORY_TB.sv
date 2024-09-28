`timescale 1ns/1ps

module MEMORY_TB #(parameter DATA_W = 64,parameter ADD_S = 5); 
reg [DATA_W-1:0] data_in;
reg [ADD_S-1:0]  add;
reg wr, rst, clk;
wire [DATA_W-1:0] data_out;


MEMORY dut
(
  .data_in(data_in),
  .add(add),
  .wr(wr),
  .rst(rst),
  .clk(clk),
  .data_out(data_out)

);

initial
begin
  clk = 'b0;
  data_in = 'h0000_FFFF_FFFF_0000;
  add = 'h00;
  wr = 'b1;
  rst = 1'b1;
  @(posedge clk);
  rst = 'b0;
  @(posedge clk);
  wr = 'b0;
  @(posedge clk);
  add = 'h02;
  data_in = 'h5555_FFFF_0000_2222;
  wr = 'b1;
  #300
  $stop;


end

always
  #10 clk = !clk;

endmodule
