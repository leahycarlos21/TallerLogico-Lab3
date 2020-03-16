module or_#(parameter size=2)(input logic [size-1:0]a, b,
				output logic [size-1:0] c);
assign c = a | b;
endmodule 
 