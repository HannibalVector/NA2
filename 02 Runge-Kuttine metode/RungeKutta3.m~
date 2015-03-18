function [ y, h ] = RungeKutta3( f, y0, ti, tf, n, a, c, A )
%RungeKutta Summary of this function goes here

    h = (tf - ti)/n;
    y = zeros(n+1, 1);
    t = (ti:h:tf)';
    y(1) = y0;
    for i = 1:n
        Psi1 = f(t(i), y(i));
        Psi2 = f(t(i) + a(2)*h, y(i) + h*A(1)*Psi1);
        Psi3 = f(t(i) + a(3)*h, y(i) + h*(A(2)*Psi1 + A(3)*Psi2));
        y(i+1) = y(i) + h*(c(1)*Psi1 + c(2)*Psi2 + c(3)*Psi3);
    end
end
