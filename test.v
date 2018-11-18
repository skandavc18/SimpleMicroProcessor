`timescale 1ns / 100ps

 module barrelShifter_tb;

  // Inputs

  reg [15:0] ip;

  reg [15:0] shift;

  // Outputs

  wire [15:0] op;

  // Instantiate the Unit Under Test (UUT)
  xor16 uut (.o(op),.i0(shift),.i1(ip));

  initial begin $dumpfile("shift.vcd"); $dumpvars(0,barrelShifter_tb); end
   // Initialize Inputs
   initial
    begin
   ip    = 16'd0;

   shift = 16'd0;

   // Wait 100 ns for global reset to finish
   #20;

   // Add stimulus here

   ip    = 16'd15;

   shift = 16'd3;

   #20;

   ip    = 16'd16;

   shift = 16'd9;
   #20
   ip    = 16'd0;

   shift = 16'd0;
    end
 endmodule