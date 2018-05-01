function [y] = dftf(x)
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here
l= length(x);
temp = (-2)*i*pi/l;
n= 0:l-1;
for k = 0:l-1
    w = exp(n.*(temp*k));
    y(k+1)=x*w';
end

end

