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
// CREATED		"Mon Dec  5 19:03:47 2022"

module Final_Project(
	Q000,
	Q001,
	Q010,
	Q011,
	Q100,
	Q101,
	Q110,
	Q111,
	Q200,
	Q201,
	Q210,
	Q211,
	Q300,
	Q301,
	Q310,
	Q311,
	Q400,
	Q401,
	Q410,
	Q411,
	St,
	Clock,
	Zero,
	HA,
	HB,
	HC,
	HD,
	HE,
	HF,
	HG,
	TA,
	TB,
	TC,
	TD,
	TE,
	TF,
	TG,
	OA,
	OB,
	OC,
	OD,
	OE,
	OF,
	OG,
	pin_name1,
	pin_name10,
	pin_name11,
	pin_name12,
	pin_name13,
	pin_name14,
	pin_name15,
	pin_name16
);


input wire	Q000;
input wire	Q001;
input wire	Q010;
input wire	Q011;
input wire	Q100;
input wire	Q101;
input wire	Q110;
input wire	Q111;
input wire	Q200;
input wire	Q201;
input wire	Q210;
input wire	Q211;
input wire	Q300;
input wire	Q301;
input wire	Q310;
input wire	Q311;
input wire	Q400;
input wire	Q401;
input wire	Q410;
input wire	Q411;
input wire	St;
input wire	Clock;
input wire	Zero;
output wire	HA;
output wire	HB;
output wire	HC;
output wire	HD;
output wire	HE;
output wire	HF;
output wire	HG;
output wire	TA;
output wire	TB;
output wire	TC;
output wire	TD;
output wire	TE;
output wire	TF;
output wire	TG;
output wire	OA;
output wire	OB;
output wire	OC;
output wire	OD;
output wire	OE;
output wire	OF;
output wire	OG;
output wire	pin_name1;
output wire	pin_name10;
output wire	pin_name11;
output wire	pin_name12;
output wire	pin_name13;
output wire	pin_name14;
output wire	pin_name15;
output wire	pin_name16;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_19;
wire	SYNTHESIZED_WIRE_20;
wire	SYNTHESIZED_WIRE_21;
wire	SYNTHESIZED_WIRE_22;
wire	SYNTHESIZED_WIRE_23;
wire	SYNTHESIZED_WIRE_24;

assign	pin_name1 = SYNTHESIZED_WIRE_16;
assign	pin_name10 = SYNTHESIZED_WIRE_15;
assign	pin_name11 = SYNTHESIZED_WIRE_14;
assign	pin_name12 = SYNTHESIZED_WIRE_13;
assign	pin_name13 = SYNTHESIZED_WIRE_12;
assign	pin_name14 = SYNTHESIZED_WIRE_11;
assign	pin_name15 = SYNTHESIZED_WIRE_10;
assign	pin_name16 = SYNTHESIZED_WIRE_9;




determineTwoLargest	b2v_inst(
	.Q000(Q000),
	.Q001(Q001),
	.Q010(Q010),
	.Q011(Q011),
	.Q100(Q100),
	.Q101(Q101),
	.Q110(Q110),
	.Q111(Q111),
	.Q200(Q200),
	.Q201(Q201),
	.Q210(Q210),
	.Q211(Q211),
	.Q300(Q300),
	.Q301(Q301),
	.Q310(Q310),
	.Q311(Q311),
	.Q400(Q400),
	.Q401(Q401),
	.Q410(Q410),
	.Q411(Q411),
	.St(St),
	.L00(SYNTHESIZED_WIRE_0),
	.L01(SYNTHESIZED_WIRE_1),
	.L10(SYNTHESIZED_WIRE_2),
	.L11(SYNTHESIZED_WIRE_3),
	.L200(SYNTHESIZED_WIRE_4),
	.L201(SYNTHESIZED_WIRE_5),
	.L210(SYNTHESIZED_WIRE_6),
	.L211(SYNTHESIZED_WIRE_7),
	.load(SYNTHESIZED_WIRE_8));


final_project_two_number_Register	b2v_inst1(
	.Largest_0(SYNTHESIZED_WIRE_0),
	.Largest_1(SYNTHESIZED_WIRE_1),
	.Largest_2(SYNTHESIZED_WIRE_2),
	.Largest_3(SYNTHESIZED_WIRE_3),
	.Second_largest_0(SYNTHESIZED_WIRE_4),
	.Second_largest_1(SYNTHESIZED_WIRE_5),
	.Second_largest_2(SYNTHESIZED_WIRE_6),
	.Second_largest_3(SYNTHESIZED_WIRE_7),
	.Load(SYNTHESIZED_WIRE_8),
	.Clock(Clock),
	.Zero(Zero),
	.L0(SYNTHESIZED_WIRE_17),
	.L1(SYNTHESIZED_WIRE_18),
	.L2(SYNTHESIZED_WIRE_19),
	.L3(SYNTHESIZED_WIRE_20),
	.S0(SYNTHESIZED_WIRE_21),
	.S1(SYNTHESIZED_WIRE_22),
	.S2(SYNTHESIZED_WIRE_23),
	.S3(SYNTHESIZED_WIRE_24));


convertToSevenSeg	b2v_inst2(
	.Inputseven(SYNTHESIZED_WIRE_9),
	.Inputsix(SYNTHESIZED_WIRE_10),
	.inputfive(SYNTHESIZED_WIRE_11),
	.inputfour(SYNTHESIZED_WIRE_12),
	.inputthree(SYNTHESIZED_WIRE_13),
	.inputtwo(SYNTHESIZED_WIRE_14),
	.inputone(SYNTHESIZED_WIRE_15),
	.Inputzero(SYNTHESIZED_WIRE_16),
	.HurnderdsA(HA),
	.HundredsB(HB),
	.HundredsC(HC),
	.HundredsD(HD),
	.HunderdsE(HE),
	.HundredsF(HF),
	.HundredsG(HG),
	.TensA(TA),
	.TensB(TB),
	.TensC(TC),
	.TensD(TD),
	.TensE(TE),
	.TensF(TF),
	.TensG(TG),
	.OnesA(OA),
	.OnesB(OB),
	.OnesC(OC),
	.OnesD(OD),
	.OnesE(OE),
	.OnesF(OF),
	.OnesG(OG));


multiplier	b2v_inst6(
	.L0(SYNTHESIZED_WIRE_17),
	.L1(SYNTHESIZED_WIRE_18),
	.L2(SYNTHESIZED_WIRE_19),
	.L3(SYNTHESIZED_WIRE_20),
	.S0(SYNTHESIZED_WIRE_21),
	.S1(SYNTHESIZED_WIRE_22),
	.S2(SYNTHESIZED_WIRE_23),
	.S3(SYNTHESIZED_WIRE_24),
	.A0(SYNTHESIZED_WIRE_16),
	.A1(SYNTHESIZED_WIRE_15),
	.A2(SYNTHESIZED_WIRE_14),
	.A3(SYNTHESIZED_WIRE_13),
	.A4(SYNTHESIZED_WIRE_12),
	.A5(SYNTHESIZED_WIRE_11),
	.A6(SYNTHESIZED_WIRE_10),
	.A7(SYNTHESIZED_WIRE_9));


endmodule
