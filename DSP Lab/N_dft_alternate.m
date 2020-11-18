% Computation of N point DFT of a given sequence and
% to plot magnitude and phase spectrum.
clc; close all; clear all;
format compact;
N = input('Enter the the value of N for N-Point DFT = ');
xn = input('Enter the sequence for which DFT to be calculated = ');
 n=[0:1:N-1]; % row vector for n
k=[0:1:N-1]; % row vecor for k
 WN=exp(-j*2*pi/N) % Wn factor
 nk=n'*k; % creates a N by N matrix of nk values
 WNnk=WN.^nk; % DFT matrix
 Xk=xn*WNnk % row vector for DFT coefficients
% To verify IDFT
WNnkI= WN.^(-nk); % IDFT matrix
 xnI=(Xk*WNnkI)/N % row vector for IDFT values
 Realval=abs(xnI)
MagX=abs(Xk) % Magnitude of calculated DFT
PhaseX=angle(Xk)*180/pi % Phase of the calculated DFT
subplot(2,1,1); stem(k,MagX);
subplot(2,1,2); stem(k,PhaseX); 
