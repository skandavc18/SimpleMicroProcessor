module nor4 (input wire [0:3] i, output wire o);
  wire t;
  or2 or2_0 (i[0], i[1],t);
  nor3 nor3_0 (t, i[2], i[3], o);
endmodule

module ir (input wire clk, reset, load, input wire [15:0] din, output wire [15:0] dout);
  dfrl dfrl_0 (clk, reset, load, din['h0], dout['h0]);
  dfrl dfrl_1 (clk, reset, load, din['h1], dout['h1]);
  dfrl dfrl_2 (clk, reset, load, din['h2], dout['h2]);
  dfrl dfrl_3 (clk, reset, load, din['h3], dout['h3]);
  dfrl dfrl_4 (clk, reset, load, din['h4], dout['h4]);
  dfrl dfrl_5 (clk, reset, load, din['h5], dout['h5]);
  dfrl dfrl_6 (clk, reset, load, din['h6], dout['h6]);
  dfrl dfrl_7 (clk, reset, load, din['h7], dout['h7]);
  dfrl dfrl_8 (clk, reset, load, din['h8], dout['h8]);
  dfrl dfrl_9 (clk, reset, load, din['h9], dout['h9]);
  dfrl dfrl_a (clk, reset, load, din['ha], dout['ha]);
  dfrl dfrl_b (clk, reset, load, din['hb], dout['hb]);
  dfrl dfrl_c (clk, reset, load, din['hc], dout['hc]);
  dfrl dfrl_d (clk, reset, load, din['hd], dout['hd]);
  dfrl dfrl_e (clk, reset, load, din['he], dout['he]);
  dfrl dfrl_f (clk, reset, load, din['hf], dout['hf]);
endmodule

module control_logic (input wire clk, reset, input wire [15:0] cur_ins, output wire [2:0] rd_addr_a, rd_addr_b, wr_addr,
  output wire [2:0] op, output wire sel, jump, pc_inc, load_ir, wr_reg);
  wire s, t, u, v, w, ld_ins_, ld_ins, pc_inc1, pc_inc2, wr_reg1, wr_reg2;
   wire alu_ins;
   dfsl fetch1(clk,reset, 1'b1,t,pc_inc2);
   dfrl fetch2(clk,reset,1'b1,pc_inc2,load_ir);
   dfrl decexec(clk,reset,1'b1,load_ir,t);
   and2 a(t,alu_ins,wr_reg1);
   and2 a1(t,cur_ins[15],wr_reg2);
   or2  b(wr_reg1,wr_reg2,wr_reg);
   assign sel=~cur_ins[15];
   nor4 c(cur_ins[15:12],alu_ins);
   and2 d(t,cur_ins[15],pc_inc1);
   or2 e(pc_inc1,pc_inc2,pc_inc);
   and2 f(t,cur_ins[14],jump);
   assign rd_addr_a=cur_ins[2:0];
   assign rd_addr_b=cur_ins[5:3];
   assign wr_addr=cur_ins[8:6];
   assign op= cur_ins[11:9];

endmodule

module mproc (input wire clk, reset, input wire [15:0] d_in, output wire [6:0] addr, output wire [15:0] d_out);
  wire pc_inc, cout, cout_, sub, sel, sel_addr; wire [2:0] rd_addr_a, rd_addr_b, wr_addr; wire [2:0] op; wire [8:0] _addr;
  wire [15:0] cur_ins, d_out_a, d_out_b;

  and2 and2_0 (jump, cout, sub);
  pc pc_0 (clk, reset, pc_inc, 1'b0, sub, {8'b0, cur_ins[7:0]}, {_addr, addr});
  ir ir_0 (clk, reset, load_ir, d_in, cur_ins);
  control_logic control_logic_0 (clk, reset, cur_ins, rd_addr_a, rd_addr_b, wr_addr, op, sel, jump, pc_inc, load_ir, wr_reg);
  reg_alu reg_alu_0 (clk, reset, sel, wr_reg, op, rd_addr_a, rd_addr_b, wr_addr, d_in, d_out_a, d_out_b, cout);
  assign d_out = d_out_a;
endmodule
