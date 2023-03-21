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
// CREATED		"Sat Dec  3 13:37:13 2022"

module final_Project_register(
	Clock,
	Load,
	X0,
	X1,
	X2,
	X3,
	Zero,
	Q0,
	Q1,
	Q2,
	Q3
);


input wire	Clock;
input wire	Load;
input wire	X0;
input wire	X1;
input wire	X2;
input wire	X3;
input wire	Zero;
output wire	Q0;
output wire	Q1;
output wire	Q2;
output wire	Q3;

wire	SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_10;
reg	DFF_inst;
wire	SYNTHESIZED_WIRE_18;
reg	DFF_inst1;
reg	DFF_inst2;
reg	DFF_inst3;

assign	Q0 = DFF_inst;
assign	Q1 = DFF_inst1;
assign	Q2 = DFF_inst2;
assign	Q3 = DFF_inst3;
assign	SYNTHESIZED_WIRE_17 = 1;




always@(posedge Clock or negedge SYNTHESIZED_WIRE_16 or negedge SYNTHESIZED_WIRE_17)
begin
if (!SYNTHESIZED_WIRE_16)
	begin
	DFF_inst <= 0;
	end
else
if (!SYNTHESIZED_WIRE_17)
	begin
	DFF_inst <= 1;
	end
else
	begin
	DFF_inst <= SYNTHESIZED_WIRE_1;
	end
end


always@(posedge Clock or negedge SYNTHESIZED_WIRE_16 or negedge SYNTHESIZED_WIRE_17)
begin
if (!SYNTHESIZED_WIRE_16)
	begin
	DFF_inst1 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_17)
	begin
	DFF_inst1 <= 1;
	end
else
	begin
	DFF_inst1 <= SYNTHESIZED_WIRE_4;
	end
end

assign	SYNTHESIZED_WIRE_18 =  ~Load;


always@(posedge Clock or negedge SYNTHESIZED_WIRE_16 or negedge SYNTHESIZED_WIRE_17)
begin
if (!SYNTHESIZED_WIRE_16)
	begin
	DFF_inst2 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_17)
	begin
	DFF_inst2 <= 1;
	end
else
	begin
	DFF_inst2 <= SYNTHESIZED_WIRE_7;
	end
end


always@(posedge Clock or negedge SYNTHESIZED_WIRE_16 or negedge SYNTHESIZED_WIRE_17)
begin
if (!SYNTHESIZED_WIRE_16)
	begin
	DFF_inst3 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_17)
	begin
	DFF_inst3 <= 1;
	end
else
	begin
	DFF_inst3 <= SYNTHESIZED_WIRE_10;
	end
end


twoToOneMux	b2v_inst4(
	.A(X0),
	.B(DFF_inst),
	.S(SYNTHESIZED_WIRE_18),
	.F(SYNTHESIZED_WIRE_1));


twoToOneMux	b2v_inst5(
	.A(X1),
	.B(DFF_inst1),
	.S(SYNTHESIZED_WIRE_18),
	.F(SYNTHESIZED_WIRE_4));


twoToOneMux	b2v_inst6(
	.A(X2),
	.B(DFF_inst2),
	.S(SYNTHESIZED_WIRE_18),
	.F(SYNTHESIZED_WIRE_7));


twoToOneMux	b2v_inst7(
	.A(X3),
	.B(DFF_inst3),
	.S(SYNTHESIZED_WIRE_18),
	.F(SYNTHESIZED_WIRE_10));

assign	SYNTHESIZED_WIRE_16 =  ~Zero;



endmodule
