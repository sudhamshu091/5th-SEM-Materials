module logicgates(a,b,y);
  input a,b;
  output[6:0] y	;
  assign y[0] =  ~a;
  assign y[1] = a & b;
  assign y[2] = a|b;
  assign y[3] = ~(a&b);
  assign y[4] = ~(a|b);
  assign y[5] = a^b;
  assign y[6] = ~(a^b);
endmodule

module tb_logicgates;
  //Inputs
  reg a;
  reg b;

  //Outputs
  wire [6:0] y;

  logicgates gates (.a(a) ,.b(b) ,.y(y));
  
  initial begin
    a = 1'b0;
    b = 1'b0;
    #10;
    a=1;
      b=1;
      #45 $finish;
  end

  always #6 a = ~a;
  always #3 b = ~b;

  always @(y)
    $display("Time =%0t \ Input values: \t  a =%b b =%b \t y = %b ",$time,a,b,y);
endmodule