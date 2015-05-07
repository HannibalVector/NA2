function [ T, Y ] = Euler( f, t0, t1, y0, n )
%EULER Summary of this function goes here
%   Detailed explanation goes here

h = (t1 - t0) / (n -1);
T = (t0:h:t1)';

d = size(y0, 1);
Y = zeros(d, n);
Y(:, 1) = y0;

for i = 1:(n-1)
    Y(:, i+1) = Y(:, i) + h*f(T(i), Y(:, i));
end

