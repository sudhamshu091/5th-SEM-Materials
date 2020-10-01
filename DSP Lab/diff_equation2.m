clc; clear all;
a=input('Enter the co-efficient of y(n),y(n-1)......= '); 
b=input('Enter the co-efficeint of x(n),x(n-1)......= ');
Yic=input('Enter initial conditions Y(-1),Y(-2)....= ');
Xic=input('Enter initial conditions X(-1),X(-2)....= ');
zi=filtic(b,a,Yic,Xic);
n=0:9;
x=cos(pi*n/3); %input sequence input
y=filter(b,a,x,zi) %output response
subplot(2,1,1);stem(n,x);title('input');xlabel('n');ylabel('x(n)');
subplot(2,1,2);stem(n,y); title('response of difference equation with initial conditions ');
xlabel('n');ylabel('y(n)');