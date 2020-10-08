module fulladder_struct (a, b, cin, sum, cout);
input a, b, cin;
output sum, cout;
wire s1,s2,s3;
xor x1(sum,a,b,cin);
and a1(s1,a,b);
and a2(s2,a,cin);
and a3(s3,b,cin);
or o1(cout,s1,s2,s3);
endmodule


`timescale 1ns / 1ps
module fulladder_tb;
reg  a,b,cin;
wire sum, cout;  
fulladder adder(.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));
 initial begin
 
 #100; 
 
 a =1;
 b =0;
 cin =0;
 #10;
 a =0;
 b =1;
 cin =0;
 #10;
 a=1;
 b =1;
 cin=0;
 #10;
 a =0;
 b =0;
 cin =1;
 #10;
 a =1;
 b =0;
 cin =1;
 #10;
 a =1;
 b =0;
 cin =1;
 #10;
 a =0;
 b =1;
 cin =1;
 #10;
 a=1;
 b =1;
 cin =1;
 
 end
      
endmodule 
