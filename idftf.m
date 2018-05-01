function [y] = idftf( x )
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here
N = length(x);
temp= 2*i*pi/N;
k=0:N-1;
for n=0:N-1
    w=exp(k.*(temp*n));
    y(n+1)=(x*w')/N;
end

