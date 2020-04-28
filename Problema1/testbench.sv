module testbench;


logic [3:0]selectALU;
logic [3:0]A;
logic [3:0]B;
logic [3:0]out;

ALU#(4) DUT(selectALU,A,B,out);

initial begin
#10;
selectALU = 4'b0000; A = 4'b1111; B= 4'b1111;

#10;
selectALU = 4'b0001; A = 4'b0001; B= 4'b0010;

#10;
selectALU = 4'b010; A = 4'b0111; B= 4'b1011;
//in2 = 4'b1111;
end
endmodule	
		
/*
logic a,b,cin,out, cout;

fulladder DUT(a,b,cin,out, cout);

initial begin
a=0; b=1; cin=0;
#10
a=1; b=1; cin=0;
#10
a=1; b=0; cin=1;
#10
a=1; b=1; cin=1;
end
*/
/*
logic [3:0] selectCase;
logic [1:0] out;

 mux_N DUT(selectCase, 
											2'b00 ,
											2'b01 ,
											2'b10 ,
											2'b11 ,
											2'b00 ,
											2'b00 ,
											2'b00 ,
											2'b00 ,
											2'b00 ,
										 out);

initial begin
selectCase = 4'b0000;

#10
selectCase = 4'b0010;




end

endmodule*/

/*
logic [3:0]out;
logic [3:0]in;
logic [3:0]n;
shift_right_logical DUT(	in,
								n,
								out);
								
								
initial begin
#10;
in = 4'b1100;
n=4'b0010;
#10;
in = 4'b1111;
n=4'b0001;
#10;
in = 4'b1111;
n=4'b0000;
end
endmodule*/		
/*

logic [3:0]in1;
logic [3:0]in2;
logic [3:0]out;
//or_ DUT(	in1,in2,	out);
not_ DUT(in1,out);
								
								
initial begin
#10;
in1 = 4'b1100;
//in2 = 4'b0011;
#10;
in1 = 4'b1111;
//in2 = 4'b1101;
#10;
in1 = 4'b1111;
//in2 = 4'b1111;
end
endmodule
		*/
		

				 
	