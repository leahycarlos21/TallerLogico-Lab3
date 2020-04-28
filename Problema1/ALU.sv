module ALU# (parameter size=4)(input logic [3:0] selectCase, 
											input [size-1:0] a,b
											,output logic [size-1:0] outALU);
											
logic [size-1:0] andOut, orOut, xorOut, notOut, sllOut,srlOut;


and_#(size)  andALU(a,b,andOut);
or_#(size)  orALU(a,b,orOut);
xor_#(size)  xorALU(a,b,xorOut);
not_#(size)  notALU(a,notOut);

shift_left_logical#(size) sll(a,b,sllOut);
shift_right_logical#(size) srl(a,b,srlOut);

mux_N#(size) mux_NALU(selectCase,
								andOut,
								orOut,
								xorOut,
								notOut,
								sllOut,
								srlOut,
								orOut,
								orOut,
								orOut,
								outALU);




											
endmodule			
