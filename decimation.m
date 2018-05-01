clc; clear all; close all;
N = 50;
n = 0:1:N-1;
x= cos(2*pi*n/20);
subplot(2,1,1);
stem(n,x);
hold on;

%creating a low pass filter
%fir filter has denominator as 1

a=1;
b=fir1(5,0.5,'low');
y=filter(b,a,x);
stem(n,y);
hold off;

M=2;
x=y(1:M:N);
n1=1:1:(N/M);
subplot(2,1,2);
stem(n1,x);