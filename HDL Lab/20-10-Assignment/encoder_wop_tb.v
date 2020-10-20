module encoder_tb;
    reg [7:0] I;
    
    wire [2:0] D;
    
    encoder uut(
        .D(D), 
        .I(I) 
        
    );
    initial begin
        // Initialize Inputs
        
        
#10 I = 8'b10000000;
 #10 I = 8'b01000000;
 #10 I = 8'b00100000;
 #10 I = 8'b00010000;
 #10 I= 8'b00001000;
 #10 I= 8'b00000100;
 
#10 I = 8'b00000010;
#10 I = 8'b00000001;
#10;
 end 
 initial begin
 $monitor("time=",$time, "I=%b : D=%b ",I,D); 
 end      
endmodule
