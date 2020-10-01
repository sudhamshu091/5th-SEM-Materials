clc; clear all; close all; 
N = 10; 
n = -N:1:N; 
% unit Impulse
x1=[zeros(1,N) 1 zeros(1,N)]; 
subplot(3,2,1); stem(n,x1); title(' Impulse Signal'); 
%unit Step signal
x2=[zeros(1,N) 1 ones(1,N)]; 
subplot(3,2,2); stem(n,x2); title('Unit step signal'); 
%Unit Ramp signal
a1= 2; 
x3=a1*n; 
subplot(3,2,3); stem(n,x3); title('Unit ramp signal'); 
%Exponential growing/decaying signal
n2=0:0.1:N; 
a2=2; 
x4=a2.^n2; 
subplot(3,2,4); stem(n2,x4); title( 'Exponential growing signal'); 
a3=0.5; 
x5=a3.^n2; 
subplot(3,2,5); stem(n2,x5); title( 'Exponential decaying signal'); 
%cosine siganl
x6=cos(n2); 
subplot(3,2,6); stem(n2,x6); title('Cosine signal');