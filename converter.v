// Copyright (C) 2022  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and any partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details, at
// https://fpgasoftware.intel.com/eula.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 21.1.1 Build 850 06/23/2022 SJ Standard Edition"
// CREATED		"Mon Dec  5 15:26:02 2022"

module converter(
	Inputzero,
	Inputseven,
	Inputsix,
	inputfive,
	inputfour,
	inputthree,
	inputtwo,
	inputone,
	OnesA,
	OnesB,
	OnesC,
	OnesD,
	OnesE,
	OnesF,
	OnesG,
	TensA,
	TensB,
	TensC,
	TensD,
	TensE,
	TensF,
	TensG,
	HurnderdsA,
	HundredsB,
	HundredsC,
	HundredsD,
	HunderdsE,
	HundredsF,
	HundredsG
);


input wire	Inputzero;
input wire	Inputseven;
input wire	Inputsix;
input wire	inputfive;
input wire	inputfour;
input wire	inputthree;
input wire	inputtwo;
input wire	inputone;
output wire	OnesA;
output wire	OnesB;
output wire	OnesC;
output wire	OnesD;
output wire	OnesE;
output wire	OnesF;
output wire	OnesG;
output wire	TensA;
output wire	TensB;
output wire	TensC;
output wire	TensD;
output wire	TensE;
output wire	TensF;
output wire	TensG;
output wire	HurnderdsA;
output wire	HundredsB;
output wire	HundredsC;
output wire	HundredsD;
output wire	HunderdsE;
output wire	HundredsF;
output wire	HundredsG;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_32;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_19;
wire	SYNTHESIZED_WIRE_20;
wire	SYNTHESIZED_WIRE_21;
wire	SYNTHESIZED_WIRE_22;
wire	SYNTHESIZED_WIRE_23;
wire	SYNTHESIZED_WIRE_24;
wire	SYNTHESIZED_WIRE_25;
wire	SYNTHESIZED_WIRE_26;
wire	SYNTHESIZED_WIRE_27;
wire	SYNTHESIZED_WIRE_29;
wire	SYNTHESIZED_WIRE_30;
wire	SYNTHESIZED_WIRE_31;

assign	SYNTHESIZED_WIRE_32 = 0;





seven_seg_decoder	b2v_inst1(
	.w(SYNTHESIZED_WIRE_0),
	.x(SYNTHESIZED_WIRE_1),
	.y(SYNTHESIZED_WIRE_2),
	.z(Inputzero),
	.a(OnesA),
	.b(OnesB),
	.c(OnesC),
	.d(OnesD),
	.e(OnesE),
	.f(OnesF),
	.g(OnesG));


newplus3	b2v_inst10(
	.w(SYNTHESIZED_WIRE_3),
	.x(SYNTHESIZED_WIRE_4),
	.y(SYNTHESIZED_WIRE_5),
	.z(inputfour),
	.a(SYNTHESIZED_WIRE_30),
	.b(SYNTHESIZED_WIRE_22),
	.c(SYNTHESIZED_WIRE_23),
	.d(SYNTHESIZED_WIRE_24));


newplus3	b2v_inst11(
	.w(SYNTHESIZED_WIRE_32),
	.x(Inputseven),
	.y(Inputsix),
	.z(inputfive),
	.a(SYNTHESIZED_WIRE_29),
	.b(SYNTHESIZED_WIRE_3),
	.c(SYNTHESIZED_WIRE_4),
	.d(SYNTHESIZED_WIRE_5));


newplus3	b2v_inst12(
	.w(SYNTHESIZED_WIRE_7),
	.x(SYNTHESIZED_WIRE_8),
	.y(SYNTHESIZED_WIRE_9),
	.z(SYNTHESIZED_WIRE_10),
	.a(SYNTHESIZED_WIRE_18),
	.b(SYNTHESIZED_WIRE_11),
	.c(SYNTHESIZED_WIRE_12),
	.d(SYNTHESIZED_WIRE_13));


seven_seg_decoder	b2v_inst2(
	.w(SYNTHESIZED_WIRE_11),
	.x(SYNTHESIZED_WIRE_12),
	.y(SYNTHESIZED_WIRE_13),
	.z(SYNTHESIZED_WIRE_14),
	.a(TensA),
	.b(TensB),
	.c(TensC),
	.d(TensD),
	.e(TensE),
	.f(TensF),
	.g(TensG));


seven_seg_decoder	b2v_inst3(
	.w(SYNTHESIZED_WIRE_32),
	.x(SYNTHESIZED_WIRE_32),
	.y(SYNTHESIZED_WIRE_17),
	.z(SYNTHESIZED_WIRE_18),
	.a(HurnderdsA),
	.b(HundredsB),
	.c(HundredsC),
	.d(HundredsD),
	.e(HunderdsE),
	.f(HundredsF),
	.g(HundredsG));


newplus3	b2v_inst8(
	.w(SYNTHESIZED_WIRE_19),
	.x(SYNTHESIZED_WIRE_20),
	.y(SYNTHESIZED_WIRE_21),
	.z(inputtwo),
	.a(SYNTHESIZED_WIRE_10),
	.b(SYNTHESIZED_WIRE_25),
	.c(SYNTHESIZED_WIRE_26),
	.d(SYNTHESIZED_WIRE_27));


newplus3	b2v_inst9(
	.w(SYNTHESIZED_WIRE_22),
	.x(SYNTHESIZED_WIRE_23),
	.y(SYNTHESIZED_WIRE_24),
	.z(inputthree),
	.a(SYNTHESIZED_WIRE_31),
	.b(SYNTHESIZED_WIRE_19),
	.c(SYNTHESIZED_WIRE_20),
	.d(SYNTHESIZED_WIRE_21));


newplus3	b2v_robert(
	.w(SYNTHESIZED_WIRE_25),
	.x(SYNTHESIZED_WIRE_26),
	.y(SYNTHESIZED_WIRE_27),
	.z(inputone),
	.a(SYNTHESIZED_WIRE_14),
	.b(SYNTHESIZED_WIRE_0),
	.c(SYNTHESIZED_WIRE_1),
	.d(SYNTHESIZED_WIRE_2));


newplus3	b2v_roberto(
	.w(SYNTHESIZED_WIRE_32),
	.x(SYNTHESIZED_WIRE_29),
	.y(SYNTHESIZED_WIRE_30),
	.z(SYNTHESIZED_WIRE_31),
	.a(SYNTHESIZED_WIRE_17),
	.b(SYNTHESIZED_WIRE_7),
	.c(SYNTHESIZED_WIRE_8),
	.d(SYNTHESIZED_WIRE_9));


endmodule
