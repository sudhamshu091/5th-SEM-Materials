module encoder_tb;
    reg [7:0] I;
    
    wire [2:0] D;
    
    encoder uut(
        .D(D), 
        .I(I) 
        
    );
    initial begin
        // Initialize Inputs
        
#10 I = 8'b00000001;
#10 I= 8'b0000001x;
#10 I = 8'b000001xx;
#10 I = 8'b00001xxx;
#10 I= 8'b0001xxxx;
#10 I = 8'b001xxxxx;
#10 I = 8'b01xxxxxx;
#10 I = 8'b1xxxxxxx;

#10;
 end 
 initial begin
 $monitor("time=",$time, "I=%b : D=%b ",I,D); 
 end      
endmodule
