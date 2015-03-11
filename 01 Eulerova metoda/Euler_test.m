function [ epsilon ] = Euler_test( f, a, b, h, y_a, y_egz )
%EULER_TEST1 Summary of this function goes here
%   Detailed explanation goes here
    N = (b - a)/h;
    y_a_approx = Euler(f, 1, a, b, N);

end

