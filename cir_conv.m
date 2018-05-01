clc; clear all; close all;

x = input('Enter sequence 1 : ');
h = input('Enter sequence 2 : ');

l1 = length(x);
l2 = length(h);
l = max(l2,l1);

if l1>l2
    h = [h zeros(1,l1-l2)];
elseif l2>l1
    x = [x zeros(1,l2-l1)];
end
   
for i=1:l
    h = [h(l) h(1:l-1)];
    y(i) = x*h';
end
   
disp(y);