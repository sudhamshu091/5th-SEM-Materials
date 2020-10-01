clc; clear all; close all;
format compact
N=input('Enter the length of impulse response ='); 
b=input('Enter the numerator coeff = '); 
a=input('Enter the denominator coeff = '); 
[r,p,k]=residuez(b,a) 
[h,t]=impz(b,a,N) 
figure(1);
stem(t,h); grid; 
xlabel('Time index'); ylabel('Amplitude'); title('Impulse Response'); 
figure(2);
zplane(b,a);