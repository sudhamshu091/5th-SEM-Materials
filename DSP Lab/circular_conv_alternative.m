clc; clear all; close all;
 x=input('Enter the input sequence: x(n)=');
 h=input('Enter the impulse sequence: h(n)=');
 N=input('Enter the length N='); %% N=max(length(x),length(h));
 % x= [1 2 3 4]; h=[1 2 3 4]; N= 7 or N=5
 x=[x zeros(1,N-length(x))];
 h=[h zeros(1,N-length(h))];
 H=zeros(N,N);
 for n=1:N
 m=0:N-1;
 H(n,:)=h(mod(n-m-1,N)+1);
 end
 y=x*H';
 subplot(311); stem(x,'filled');
 subplot(312); stem(h,'filled');
 subplot(313); stem(y,'filled');
 disp('Resultant: ');
 y