function [y] = dftf(x)
%add an extra parameter (l) if you want to take in the length of the sequence
%also and comment the next line
l= length(x);
temp = (-2)*i*pi/l;
n= 0:l-1;

for k = 0:l-1
    w = exp(n.*(temp*k));
    y(k+1)=x*w';
end

end

