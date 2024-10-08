module MEMORY #(parameter DATA_W = 32,parameter ADD_S = 8) 
(
  input wire [DATA_W-1:0] data_in,
  input wire [ADD_S-1:0]  add,
  input wire wr, rst, clk,en,
  output reg [DATA_W-1:0] data_out
);

//localparam <-"ROM"

reg [DATA_W-1:0] mem [0:2**ADD_S-1];

always @(posedge clk or rst)
begin
  if(rst)
  begin
    data_out <= 'h0000_0000;
  end
  else if(en)
  begin
    if(wr)
      mem[add] <= data_in;
    else
      data_out <= mem[add];
  end
end


endmodule
