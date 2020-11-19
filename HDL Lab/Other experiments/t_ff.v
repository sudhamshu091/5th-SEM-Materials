module tff(t, clk, q, qb);
input t, clk;
output q, qb;
reg q, qb;
always @(posedge clk)
begin
q<=1'b0; qb<=1'b1;
if (t==1'B0)
begin
q = q; qb = qb;
end
else
begin
q = ~q; qb = ~qb;
end
end
endmodule

module tff_tb();
 reg clk, t;
wire q, qb;

tff t1(.clk(clk), .t(t), .q(q), .qb(qb));

initial begin
clk=0;
forever #10 clk=~clk;
end

initial begin
 t=1'b0; #20;
 t=1'b1; #20;
 t=1'b0; #20;
 t=1'b1; #20;
 t=1'b1; #20;
 t=1'b0; #20; 
end
initial $monitor($time, "t=%b, q=%b, qb=%b", t, q, qb);
initial begin
end
initial #200 $finish;

endmodule