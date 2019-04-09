`timescale 1ns/1ns //timescale of 1 nanosecond

module testBench(); //calls to test my ALU
	wire[15:0] A, B, Set, F, Cout;
	wire Sub, Op1, Op2, Less, Cin;
	testALU16 test (F, Cout, Set, Less, A, B, Cin, Sub, Op1, Op2);
	ALU16 alu (F, Cout, Set, Less, A, B, Cin, Sub, Op1, Op2);
endmodule

module testALU16(F, Cout, Set, Less, A, B, Cin, Sub, Op1, Op2); //inputs values into 16-bit ALU
	input [15:0] F, Set, Cout;
	output [15:0] A, B;
	output Cin, Sub, Op1, Op2, Less;
	reg [15:0] A, B;
	reg Cin, Sub, Op1, Op2, Less;    
	initial
		begin
			$monitor($time, ,"A=%d, B=%d, Cin=%b, F=%d, Cout=%b, Set=%b, Sub=%b, Op1=%b, Op2=%b, Less=%b", A, B, Cin,F, Cout, Set, Sub, Op1, Op2, Less);
			$display($time, ,"A=%d, B=%d, Cin=%b, F=%d, Cout=%b, Set=%b, Sub=%b, Op1=%b, Op2=%b, Less=%b", A, B, Cin,F, Cout, Set, Sub, Op1, Op2, Less);
			
			//AND - Postive and Neagtive Inputs with a 100 nanosecond delay
			#100 A =0; B =1; Sub = 0;Op1 = 0; Op2 = 0; Cin = 0; Less = 0;
			#100 A =1; B =1; Sub = 0;Op1 = 0; Op2 = 0; Cin = 0; Less = 0;
			#100 A =637; B =120; Sub = 0;Op1 = 0; Op2 = 0; Cin = 0; Less = 0;
			#100 A =3555; B =1245; Sub = 0;Op1 = 0; Op2 = 0; Cin = 0; Less = 0;
			#100 A =21982; B =4750; Sub = 0;Op1 = 0; Op2 = 0; Cin = 0; Less = 0;
			#100 A =50; B =-20; Sub = 0;Op1 = 0; Op2 = 0; Cin = 0; Less = 0;
			#100 A =-50; B =-20; Sub = 0;Op1 = 0; Op2 = 0; Cin = 0; Less = 0;

			//OR - Postive and Neagtive Inputs with a 100 nanosecond delay
			#100 A =0; B =1; Sub = 0;Op1 = 0; Op2 = 1; Cin = 0; Less = 0;
			#100 A =1; B =1; Sub = 0;Op1 = 0; Op2 = 1; Cin = 0; Less = 0;
			#100 A =637; B =120; Sub = 0;Op1 = 0; Op2 = 1; Cin = 0; Less = 0;
			#100 A =3555; B =1245; Sub = 0;Op1 = 0; Op2 = 1; Cin = 0; Less = 0;
			#100 A =21982; B =4750; Sub = 0;Op1 = 0; Op2 = 1; Cin = 0; Less = 0;
			#100 A =50; B =-20; Sub = 0;Op1 = 0; Op2 = 1; Cin = 0; Less = 0;
			#100 A =-50; B =-20; Sub = 0;Op1 = 0; Op2 = 1; Cin = 0; Less = 0;

			//ADD - Postive and Neagtive Inputs with a 100 nanosecond delay
			#100 A =0; B =1; Sub = 0;Op1 = 1; Op2 = 0; Cin = 0; Less = 0;
			#100 A =1; B =1; Sub = 0;Op1 = 1; Op2 = 0; Cin = 0; Less = 0;
			#100 A =637; B =120; Sub = 0;Op1 = 1; Op2 = 0; Cin = 0; Less = 0;
			#100 A =3555; B =1245; Sub = 0;Op1 = 1; Op2 = 0; Cin = 0; Less = 0;
			#100 A =21982; B =4750; Sub = 0;Op1 = 1; Op2 = 0; Cin = 0; Less = 0;
			#100 A =50; B =-20; Sub = 0;Op1 = 1; Op2 = 0; Cin = 0; Less = 0;
			#100 A =-50; B =-20; Sub = 0;Op1 = 1; Op2 = 0; Cin = 0; Less = 0;

			//SUB - Postive and Neagtive Inputs with a 100 nanosecond delay
			#100 A =0; B =1; Sub = 1;Op1 = 1; Op2 = 0; Cin = 0; Less = 0;
			#100 A =1; B =1; Sub = 1;Op1 = 1; Op2 = 0; Cin = 0; Less = 0;
			#100 A =637; B =120; Sub = 1;Op1 = 1; Op2 = 0; Cin = 0; Less = 0;
			#100 A =3555; B =1245; Sub = 1;Op1 = 1; Op2 = 0; Cin = 0; Less = 0;
			#100 A =21982; B =4750; Sub = 1;Op1 = 1; Op2 = 0; Cin = 0; Less = 0;
			#100 A =50; B =-20; Sub = 1;Op1 = 1; Op2 = 0; Cin = 0; Less = 0;
			#100 A =-50; B =-20; Sub = 1;Op1 = 1; Op2 = 0; Cin = 0; Less = 0;

			//SLT - Postive and Neagtive Inputs with a 100 nanosecond delay
			#100 A =0; B =1; Sub = 1;Op1 = 1; Op2 = 1; Cin = 0; Less = 0;
			#100 A =1; B =1; Sub = 1;Op1 = 1; Op2 = 1; Cin = 0; Less = 0;
			#100 A =637; B =120; Sub = 1;Op1 = 1; Op2 = 1; Cin = 0; Less = 0;
			#100 A =3555; B =1245; Sub = 1;Op1 = 1; Op2 = 1; Cin = 0; Less = 0;
			#100 A =21982; B =4750; Sub = 1;Op1 = 1; Op2 = 1; Cin = 0; Less = 0;
			#100 A =50; B =-20; Sub = 1;Op1 = 1; Op2 = 1; Cin = 0; Less = 0;
			#100 A =-50; B =-20; Sub = 1;Op1 = 1; Op2 = 1; Cin = 0; Less = 0;
			#100
			$display($time, ,"A=%d, B=%d, Cin=%b, F=%d, Cout=%b, Set=%b, Sub=%b, Op1=%b, Op2=%b, Less=%b", A, B, Cin,F, Cout, Set, Sub, Op1, Op2, Less);
		end
endmodule


module ALU16(F, Cout, Set, Less, A, B, Cin, Sub, Op1, Op2); //code for 16, 1-bit ALUs wired together

	output [15:0] F, Cout, Set;
	input [15:0] A, B;
	input Op1, Op2, Sub, Cin, Less;

	return r0 (F[0], Cout[0], Set[0], Set[15], A[0], B[0], Sub, Sub, Op1, Op2);
	return r1 (F[1], Cout[1], Set[1], 0, A[1], B[1], Cout[0], Sub, Op1, Op2);
	return r2 (F[2], Cout[2], Set[2], 0, A[2], B[2], Cout[1], Sub, Op1, Op2);
	return r3 (F[3], Cout[3], Set[3], 0, A[3], B[3], Cout[2], Sub, Op1, Op2);
	return r4 (F[4], Cout[4], Set[4], 0, A[4], B[4], Cout[3], Sub, Op1, Op2);
	return r5 (F[5], Cout[5], Set[5], 0, A[5], B[5], Cout[4], Sub, Op1, Op2);
	return r6 (F[6], Cout[6], Set[6], 0, A[6], B[6], Cout[5], Sub, Op1, Op2);
	return r7 (F[7], Cout[7], Set[7], 0, A[7], B[7], Cout[6], Sub, Op1, Op2);
	return r8 (F[8], Cout[8], Set[8], 0, A[8], B[8], Cout[7], Sub, Op1, Op2);
	return r9 (F[9], Cout[9], Set[9], 0, A[9], B[9], Cout[8], Sub, Op1, Op2);
	return r10 (F[10], Cout[10], Set[10], 0, A[10], B[10], Cout[9], Sub, Op1, Op2);
	return r11 (F[11], Cout[11], Set[11], 0, A[11], B[11], Cout[10], Sub, Op1, Op2);
	return r12 (F[12], Cout[12], Set[12], 0, A[12], B[12], Cout[11], Sub, Op1, Op2);
	return r13 (F[13], Cout[13], Set[13], 0, A[13], B[13], Cout[12], Sub, Op1, Op2);
	return r14 (F[14], Cout[14], Set[14], 0, A[14], B[14], Cout[13], Sub, Op1, Op2);
	return r15 (F[15], Cout[15], Set[15], 0, A[15], B[15], Cout[14], Sub, Op1, Op2);

endmodule

module return(F,Cout,Set,Less,A,B,Cin,Sub,Op1,Op2); //Code for a 1-bit ALU

   output F,Cout, Set;
   input  A, B, Cin, Sub, Op1, Op2, Less;
   wire   w1, w2, w3, w4;
 
   fulladder FA (Set, Cout, A, w4, Cin);
   four_to_one_mux F1 (F, w1, w2, Set, Less, Op1, Op2);
   xor #1 G4(w4, Sub, B);
   and #1 G1(w1, A, B);
   or #1 G2(w2, A, B);
 
endmodule


module four_to_one_mux(F, A, B, C, D, S1, S2); //code for a basic 4-1 mux used in a 1-bit ALU
	
	wire w1, w2, w3, w4, w5, w6;
	input A, B, C, D, S1, S2;
	output F;
	
	not #1 G1(w1, S1);
	not #1 G2(w2, S2);
	and #1 G3(w3, A, w1, w2);
	and #1 G4(w4, B, S2, w1);
	and #1 G5(w5, C, S1, w2);
	and #1 G6(w6, D, S1, S2);
	or #1 G7(F, w3, w4, w5, w6);

endmodule

module fulladder(S,Cout,A,B,Cin); //code for a full adder with a 1 nanosecond delay

	output S, Cout;
	input A, B, Cin;
	wire w1, w2, w3, w4, w5;

	xor #1 G1(w1, A, B);
	xor #1 G6(S, w1, Cin);
	and #1 G2(w2, A, Cin);
	and #1 G3(w3, B, Cin);
	and #1 G4(w4, A, B);
	or #1 G5(Cout, w2, w3, w4);
endmodule