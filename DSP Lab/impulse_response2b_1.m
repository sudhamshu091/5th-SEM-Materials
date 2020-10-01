N=input('Length of response required='); 
b=[1]; %x[n] coefficient
a=[1,-1,0.9]; %y coefficients
x=[1,zeros(1,N-1)]; %impulse input
n=0:1:N-1; %time vector for plotting
h=filter(b,a,x); %impulse response
disp(h); 
subplot(2,1,1); stem(n,x); title('impulse input ….'); xlabel('n');ylabel('x(n)'); 
subplot(2,1,2); stem(n,h); title('impulse response'); xlabel('n');ylabel('h(n)');