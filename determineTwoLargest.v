module determineTwoLargest(Q000,Q001,Q010,Q011,Q100,Q101,Q110,Q111,Q200,Q201,Q210,Q211,Q300,Q301,Q310,Q311,Q400,Q401,Q410,Q411,L00,L01,L10,L11,L200,L201,L210,L211,St,load);
  input Q000,Q001,Q010,Q011,Q100,Q101,Q110,Q111,Q200,Q201,Q210,Q211,Q300,Q301,Q310,Q311,Q400,Q401,Q410,Q411,St;
  output reg L00,L01,L10,L11,L200,L201,L210,L211,load;
  
  integer num1 [3:0];//arrays num1-num5 hold values of each number inputed in binary form
  integer num2 [0:3];
  integer num3 [0:3];
  integer num4[0:3];
  integer num5[0:3];
  integer i; //variable used in the while loop
  integer num01;// num01-num05 are integers that hold the value of each number inputed in decimal form
  integer num02;
  integer num03;
  integer num04;
  integer num05;
  integer Largest; // holds the largest number
  integer Index1; // stores which of the variables is the largest number
  integer secLargest;// stores which of the variables is the second largest number
  integer Index2;// stores which of the variables is the second largest number
  

  
 
always@(St == 1)//starts the program whenever the start button is pressed 
   begin
	 num01 = 0;
    num02 = 0;
    num03 = 0;
    num04 = 0;
    num05 = 0;
	 Largest = 0;
	 Index1  =0;
	 secLargest = 0;
	 Index2 = 0;
    
	 load = 0;
    if(Q000 == 1)begin //lines 37-159 set the values of the arrays to the inputed bits 
     num1[0] = 1;
    end
     else
	  begin
       num1[0] = 0;
    end 
    if(Q001 == 1)begin
     num1[1] = 1;
    end
    else 
	 begin
       num1[1] = 0;
    end 
    if(Q010 == 1)
	  begin
     num1[2] = 1;
    end
    else begin
       num1[2] = 0;
    end 
     if(Q011 == 1)begin
     num1[3] = 1;
    end
    else begin
    num1[3] = 0;
    end 
    if(Q100 == 1)begin
     num2[0] = 1;
    end
    else begin
       num2[0] = 0;
    end 
    if(Q101 == 1)begin
     num2[1] = 1;
    end
    else begin
       num2[1] = 0;
    end 
    if(Q110 == 1)begin
     num2[2] = 1;
    end
    else begin
       num2[2] = 0;
    end 
     if(Q111 == 1)begin
     num2[3] = 1;
    end
    else begin
    num2[3] = 0;
    end
    if(Q200 == 1)begin
     num3[0] = 1;
    end
    else begin
       num3[0] = 0;
    end 
    if(Q201 == 1)begin
     num3[1] = 1;
    end
    else begin
       num3[1] = 0;
    end 
    if(Q210 == 1)begin
     num3[2] = 1;
    end
    else begin
       num3[2] = 0;
    end 
     if(Q211 == 1)begin
     num3[3] = 1;
    end
    else begin
    num3[3] = 0;
    end  
    if(Q300 == 1)begin
     num4[0] = 1;
    end
    else begin
       num4[0] = 0;
    end 
    if(Q301 == 1)begin
     num4[1] = 1;
    end
    else begin
       num4[1] = 0;
    end 
    if(Q310 == 1)begin
     num4[2] = 1;
    end
    else begin
       num4[2] = 0;
    end 
     if(Q311 == 1)begin
     num4[3] = 1;
    end
    else begin
    num4[3] = 0;
    end 
    if(Q400 == 1)begin
     num5[0] = 1;
    end
    else begin
       num5[0] = 0;
    end 
    if(Q401 == 1)begin
     num5[1] = 1;
    end
    else begin
       num5[1] = 0;
    end 
    if(Q410 == 1)begin
     num5[2] = 1;
    end
    else begin
       num5[2] = 0;
    end 
     if(Q411 == 1)begin
     num5[3] = 1;
    end
    else begin
    num5[3] = 0;
    end 

		i = 0;

	
   while (i<4)//uses the arrays that store the numbers in bit form to convert to decimal form for comparison  
	 begin

		 num01 = num01 + (num1[i]*(2**i));
		 num02 = num02 + (num2[i]*(2**i));
		 num03 = num03 + (num3[i]*(2**i));
		 num04 = num04 + (num4[i]*(2**i));
		 num05 = num05 + (num5[i]*(2**i));
       i = i + 1;
	
   end

	Largest = num01;
	Index1 = 1; //lines 178-197 determines the largest number inputed 
	 if(Largest < num02)
	  begin
	   Largest = num02;
		Index1 = 2;
	  end
	 if(Largest < num03)
	  begin
	   Largest = num03;
		Index1 = 3;
	  end
	 if(Largest < num04)
	  begin
	   Largest = num04;
		Index1 = 4;
	  end
	 if(Largest < num05)
	  begin
	   Largest = num05;
		Index1 = 5;
	  end
	  
    case(Largest) //sets the integer variable holding the largest number to 0 so that we don't find the same number twice
	   num01: num01 = 0;
		num02: num02 = 0;
		num03: num03 = 0;
		num04: num04 = 0;
		num05: num05 = 0;
		default: Largest = Largest;
	 endcase
	 
	 
	 secLargest = num01;
	 Index2 = 1;
	 if(secLargest < num02)//lines 211-230 find the second largest number through comparison
	  begin
	   secLargest = num02;
		Index2 = 2;
	  end
	 if(secLargest < num03)
	  begin
	   secLargest = num03;
		Index2 = 3;
	  end
	 if(secLargest < num04)
	  begin
	   secLargest = num04;
		Index2 = 4;
	  end
	 if(secLargest < num05)
	  begin
	   secLargest = num05;
		Index2 = 5;
	  end
	  
	 if(Index1 == 1)//lines 232-270 set the output bits of the largest number equal 
	  begin         //to the inputed bits of the number that correspondes to the Index1 value
		  L00 = Q000;
		  L01 = Q001;
		  L10 = Q010;
		  L11 = Q011;
	  end 
	  
	  if(Index1 == 2)
	  begin
	  L00 = Q100;
	  L01 = Q101;
	  L10 = Q110;
	  L11 = Q111;
	  end 
	   
	  if(Index1 == 3)
	  begin
	  L00 = Q200;
	  L01 = Q201;
	  L10 = Q210;
	  L11 = Q211;
	  end 

	  if(Index1 == 4)
	  begin
	  L00 = Q300;
	  L01 = Q301;
	  L10 = Q310;
	  L11 = Q311;
	  end 
	  
	  if(Index1 == 5)
	  begin
	  L00 = Q400;
	  L01 = Q401;
	  L10 = Q410;
	  L11 = Q411;
	  end 
	  
	  if(Index2 == 1) //lines 272-310 set the output bits of the second largest number equal
	  begin           //to the inputed bits of the number that correspondes to the Index2 value
	  L200 = Q000;
	  L201 = Q001;
	  L210 = Q010;
	  L211 = Q011;
	  end 
	  
	  if(Index2 == 2)
	  begin
	  L200 = Q100;
	  L201 = Q101;
	  L210 = Q110;
	  L211 = Q111;
	  end 
	   
	  if(Index2 == 3)
	  begin
	  L200 = Q200;
	  L201 = Q201;
	  L210 = Q210;
	  L211 = Q211;
	  end 

	  if(Index2 == 4)
	  begin
	  L200 = Q300;
	  L201 = Q301;
	  L210 = Q310;
	  L211 = Q311;
	  end 
	  
	  if(Index2 == 5)
	  begin
	  L200 = Q400;
	  L201 = Q401;
	  L210 = Q410;
	  L211 = Q411;
	  end 
	  
	load = 1; //sets the load output to 1 which tells the register file to load the new Largest and second Largest Values
   
   end 

endmodule