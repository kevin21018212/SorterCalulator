module multiplier(A0,A1,A2,A3,A4,A5,A6,A7,L0,L1,L2,L3,S0,S1,S2,S3);
		input L0,L1,L2,L3,S0,S1,S2,S3;
		output reg A0,A1,A2,A3,A4,A5,A6,A7;
		
		integer num1[0:3];
      integer num2[0:3];
		integer num3[0:7];
		integer start = 1;
		integer i;
		integer d;
		integer num01;
		integer num02;
		integer num03;
		always@(L0 or L1 or L2 or L3 or S0 or S1 or S2 or S3)
			begin

			num01 = 0;
			num02 = 0;
			num03 = 0;
			num3[0] = 0;
			num3[1] = 0;
			num3[2] = 0;
			num3[3] = 0;
			num3[4] = 0;
			num3[5] = 0;
			num3[6] = 0;
			num3[7] = 0;
			i = 0;
			d = 7;
		 if(L0 == 1)
		  begin
		  num1[0] = 1;
		 end
		 else begin
			 num1[0] = 0;
		 end 
		 if(L1 == 1)
		  begin
		  num1[1] = 1;
		 end
		 else 
		  begin
			 num1[1] = 0;
		 end 
		 if(L2 == 1)
		  begin
		  num1[2] = 1;
		 end
		 else begin
			 num1[2] = 0;
		 end 
		  if(L3 == 1)
		   begin
		  num1[3] = 1;
		 end
		 else 
		  begin
		 num1[3] = 0;
		 end 
		 if(S0 == 1)
		  begin
		  num2[0] = 1;
		 end
		 else
		  begin
			 num2[0] = 0;
		 end 
		 if(S1 == 1)
		  begin
		  num2[1] = 1;
		 end
		 else 
		  begin
			 num2[1] = 0;
		 end 
		 if(S2 == 1)
		  begin
		  num2[2] = 1;
		 end
		 else 
		  begin
			 num2[2] = 0;
		 end 
		  if(S3 == 1)
		   begin
		  num2[3] = 1;
		 end
		 else begin
		 num2[3] = 0;
		 end
					
			while (i<4) 
				begin
					
		         num01 = num01+(num1[i]*(2**i));
					num02 = num02+(num2[i]*(2**i));
               i = i + 1;
				end
			 num03 = num01*num02;
          $write("num03:",num03);
			while(d >= 0)
				begin
				 if(num03 >= (2**d))
					begin
					 num3[d] = 1;
					 num03 = num03 - (2**d);
					 $write("num03",num03);
					end
				 else
				   begin
					 num3[d] = 0;
					end
				d = d-1;
				end
					   
			if(num3[7] == 1)
				begin
				A7 = 1;
				end
			else
				begin
				A7 = 0;
				end
			if(num3[6] == 1)
				begin
				A6 = 1;
				end
			else
				begin
				A6 = 0;
				end
        	if(num3[5] == 1)
				begin
				A5 = 1;
				end
			else
				begin
				A5 = 0;
				end
			if(num3[4] == 1)
				begin
				A4 = 1;
				end
			else
				begin
				A4 = 0;
				end
         if(num3[3] == 1)
				begin
				A3 = 1;
				end
			else
				begin
				A3 = 0;
				end
         if(num3[2] == 1)
				begin
				A2 = 1;
				end
			else
				begin
				A2 = 0;
				end
		   if(num3[1] == 1)
				begin
				A1 = 1;
				end
			else
				begin
				A1 = 0;
				end
     		if(num3[0] == 1)
				begin
				A0 = 1;
				end
			else
				begin
				A0 = 0;
				end
			end
			

			
endmodule