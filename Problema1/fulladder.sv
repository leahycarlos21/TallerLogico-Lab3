module fulladder( input logic a, b, cin,
						output logic out, cout);
logic f1, f2, f3, b0;

xor_ U0(cin,b,b0);
xor_ U1(a,b0,f1);
xor_ U2(f1,cin,out);
and_ U3(f1,cin,f2);
and_ U4(a,b,f3);
or_ U5(f2,f3,cout);

endmodule 
