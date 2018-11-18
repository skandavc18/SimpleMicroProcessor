module add2 (input wire i0, i1, cin, output wire sum, cout);
	wire w1, w2, w3;
	and2 g1(i0, i1, w1);
	and2 g2(i1, cin, w2);
	and2 g3(cin, i0, w3);
	xor3 g4(i0, i1, cin, sum);
	or3 g5(w1, w2, w3, cout);
endmodule
module mux8_16(input wire [15:0] a,b,c,d,e,f,g,h, input wire [2:0]address,output wire [15:0]y);
mux8 m0({a[0], b[0], c[0], d[0], e[0], f[0], g[0], h[0]}, address[2], address[1], address[0], y[0]);
mux8 m1({a[1], b[1], c[1], d[1], e[1], f[1], g[1], h[1]}, address[2], address[1], address[0], y[1]);
mux8 m2({a[2], b[2], c[2], d[2], e[2], f[2], g[2], h[2]}, address[2], address[1], address[0], y[2]);
mux8 m3({a[3], b[3], c[3], d[3], e[3], f[3], g[3], h[3]}, address[2], address[1], address[0], y[3]);
mux8 m4({a[4], b[4], c[4], d[4], e[4], f[4], g[4], h[4]}, address[2], address[1], address[0], y[4]);
mux8 m5({a[5], b[5], c[5], d[5], e[5], f[5], g[5], h[5]}, address[2], address[1], address[0], y[5]);
mux8 m6({a[6], b[6], c[6], d[6], e[6], f[6], g[6], h[6]}, address[2], address[1], address[0], y[6]);
mux8 m7({a[7], b[7], c[7], d[7], e[7], f[7], g[7], h[7]}, address[2], address[1], address[0], y[7]);
mux8 m8({a[8], b[8], c[8], d[8], e[8], f[8], g[8], h[8]}, address[2], address[1], address[0], y[8]);
mux8 m9({a[9], b[9], c[9], d[9], e[9], f[9], g[9], h[9]}, address[2], address[1], address[0], y[9]);
mux8 m10({a[10], b[10], c[10], d[10], e[10], f[10], g[10], h[10]}, address[2], address[1], address[0], y[10]);
mux8 m11({a[11], b[11], c[11], d[11], e[11], f[11], g[11], h[11]}, address[2], address[1], address[0], y[11]);
mux8 m12({a[12], b[12], c[12], d[12], e[12], f[12], g[12], h[12]}, address[2], address[1], address[0], y[12]);
mux8 m13({a[13], b[13], c[13], d[13], e[13], f[13], g[13], h[13]}, address[2], address[1], address[0], y[13]);
mux8 m14({a[14], b[14], c[14], d[14], e[14], f[14], g[14], h[14]}, address[2], address[1], address[0], y[14]);
mux8 m15({a[15], b[15], c[15], d[15], e[15], f[15], g[15], h[15]}, address[2], address[1], address[0], y[15]);
endmodule


module add16 (input wire [15:0] i0, i1, output wire [15:0] o, output wire cout);
	wire c[15:1];
	add2 a1(i0[0], i1[0], 1'b0, o[0], c[1]);
	add2 a2(i0[1], i1[1], c[1], o[1], c[2]);
	add2 a3(i0[2], i1[2], c[2], o[2], c[3]);
	add2 a4(i0[3], i1[3], c[3], o[3], c[4]);
	add2 a5(i0[4], i1[4], c[4], o[4], c[5]);
	add2 a6(i0[5], i1[5], c[5], o[5], c[6]);
	add2 a7(i0[6], i1[6], c[6], o[6], c[7]);
	add2 a8(i0[7], i1[7], c[7], o[7], c[8]);
	add2 a9(i0[8], i1[8], c[8], o[8], c[9]);
	add2 a10(i0[9], i1[9], c[9], o[9], c[10]);
	add2 a11(i0[10], i1[10], c[10], o[10], c[11]);
	add2 a12(i0[11], i1[11], c[11], o[11], c[12]);
	add2 a13(i0[12], i1[12], c[12], o[12], c[13]);
	add2 a14(i0[13], i1[13], c[13], o[13], c[14]);
	add2 a15(i0[14], i1[14], c[14], o[14], c[15]);
	add2 a16(i0[15], i1[15], c[15], o[15], cout);
endmodule

module sub16 (input wire [15:0] i0, i1, output wire [15:0] o, output wire cout);
	wire c[15:1];
	wire i2[15:0];
	xor2 x1(i1[0], 1'b1, i2[0]);
	xor2 x2(i1[1], 1'b1, i2[1]);
	xor2 x3(i1[2], 1'b1, i2[2]);
	xor2 x4(i1[3], 1'b1, i2[3]);
	xor2 x5(i1[4], 1'b1, i2[4]);
	xor2 x6(i1[5], 1'b1, i2[5]);
	xor2 x7(i1[6], 1'b1, i2[6]);
	xor2 x8(i1[7], 1'b1, i2[7]);
	xor2 x9(i1[8], 1'b1, i2[8]);
	xor2 x10(i1[9], 1'b1, i2[9]);
	xor2 x11(i1[10], 1'b1, i2[10]);
	xor2 x12(i1[11], 1'b1, i2[11]);
	xor2 x13(i1[12], 1'b1, i2[12]);
	xor2 x14(i1[13], 1'b1, i2[13]);
	xor2 x15(i1[14], 1'b1, i2[14]);
	xor2 x16(i1[15], 1'b1, i2[15]);
	add2 a1(i0[0], i2[0], 1'b1, o[0], c[1]);
	add2 a2(i0[1], i2[1], c[1], o[1], c[2]);
	add2 a3(i0[2], i2[2], c[2], o[2], c[3]);
	add2 a4(i0[3], i2[3], c[3], o[3], c[4]);
	add2 a5(i0[4], i2[4], c[4], o[4], c[5]);
	add2 a6(i0[5], i2[5], c[5], o[5], c[6]);
	add2 a7(i0[6], i2[6], c[6], o[6], c[7]);
	add2 a8(i0[7], i2[7], c[7], o[7], c[8]);
	add2 a9(i0[8], i2[8], c[8], o[8], c[9]);
	add2 a10(i0[9], i2[9], c[9], o[9], c[10]);
	add2 a11(i0[10], i2[10], c[10], o[10], c[11]);
	add2 a12(i0[11], i2[11], c[11], o[11], c[12]);
	add2 a13(i0[12], i2[12], c[12], o[12], c[13]);
	add2 a14(i0[13], i2[13], c[13], o[13], c[14]);
	add2 a15(i0[14], i2[14], c[14], o[14], c[15]);
	add2 a16(i0[15], i2[15], c[15], o[15], cout);
endmodule

module and16(input wire [15:0] i0, i1, output wire [15:0] o);
	and2 a1(i0[0], i1[0], o[0]);
	and2 a2(i0[1], i1[1], o[1]);
	and2 a3(i0[2], i1[2], o[2]);
	and2 a4(i0[3], i1[3], o[3]);
	and2 a5(i0[4], i1[4], o[4]);
	and2 a6(i0[5], i1[5], o[5]);
	and2 a7(i0[6], i1[6], o[6]);
	and2 a8(i0[7], i1[7], o[7]);
	and2 a9(i0[8], i1[8], o[8]);
	and2 a10(i0[9], i1[9], o[9]);
	and2 a11(i0[10], i1[10], o[10]);
	and2 a12(i0[11], i1[11], o[11]);
	and2 a13(i0[12], i1[12], o[12]);
	and2 a14(i0[13], i1[13], o[13]);
	and2 a15(i0[14], i1[14], o[14]);
	and2 a16(i0[15], i1[15], o[15]);
endmodule

module or16(input wire [15:0] i0, i1, output wire [15:0] o);
	or2 o1(i0[0], i1[0], o[0]);
	or2 o2(i0[1], i1[1], o[1]);
	or2 o3(i0[2], i1[2], o[2]);
	or2 o4(i0[3], i1[3], o[3]);
	or2 o5(i0[4], i1[4], o[4]);
	or2 o6(i0[5], i1[5], o[5]);
	or2 o7(i0[6], i1[6], o[6]);
	or2 o8(i0[7], i1[7], o[7]);
	or2 o9(i0[8], i1[8], o[8]);
	or2 o10(i0[9], i1[9], o[9]);
	or2 o11(i0[10], i1[10], o[10]);
	or2 o12(i0[11], i1[11], o[11]);
	or2 o13(i0[12], i1[12], o[12]);
	or2 o14(i0[13], i1[13], o[13]);
	or2 o15(i0[14], i1[14], o[14]);
	or2 o16(i0[15], i1[15], o[15]);
endmodule

module xor16(input wire [15:0] i0, i1, output wire [15:0] o);
	xor2 o1(i0[0], i1[0], o[0]);
	xor2 o2(i0[1], i1[1], o[1]);
	xor2 o3(i0[2], i1[2], o[2]);
	xor2 o4(i0[3], i1[3], o[3]);
	xor2 o5(i0[4], i1[4], o[4]);
	xor2 o6(i0[5], i1[5], o[5]);
	xor2 o7(i0[6], i1[6], o[6]);
	xor2 o8(i0[7], i1[7], o[7]);
	xor2 o9(i0[8], i1[8], o[8]);
	xor2 o10(i0[9], i1[9], o[9]);
	xor2 o11(i0[10], i1[10], o[10]);
	xor2 o12(i0[11], i1[11], o[11]);
	xor2 o13(i0[12], i1[12], o[12]);
	xor2 o14(i0[13], i1[13], o[13]);
	xor2 o15(i0[14], i1[14], o[14]);
	xor2 o16(i0[15], i1[15], o[15]);
endmodule

module partialproduct(i,s,o);
	input [15:0] i;
	input [2:0] s;
	output reg [31:0] o;
	
		always @(*) begin
			case (s)
				3'b000:o=$signed(1'b0);
				3'b001:o=$signed(i);
				3'b010:o=$signed(i);
				3'b011:
					begin
					o=$signed(i);
					o=$signed(i)<<<1;
					end
				3'b100:begin
					o=$signed(i);
					o=$signed(~o+1'b1);
					o=$signed(o)<<<1;
					end
				3'b101:begin
					o=$signed(i);
					o=$signed(~o+1'b1);
					end
				3'b110:begin
					o=$signed(i);
					o=$signed(~o+1'b1);
					end
				3'b111:o=$signed(32'b0);	
			endcase
		end
	
endmodule
 
module boothmulitplier(a,b,c);
	input [15:0] a;
	input [15:0] b;
	output [15:0] c;
	wire [31:0] t [7:0];
	
	partialproduct p0(a,{b[1:0],1'b0},t[0]);
	partialproduct p1(a,b[3:1],t[1]);
	partialproduct p2(a,b[5:3],t[2]);
	partialproduct p3(a,b[7:5],t[3]);
	partialproduct p4(a,b[9:7],t[4]);
	partialproduct p5(a,b[11:9],t[5]);
    partialproduct p6(a,b[13:11],t[6]);
    partialproduct p7(a,b[15:13],t[7]);

	
	assign c = $signed(t[0])+$signed(t[1]<<<2)+$signed(t[2]<<<4)+$signed(t[3]<<<6)+$signed(t[4]<<<8)+$signed(t[5]<<<10)+$signed(t[6]<<<12)+$signed(t[7]<<<14);
	
	
endmodule

module mux16(input wire [1'b0:15]i,input wire j3, j2, j1,j0,output wire o);
wire  t0, t1;
mux8 m0(i[1'b0:7],j3,j2,j1,t0);
mux8 m1(i[8:15],j3,j2,j1,t1);
mux2 m3(t0,t1,j0,o);
endmodule
module multiplexer_16_4(output wire y,input wire a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,input wire [1'b0:3]address);

mux16 m0({a, b, c, d, e, f, g, h,i, j, k, l, m, n, o, p}, address[3], address[2], address[1], address[1'b0], y);
endmodule


module rightshift(A,t,Y);
   output [15:1'b0] Y; 
   input [15:1'b0]  A; 
   input [15:0] t; 
   wire [3:0]S;
   assign S= t[3:0];
   multiplexer_16_4  m0(Y[0], A[0], A[1], A[2], A[3], A[4], A[5], A[6], A[7],A[8], A[9], A[10], A[11], A[12], A[13], A[14], A[15],S[3:0]);
   multiplexer_16_4  m1(Y[1], A[1], A[2], A[3], A[4], A[5], A[6], A[7], A[8],A[9], A[10], A[11], A[12], A[13], A[14], A[15], 1'b0,S[3:0]);
   multiplexer_16_4  m2(Y[2], A[2], A[3], A[4], A[5], A[6], A[7], A[8], A[9],A[10], A[11], A[12], A[13], A[14], A[15], 1'b0, 1'b0,S[3:0]);
   multiplexer_16_4  m3(Y[3], A[3], A[4], A[5], A[6], A[7], A[8], A[9], A[10],A[11], A[12], A[13], A[14], A[15],1'b0,1'b0,1'b0,S[3:0]);
   multiplexer_16_4  m4(Y[4], A[4], A[5], A[6], A[7], A[8], A[9], A[10], A[11],A[12], A[13], A[14], A[15],1'b0,1'b0,1'b0,1'b0,S[3:0]);
   multiplexer_16_4  m5(Y[5], A[5], A[6], A[7], A[8], A[9], A[10], A[11], A[12],A[13], A[14], A[15],1'b0,1'b0,1'b0,1'b0,1'b0,S[3:0]);
   multiplexer_16_4  m6(Y[6], A[6], A[7], A[8], A[9], A[10], A[11], A[12], A[13],A[14], A[15],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,S[3:0]);
   multiplexer_16_4  m7(Y[7], A[7], A[8], A[9], A[10], A[11], A[12], A[13], A[14],A[15],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,S[3:0]);
   multiplexer_16_4  m8(Y[8], A[8], A[9], A[10], A[11], A[12], A[13], A[14], 1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,S[3:0]);
   multiplexer_16_4  m9(Y[9], A[9], A[10], A[11], A[12], A[13], A[14],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,S[3:0]);
   multiplexer_16_4 m10(Y[10],A[10], A[11], A[12], A[13], A[14], A[15],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,S[3:0]);
   multiplexer_16_4 m11(Y[11],A[11], A[12], A[13], A[14], A[15],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,S[3:0]);
   multiplexer_16_4 m12(Y[12],A[12], A[13], A[14], A[15],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,S[3:0]);
   multiplexer_16_4 m13(Y[13],A[13], A[14], A[15],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,S[3:0]);
   multiplexer_16_4 m14(Y[14],A[14], A[15],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,S[3:0]);
   multiplexer_16_4 m15(Y[15],A[15],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,S[3:0]);
endmodule

module leftshift(A,t,Y);
   output [15:1'b0] Y; 
   input [15:1'b0]  A; 
   input [15:0] t; 
   wire [3:0]S;
   assign S= t[3:0];
   multiplexer_16_4  m0(Y[0], A[0], 1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,S[3:0]);
   multiplexer_16_4  m1(Y[1], A[1], A[0],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0, 1'b0,S[3:0]);
   multiplexer_16_4  m2(Y[2], A[2], A[1],A[0],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,S[3:0]);
   multiplexer_16_4  m3(Y[3], A[3], A[2], A[1], A[0],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,S[3:0]);
   multiplexer_16_4  m4(Y[4], A[4], A[3], A[2], A[1], A[0], 1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,S[3:0]);
   multiplexer_16_4  m5(Y[5], A[5], A[4], A[3], A[2], A[1], A[0],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,S[3:0]);
   multiplexer_16_4  m6(Y[6], A[6], A[5], A[4], A[3], A[2],A[1],A[0],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,S[3:0]);
   multiplexer_16_4  m7(Y[7], A[7], A[6], A[5], A[4], A[3],A[2],A[1],A[0],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,S[3:0]);
   multiplexer_16_4  m8(Y[8], A[8], A[7], A[6], A[5], A[4], A[3], A[2],A[1],A[0],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,S[3:0]);
   multiplexer_16_4  m9(Y[9], A[9], A[8], A[7], A[6], A[5], A[4],A[3],A[2],A[1],A[0],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,S[3:0]);
   multiplexer_16_4 m10(Y[10],A[10], A[9], A[8], A[7], A[6], A[5],A[4],A[3],A[2],A[1],A[0],1'b0,1'b0,1'b0,1'b0,1'b0,S[3:0]);
   multiplexer_16_4 m11(Y[11],A[11], A[10], A[9], A[8], A[7],A[6],A[5],A[4],A[3],A[2],A[1],A[0],1'b0,1'b0,1'b0,1'b0,S[3:0]);
   multiplexer_16_4 m12(Y[12],A[12], A[11], A[10], A[9],A[8],A[7],A[6],A[5],A[4],A[3],A[2],A[1],A[0],1'b0,1'b0,1'b0,S[3:0]);
   multiplexer_16_4 m13(Y[13],A[13], A[12], A[11],A[10],A[9],A[8],A[7],A[6],A[5],A[4],A[3],A[2],A[1],A[0],1'b0,1'b0,S[3:0]);
   multiplexer_16_4 m14(Y[14],A[14], A[13], A[12],A[11],A[10],A[9],A[8],A[7],A[6],A[5],A[4],A[3],A[2],A[1],A[0],1'b0,S[3:0]);
   multiplexer_16_4 m15(Y[15],A[15], A[14], A[13],A[12],A[11],A[10],A[9],A[8],A[7],A[6],A[5],A[4],A[3],A[2],A[1],A[0],S[3:0]);
endmodule

module alu (input wire [2:0] op, input wire [15:0] i0, i1, output wire [15:0] o, output wire cout);
	wire [15:0] o0, o1, o2, o3,o4,o5,o6,o7;
	wire c0, c1;
	add16 g0(i0, i1, o0, c0);
	sub16 g1(i0, i1, o1, c1);
	and16 g2(i0, i1, o2);
	or16 g3(i0, i1, o3);
    xor16 g4(i0, i1, o4);
	boothmulitplier g5(i0, i1, o5);
	leftshift g6(i0, i1, o6);
	rightshift g7(i0, i1, o7);
	mux8_16 m1(o0[15:0], o1[15:0], o2[15:0], o3[15:0], o4[15:0],o5[15:0],o6[15:0],o7[15:0],{op[0],op[1],op[2]}, o);
	mux2 m2(c0, c1, op[0], cout);
endmodule