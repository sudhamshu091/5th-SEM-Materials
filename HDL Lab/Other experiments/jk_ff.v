module jkff(input clk, input j, input k, output reg q, output qb);
assign qb=~q;
always @(posedge clk)
  case ({j, k})
 2'b00: q<=q;
 2'b01: q<=1'b0;
 2'b10: q<=1'b1;
 2'b11: q<=~q;
 endcase
endmodule



module test;

reg clk=0;
reg j=0;
reg k=0;
wire q, qb;

  jkff dut(clk,j,k,q,qb);

initial
  begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
    j=1'b1;
    k=1'b1; #10
    j=1'b0; 
    k=1'b1; #10;
    j=1'b0; 
    k=1'b0; #10;
    j=1'b1;
    k=1'b0; #10;
 #100 $finish;
  end
initial $monitor($time, "j=%b, k=%b, q=%b, qb=%b", j, k, q, qb);

always #5 clk=~clk;

endmodule