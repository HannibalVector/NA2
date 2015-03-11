f_a = @(x, y) -x.*y + x*exp(0.5*x.^2);
y_a_exact = @(x) cosh(0.5*x.^2);

y_a_approx = Euler(f_a, 1, 0, 1, 100);
plot(y_a_approx); hold on;
plot(y_a_exact((0:0.01:1)'));


y_a_approx
y_a_exact((0:0.01:1)')