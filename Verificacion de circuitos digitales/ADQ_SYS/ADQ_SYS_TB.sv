`timescale 1ns/1ps

module ADQ_SYS_TB#(parameter DATA_W = 32,parameter ADD_S = 8); 
reg clk_tb, rst, eoc, init, fac;
wire SC,CS,W,CC,RC,ACK;
reg[7:0] i, count;
reg[8:0] j;

reg [DATA_W-1:0] data_in;
wire [DATA_W-1:0] data_out;
/*
           STATES?
| ACK | W|CS | SC | CC|RC |?
| ACK | MEM  | ADC| COUNT |
*/
ADQ_SYS dut
(
  .present_state({ACK, W, CS, SC, CC, RC}),

  .clk(clk_tb),
  .rst(rst),
  .eoc(eoc),
  .init(init),
  .fac(fac)

);

Counter_8B Count
( 
  .clk(CC),
  .rst(RC),
  .COUNT(count),
  .fac(fac)
);

MEMORY mem
(
  .data_in(data_in),
  .add(count),
  .wr(W),
  .rst(rst),
  .clk(clk_tb),
  .data_out(data_out)
);

initial
begin
  clk_tb = 'b0;
  rst = 1'b1;
  init = 0;
  eoc=0;
  @(posedge clk_tb);
  init = 1;
  rst  = 0;
  @(posedge clk_tb);
  init = 0;
  for(j=0;j<257;j=j+1)
  begin
    for(i=0;i<12;i=i+1)
    begin
      @(posedge clk_tb);
    end
    eoc = 1;
    @(posedge clk_tb);
    eoc = 0;
    data_in = 'hFFFFFFFF - j;
    @(posedge clk_tb);
  end  
  rst=1;
  @(posedge clk_tb);
  init = 1;
  rst  = 0;
  @(posedge clk_tb);
  init = 0;
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  #300
  $stop;


end

always
  #10 clk_tb = !clk_tb;

endmodule