n = (10:2:100)';
a_Kutta = [0 1/2 1];
c_Kutta = [1/6 2/3 1/6]';
A_Kutta = [1/2 -1 2]';
a_Heun = [0 1/3 2/3]';
c_Heun = [1/4 0 3/4]';
A_Heun = [1/3 0 2/3]';


% primjer a
f_a = @(x, y) -x.*y + x*exp(0.5*x.^2);
y_a_exact = @(x) cosh(0.5*x.^2);
RungeKutta3_test(a_Kutta, c_Kutta, A_Kutta, f_a, 1, 0, 1, n, y_a_exact, 'primjer A (Kutta)');
RungeKutta3_test(a_Heun, c_Heun, A_Heun, f_a, 1, 0, 1, n, y_a_exact, 'primjer A (Heun)');

% primjer b
f_b = @(x, y) 2*x.*y + x;
y_b_exact = @(x) 1.5*exp(x.^2)-0.5;
RungeKutta3_test(a_Kutta, c_Kutta, A_Kutta, f_b, 1, 0, 1, n, y_b_exact, 'primjer B (Kutta)');
RungeKutta3_test(a_Heun, c_Heun, A_Heun, f_b, 1, 0, 1, n, y_b_exact, 'primjer B (Heun)');

% primjer c
f_c = @(x, y) 1 + y.^2;
y_c_exact = @(x) tan(x+pi/4);
RungeKutta3_test(a_Kutta, c_Kutta, A_Kutta, f_c, 1, 0, 0.5, n, y_c_exact, 'primjer C (Kutta)');
RungeKutta3_test(a_Heun, c_Heun, A_Heun, f_c, 1, 0, 0.5, n, y_c_exact, 'primjer C (Heun)');