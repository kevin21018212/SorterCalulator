module twoToOneMux(A,B,S,F);
	input A,B,S;
	output F;
	
	assign F = ((A&~S)|(B&S));
endmodule