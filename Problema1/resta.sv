module resta# (parameter size = 4)(input logic [size-1:0] a, b, 
											output logic [size-1:0] result,
											output logic cout);
											
assign {cout,result} = a - b;
endmodule 