module mux41( input a,
input b,
input c,
input d,
input s0, s1,
output y);

  assign y = s1 ? (s0 ? d : c) : (s0 ? b :a);
endmodule

module tb_mux41;
wire y;
reg a;
reg b;
reg c;
reg d;
reg s0, s1;

mux41 mux(.y(y), .a(a), .b(b), .c(c), .d(d), .s0(s0), .s1(s1));
  initial
  begin

  a=1'b0; b=1'b0; c=1'b0; d=1'b0;
  s0=1'b0; s1=1'b0;
  #400 $finish;

  end

  always #24 a=~a;
  always #12 b=~b;
  always #6 c=~c;
  always #3 d=~b;
  always #48 s0=~s0;
  always #96 s1=~s1;

  always @(a or b or c or d or s0 or s1)
    $display("Time=%t \t a=%b \t b=%b \t c=%b \t d=%b \t s0=%b \t s1=%b \t y=%d",$time,a,b,c,d,s0,s1,y);
endmodule