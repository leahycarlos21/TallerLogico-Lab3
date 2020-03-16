module mux_# (parameter size =9)(input logic [3:0] selectCase, 
											input logic [size-1:0] value0 ,
											[size-1:0] value1 ,
											[size-1:0] value2 ,
											[size-1:0] value3 ,
											[size-1:0] value4 ,
											[size-1:0] value5 ,
											[size-1:0] value6 ,
											[size-1:0] value7 ,
											[size-1:0] value8 ,
											output logic [size-1:0] out);
		always @ (selectCase )begin
		case(selectCase)
			4'b0000 :out = value0;
			4'b0001 :out = value1;
			4'b0010 :out = value2;
			4'b0011 :out = value3;
			4'b0100 :out = value4;
			4'b0101 :out = value5;
			4'b0110 :out = value6;
			4'b0111 :out = value7;
			4'b1000 :out = value8;
			default :out = value0;
			
		endcase 
	end
endmodule
											
	