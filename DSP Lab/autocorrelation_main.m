clear all; close all; clc;
 x=input('Enter the Sequence: x= ');
 nx=input('Enter time index for the Sequence: nx= ');
 [y,ny]=convm(x,nx,fliplr(x),-fliplr(nx))
 subplot(211); stem(nx,x); xlabel('n'); ylabel('x[n]');
 subplot(212); stem(ny,y); xlabel('n'); ylabel('y[n]');
 title('Autocorrelation '); 