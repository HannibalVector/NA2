function [ y, h ] = Euler2( f, y0, a, b, n )
%EULER Summary of this function goes here

    h = (b-a)/n;
    h2 = h/2;
    y = zeros(n+1, 1);
    t = (a:h:b)';
    y(1) = y0;
    for i = 1:n
        y(i+1) = y(i) + h*f(t(i) + h2, y(i) + h2*f(t(i),y(i)));
    end
end
