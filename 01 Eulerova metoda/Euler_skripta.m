% primjer a
f_a = @(x, y) -x.*y + x*exp(0.5*x.^2);
y_a_exact = @(x) cosh(0.5*x.^2);
n = (10:10:100)';
Euler_test(f_a, 1, 0, 1, n, y_a_exact, 'primjer A');
    
% primjer b
f_b = @(x, y) 2*x.*y - x;
y_b_exact = @(x) 1.5*exp(x.^2)-0.5;
Euler_test(f_b, 1, 0, 1, n, y_b_exact, 'primjer B');

% primjer c
f_c = @(x, y) 1 + x.^2;
y_c_exact = @(x) tan(x+pi/4);
Euler_test(f_c, 1, 0, 1, n, y_c_exact, 'primjer C');