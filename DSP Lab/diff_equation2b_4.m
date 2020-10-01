clc; clear all; close all; 
a=input('Enter the co-efficient of y(n),y(n-1)......= '); 
b=input('Enter the co-efficeint of x(n),x(n-1)......= '); 
xi=input('Enter the initial conditions x(-1),x(-2)... = '); 
 zi=filtic(b,a,input('Enter initial conditions y(-1),y(-2)....= '),xi); 
 n=0:5; %For 8 output samples using filter func, the i/p should also be of size 8
 x=(1/4).^n % input sequence input
 y=filter(b,a,x,zi) % output response
subplot(2,1,1); stem(n,x); title('input……….'); xlabel('n'); ylabel('x(n)'); 
subplot(2,1,2); stem(n,y); title('Res of DE with ICs '); xlabel('n'); ylabel('y(n)');