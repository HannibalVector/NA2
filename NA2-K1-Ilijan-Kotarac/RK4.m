function [ T, Y ] = RK4( f, t0, t1, y0, n )
%RK4 Summary of this function goes here
%   Detailed explanation goes here


h = (t1 - t0) / (n -1);
T = (t0:h:t1)';

d = size(y0, 1);
Y = zeros(d, n);
Y(:, 1) = y0;

for i = 1:(n-1)
    y = Y(:, i);
    t = T(i);
    
    psi1 = f(t, y);
    psi2 = f(t + h/2, y + h/2 * psi1);
    psi3 = f(t + h/2, y + h/2 * psi2);
    psi4 = f(t + h, y + h * psi3);
    
    Y(:, i+1) =  y + h/6 * (psi1 + 2*psi2 + 2*psi3 + psi4);
end


end

