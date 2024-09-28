module PISO_REG_4B(
  input reg[3:0] D_in,
  input reg LOAD,
  input reg clk,
  output reg serial_out
);

reg [3:0] D;

always@(posedge clk)
begin
  if (!LOAD) 
  begin
    D <= D_in;
  end 
  else if (LOAD)
  begin
    serial_out <= D[3];
    D <= D << 1;
  end
end







endmodule