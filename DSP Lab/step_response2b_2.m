clc; close all; clear all
 b=input('Enter the co-efficients of b ie x[n]=');
 a=input('Enter the co-efficients of a ie y[n]=');
 N=input('Enter the length of response required N=');
 n=0:1:N-1;
 x=[ones(1,N)]; 
 y=filter(b,a,x)
 subplot(211); stem(n,x); title('Step input');
 subplot(212); stem(n,y); title('Step response');