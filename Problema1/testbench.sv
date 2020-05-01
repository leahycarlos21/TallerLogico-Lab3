module testbench;


logic [3:0]selectALU, A, B,out, flagOut;

ALU#(4) DUT(selectALU,A,B,out,flagOut);

initial begin
#10;
selectALU = 4'b0000; A = 4'b0000; B= 4'b0000;//sum Prueba Flag Zero

#10;
selectALU = 4'b0000; A = 4'b0101; B= 4'b0100;//suma Prueba Flag Carry   REVISAR

#10;
selectALU = 4'b0000; A = 4'b1010; B= 4'b1001;//suma Prueba Flag Overflow

#10;
selectALU = 4'b0001; A = 4'b0001; B= 4'b0010;//resta Prueba Flag N   R

#10;
selectALU = 4'b0010; A = 4'b1111; B= 4'b1111; //and

#10;
selectALU = 4'b0011; A = 4'b0001; B= 4'b0010; //or

#10;
selectALU = 4'b0100; A = 4'b0111; B= 4'b1011; //xor

#10;
selectALU = 4'b0101; A = 4'b1111; //not

#10;
selectALU = 4'b0110; A = 4'b1110; B= 4'b0010; //sll

#10;
selectALU = 4'b0111; A = 4'b1110; B= 4'b0010; //srl

#10;
selectALU = 4'b1000; A = 4'b1100; B= 4'b0010; //ars


end
endmodule	
		

				 
	