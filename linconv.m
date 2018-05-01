clc; clear all; close all;
x = input('input1 : ');
h = input('input2 : ');
l1=length(x);
l2=length(h);
l=l1+l2-1;

n1=0:l1-1;
n2=0:l2-1;
n=0:l-1;

h1=h(l2-n2);
n3 = -(l2-1):0;

for i=1:l
    h2 = [zeros(1,i-1) h1 zeros(1,l-i)];
    x1 = [zeros(1,l2-1) x zeros(1,l2-1)];
    y(i) = x1*h2';
end

disp(y);
stem