
module ram_128_16 (input wire clk, reset, wr, input wire [6:0] addr, input wire [15:0] din, output reg [15:0] dout);
  reg [0:127] ram [15:0];

  initial begin
    ram[0]=16'b10xxxxx001xxxxxx; // load
    ram[1]=16'd25;
    ram[2]=16'b10xxxxx010xxxxxx; // load 
    ram[3]=16'd16;
    ram[4]=16'b10xxxxx011xxxxxx; // load 
    ram[5]=16'd3;
    ram[6]=16'b10xxxxx100xxxxxx; // load 
    ram[7]=16'd01;
    ram[8]=16'b0000100100010011; // xor
    ram[9]=16'b0000000000000100; // display
    ram[10]=16'b0000101101010011; // multiply
    ram[11]=16'b0000000000000101; // display
    ram[12]=16'b0000110110011010; // left shift
    ram[13]=16'b0000000000000110; // display
    ram[14]=16'b0000111111011010; // right shift
    ram[15]=16'b0000000000000111; // display
  end 
  always @(posedge clk) begin if (wr) ram[addr]=din; dout=ram[addr]; end
endmodule

module mproc_mem (input wire clk, reset);
  wire wr; wire [6:0] addr; wire [15:0] d_in, d_out;

  ram_128_16 ram_128_16_0 (clk, reset, 1'b0, addr, d_out, d_in);
  mproc mproc_0 (clk, reset, d_in, addr, d_out);
endmodule
