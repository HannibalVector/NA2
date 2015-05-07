function [ T, Y ] = Trapez( a, r, t0, t1, y0, n )
%TRAPEZ Summary of this function goes here
%   Detailed explanation goes here

h = (t1 - t0) / (n -1);
T = (t0:h:t1)';

d = size(y0, 1);
Y = zeros(d, n);
Y(:, 1) = y0;

A = (1 - 0.5*a*h)/(1 + 0.5*a*h);
B = (h*r)/(1 + 0.5*a*h);

for i = 1:(n-1)
    Y(:, i+1) = Y(:, i)*A + B;
end

