module newplus3(w,x,y,z,a,b,c,d);
input w,x,y,z;
output a,b,c,d;
reg a,b,c,d;

always @ (w or x or y or z)
	case ({w,x,y,z})
	4'b0000: {a,b,c,d} = 4'b0000;
	4'b0001: {a,b,c,d} = 4'b0001;
	4'b0010: {a,b,c,d} = 4'b0010;
	4'b0011: {a,b,c,d} = 4'b0011;
	4'b0100: {a,b,c,d} = 4'b0100;
	4'b0101: {a,b,c,d} = 4'b1000;
	4'b0110: {a,b,c,d} = 4'b1001;
	4'b0111: {a,b,c,d} = 4'b1010;
	4'b1000: {a,b,c,d} = 4'b1011;
	4'b1001: {a,b,c,d} = 4'b1100;
	default: {a,b,c,d} = 4'b0000;
	endcase
endmodule