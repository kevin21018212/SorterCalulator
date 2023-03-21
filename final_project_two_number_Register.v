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
// CREATED		"Mon Dec  5 16:11:44 2022"

module final_project_two_number_Register(
	Clock,
	Load,
	Largest_0,
	Largest_1,
	Largest_2,
	Largest_3,
	Second_largest_0,
	Second_largest_1,
	Second_largest_2,
	Second_largest_3,
	Zero,
	L0,
	L1,
	L2,
	L3,
	S0,
	S1,
	S2,
	S3
);


input wire	Clock;
input wire	Load;
input wire	Largest_0;
input wire	Largest_1;
input wire	Largest_2;
input wire	Largest_3;
input wire	Second_largest_0;
input wire	Second_largest_1;
input wire	Second_largest_2;
input wire	Second_largest_3;
input wire	Zero;
output wire	L0;
output wire	L1;
output wire	L2;
output wire	L3;
output wire	S0;
output wire	S1;
output wire	S2;
output wire	S3;






final_Project_register	b2v_inst(
	.Load(Load),
	.X0(Largest_0),
	.X1(Largest_1),
	.X2(Largest_2),
	.X3(Largest_3),
	.Clock(Clock),
	.Zero(Zero),
	.Q0(L0),
	.Q1(L1),
	.Q2(L2),
	.Q3(L3));


final_Project_register	b2v_inst1(
	.Load(Load),
	.X0(Second_largest_0),
	.X1(Second_largest_1),
	.X2(Second_largest_2),
	.X3(Second_largest_3),
	.Clock(Clock),
	.Zero(Zero),
	.Q0(S0),
	.Q1(S1),
	.Q2(S2),
	.Q3(S3));


endmodule
