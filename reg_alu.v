// Write code for modules you need here

module register(input wire clk,reset,load,input wire [15:0]i,output wire [15:0]o);

dfrl d1(clk, reset, load,i[0],o[0]);
dfrl d2(clk, reset, load,i[1],o[1]);
dfrl d3(clk, reset, load,i[2],o[2]);
dfrl d4(clk, reset, load,i[3],o[3]);
dfrl d5(clk, reset, load,i[4],o[4]);
dfrl d6(clk, reset, load,i[5],o[5]);
dfrl d7(clk, reset, load,i[6],o[6]);
dfrl d8(clk, reset, load,i[7],o[7]);
dfrl d9(clk, reset, load,i[8],o[8]);
dfrl d10(clk, reset, load,i[9],o[9]);
dfrl d11(clk, reset, load,i[10],o[10]);
dfrl d12(clk, reset, load,i[11],o[11]);
dfrl d13(clk, reset, load,i[12],o[12]);
dfrl d14(clk, reset, load,i[13],o[13]);
dfrl d15(clk, reset, load,i[14],o[14]);
dfrl d16(clk, reset, load,i[15],o[15]);
endmodule


module mux2_16(input wire [15:0]a,b,input wire sel,output wire [15:0]o);
mux2 m1(a[0],b[0],sel,o[0]);
mux2 m2(a[1],b[1],sel,o[1]);
mux2 m3(a[2],b[2],sel,o[2]);
mux2 m4(a[3],b[3],sel,o[3]);
mux2 m5(a[4],b[4],sel,o[4]);
mux2 m6(a[5],b[5],sel,o[5]);
mux2 m7(a[6],b[6],sel,o[6]);
mux2 m8(a[7],b[7],sel,o[7]);
mux2 m9(a[8],b[8],sel,o[8]);
mux2 m10(a[9],b[9],sel,o[9]);
mux2 m11(a[10],b[10],sel,o[10]);
mux2 m12(a[11],b[11],sel,o[11]);
mux2 m13(a[12],b[12],sel,o[12]);
mux2 m14(a[13],b[13],sel,o[13]);
mux2 m15(a[14],b[14],sel,o[14]);
mux2 m16(a[15],b[15],sel,o[15]);
endmodule

module reg_file (input wire clk, reset, wr, input wire [2:0] rd_addr_a, rd_addr_b, wr_addr, input wire [15:0] d_in, output wire [15:0] d_out_a, d_out_b);
wire [7:0]t;
wire [15:0]t1,t2,t3,t4,t5,t6,t7,t8;
register r0(clk,reset,1'b0,16'h0,t1[15:0]);
register r1(clk,reset,t[1],d_in[15:0],t2[15:0]);
register r2(clk,reset,t[2],d_in[15:0],t3[15:0]);
register r3(clk,reset,t[3],d_in[15:0],t4[15:0]);
register r4(clk,reset,t[4],d_in[15:0],t5[15:0]);
register r5(clk,reset,t[5],d_in[15:0],t6[15:0]);
register r6(clk,reset,t[6],d_in[15:0],t7[15:0]);
register r7(clk,reset,t[7],d_in[15:0],t8[15:0]);

mux8_16 m1(.a(t1[15:0]),.b(t2[15:0]),.c(t3[15:0]),.d(t4[15:0]),.e(t5[15:0]),.f(t6[15:0]),.g(t7[15:0]),.h(t8[15:0]),.address(rd_addr_a[2:0]),.y(d_out_a[15:0]));
mux8_16 m2(.a(t1[15:0]),.b(t2[15:0]),.c(t3[15:0]),.d(t4[15:0]),.e(t5[15:0]),.f(t6[15:0]),.g(t7[15:0]),.h(t8[15:0]),.address(rd_addr_b[2:0]),.y(d_out_b[15:0]));
demux8 d1(wr,wr_addr[0],wr_addr[1],wr_addr[2],{t[0],t[1],t[2],t[3],t[4],t[5],t[6],t[7]});
endmodule


module reg_alu (input wire clk, reset, sel, wr, input wire [2:0] op, input wire [2:0] rd_addr_a,rd_addr_b, wr_addr, input wire [15:0] d_in, output wire [15:0] d_out_a, d_out_b, output wire cout);
wire [15:0]t,t2;
wire t1;
alu p1(op[2:0],d_out_a[15:0],d_out_b[15:0],t[15:0],t1);
dfr p2(clk,reset,t1,cout);
mux2_16 p3(d_in[15:0],t[15:0],sel,t2[15:0]);
reg_file p4(clk,reset,wr,rd_addr_a[2:0],rd_addr_b[2:0], wr_addr[2:0],t2[15:0],d_out_a[15:0],d_out_b[15:0]);
endmodule
