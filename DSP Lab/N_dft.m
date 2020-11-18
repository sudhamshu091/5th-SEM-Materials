clc; close all; clear all;
x=input('enter the sequence='); %x[n] sequence
n=input('enter the length='); %N points for DFT
xk=fft(x,n); %computes DFT
disp(xk);
subplot(2,2,1); stem(x,'filled'); title('plot of input sequence');
subplot(2,2,2); stem(real(xk),'filled'); title('plot of real xk');
subplot(2,2,3); stem(abs(xk),'filled'); title('Magnitude spectrum');
subplot(2,2,4); stem(angle(xk),'filled'); title('Phase spectrum'); 