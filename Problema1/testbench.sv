module testbench;


logic [3:0]selectALU, A, B,out, flagOut;

ALU#(4) DUT(selectALU,A,B,out,flagOut);

initial begin
//------------------------Banderas---------------------------
selectALU = 4'b0000; A = 4'b0000; B= 4'b0000;//sum Prueba Flag Zero
#10;
assert (out === 4'b0000) else $error("Sum 0 failed");
assert (flagOut === 4'b0001) else $error("Flag Zero failed");

selectALU = 4'b0000; A = 4'b1111; B= 4'b0111;//suma Prueba Flag Carry   
#10;
assert (out === 4'b0110) else $error("Sum 1 failed");
assert (flagOut === 4'b0100) else $error("Flag  Carry failed");

selectALU = 4'b0000; A = 4'b1010; B= 4'b1001;//suma Prueba Flag Overflow
#10;
assert (out === 4'b0011) else $error("Sum 2 failed");
assert (flagOut === 4'b1100) else $error("Flag Overflow failed");

selectALU = 4'b0001; A = 4'b0001; B= 4'b0010;//resta Prueba Flag N   R
#30;
assert (out === 4'b1111) else $error("Resta 0 failed");
assert (flagOut === 4'b0010) else $error("Flag Overflow failed");
//----------------------Fin Banderas-------------------------

//-----------------Operaciones Artimeticas-------------------
selectALU = 4'b0000; A = 4'b0010; B= 4'b0010;//sum 
#10;
assert (out === 4'b0100) else $error("Sum 3 failed");

selectALU = 4'b0000; A = 4'b0010; B= 4'b0001;//sum 
#10;
assert (out === 4'b0011) else $error("Sum 4 failed");

selectALU = 4'b0000; A = 4'b0100; B= 4'b0011;//sum 
#10;
assert (out === 4'b0111) else $error("Sum 5 failed");


selectALU = 4'b0001; A = 4'b0011; B= 4'b0010;//resta 
#10;
assert (out === 4'b0001) else $error("Resta 1 failed");

selectALU = 4'b0001; A = 4'b0100; B= 4'b0010;//resta 
#10;
assert (out === 4'b0010) else $error("Resta 2 failed");

selectALU = 4'b0001; A = 4'b0101; B= 4'b0010;//resta 
#10;
assert (out === 4'b0011) else $error("Resta 3 failed");

selectALU = 4'b0001; A = 4'b0101; B= 4'b0011;//resta 
#10;
assert (out === 4'b0010) else $error("Resta 4 failed");

selectALU = 4'b0001; A = 4'b0111; B= 4'b0011;//resta 
#30;
assert (out === 4'b0100) else $error("Resta 5 failed");

//--------------FIN Operaciones Artimeticas-----------------

//------------------Operaciones Logicas---------------------


selectALU = 4'b0010; A = 4'b1111; B= 4'b1111; //and
#10;
assert (out === 4'b1111) else $error("AND 0 failed");

selectALU = 4'b0010; A = 4'b1010; B= 4'b1010; //and
#10;
assert (out === 4'b1010) else $error("AND 1 failed");

selectALU = 4'b0010; A = 4'b1110; B= 4'b1010; //and
#10;
assert (out === 4'b1010) else $error("AND 2 failed");

selectALU = 4'b0010; A = 4'b1110; B= 4'b1011; //and
#10;
assert (out === 4'b1010) else $error("AND 3 failed");

selectALU = 4'b0010; A = 4'b1111; B= 4'b0011; //and
#10;
assert (out === 4'b0011) else $error("AND 4 failed");

selectALU = 4'b0010; A = 4'b1011; B= 4'b1111; //and
#10;
assert (out === 4'b1011) else $error("AND 5 failed");


selectALU = 4'b0011; A = 4'b0001; B= 4'b0010; //or
#10;
assert (out === 4'b0011) else $error("OR 0 failed");

selectALU = 4'b0011; A = 4'b0001; B= 4'b0110; //or
#10;
assert (out === 4'b0111) else $error("OR 1 failed");

selectALU = 4'b0011; A = 4'b1001; B= 4'b0110; //or
#10;
assert (out === 4'b1111) else $error("OR 2 failed");

selectALU = 4'b0011; A = 4'b1000; B= 4'b0110; //or
#10;
assert (out === 4'b1110) else $error("OR 3 failed");

selectALU = 4'b0011; A = 4'b1101; B= 4'b0110; //or
#10;
assert (out === 4'b1111) else $error("OR 4 failed");

selectALU = 4'b0011; A = 4'b1001; B= 4'b0010; //or
#10;
assert (out === 4'b1011) else $error("OR 5 failed");


selectALU = 4'b0100; A = 4'b0101; B= 4'b1010; //xor
#10;
assert (out === 4'b1111) else $error("XOR 0 failed");

selectALU = 4'b0100; A = 4'b1011; B= 4'b1011; //xor
#10;
assert (out === 4'b0000) else $error("XOR 1 failed");

selectALU = 4'b0100; A = 4'b1111; B= 4'b0000; //xor
#10;
assert (out === 4'b1111) else $error("XOR 2 failed");

selectALU = 4'b0100; A = 4'b1100; B= 4'b0011; //xor
#10;
assert (out === 4'b1111) else $error("XOR 3 failed");

selectALU = 4'b0100; A = 4'b1100; B= 4'b1100; //xor
#10;
assert (out === 4'b0000) else $error("XOR 4 failed");

selectALU = 4'b0100; A = 4'b1101; B= 4'b1101; //xor
#10;
assert (out === 4'b0000) else $error("XOR 5 failed");


selectALU = 4'b0101; A = 4'b1111; //not
#10;
assert (out === 4'b0000) else $error("NOT 0 failed");

selectALU = 4'b0101; A = 4'b1010; //not
#10;
assert (out === 4'b0101) else $error("NOT 1 failed");

selectALU = 4'b0101; A = 4'b1100; //not
#10;
assert (out === 4'b0011) else $error("NOT 2 failed");

selectALU = 4'b0101; A = 4'b1011; //not
#10;
assert (out === 4'b0100) else $error("NOT 3 failed");

selectALU = 4'b0101; A = 4'b0000; //not
#10;
assert (out === 4'b1111) else $error("NOT 4 failed");

selectALU = 4'b0101; A = 4'b0001; //not
#30;
assert (out === 4'b1110) else $error("NOT 5 failed");
//---------------FIN Operaciones Logicas--------------------

//---------------------Corrimiento--------------------------

selectALU = 4'b0110; A = 4'b1110; B= 4'b0010; //sll
#10;
assert (out === 4'b1000) else $error("SLL 0 failed");

selectALU = 4'b0110; A = 4'b1110; B= 4'b0011; //sll
#10;
assert (out === 4'b0000) else $error("SLL 1 failed");

selectALU = 4'b0110; A = 4'b1110; B= 4'b0001; //sll
#10;
assert (out === 4'b1100) else $error("SLL 2 failed");

selectALU = 4'b0110; A = 4'b1111; B= 4'b0001; //sll
#10;
assert (out === 4'b1110) else $error("SLL 3 failed");

selectALU = 4'b0110; A = 4'b1101; B= 4'b0001; //sll
#10;
assert (out === 4'b1010) else $error("SLL 4 failed");

selectALU = 4'b0110; A = 4'b1001; B= 4'b0001; //sll
#10;
assert (out === 4'b0010) else $error("SLL 5 failed");


selectALU = 4'b0111; A = 4'b1110; B= 4'b0010; //srl
#10;
assert (out === 4'b0011) else $error("SRL 0 failed");

selectALU = 4'b0111; A = 4'b1110; B= 4'b0001; //srl
#10;
assert (out === 4'b0111) else $error("SRL 1 failed");

selectALU = 4'b0111; A = 4'b1110; B= 4'b0011; //srl
#10;
assert (out === 4'b0001) else $error("SRL 2 failed");

selectALU = 4'b0111; A = 4'b0110; B= 4'b0011; //srl
#10;
assert (out === 4'b0000) else $error("SRL 3 failed");

selectALU = 4'b0111; A = 4'b1110; B= 4'b0100; //srl
#10;
assert (out === 4'b0000) else $error("SRL 4 failed");

selectALU = 4'b0111; A = 4'b1010; B= 4'b0001; //srl
#10;
assert (out === 4'b0101) else $error("SRL 5 failed");


selectALU = 4'b1000; A = 4'b1100; B= 4'b0010; //ars
#10;
assert (out === 4'b1111) else $error("ARS failed");
//---------------------FIN Corrimiento----------------------


end
endmodule		

				 
	