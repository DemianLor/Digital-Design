module MEMORY #(parameter DATA_W = 64,parameter ADD_S = 5) 
(
  input wire [DATA_W-1:0] data_in,
  input wire [ADD_S-1:0]  add,
  input wire wr, rst, clk,
  output reg [DATA_W-1:0] data_out
);

//localparam <-"ROM"

reg [DATA_W-1:0] mem [ADD_S-1:0];

always @(posedge clk)
begin
  if(rst)
  begin
    data_out <= 'h0000_0000_0000_0000;
  end
  else
  begin
    if(wr)
      mem[add] <= data_in;
    else
      data_out <= mem[add];
  end
end


endmodule
