A = [0.5 1 0 0; 0 0.5 1 0; 0 0 0.5 1; 0 0 0 0.5];

f = @(x, y) A*y;

x0 = 0; x1 = 1;
n = 100;

y0 = [1 1 1 1]';

[T, Y] = RK4(f, x0, x1, y0, n);

% egzaktna rjesenja
y1 = @(x) exp(0.5*x)*(1/12 * x^3 + 1/2 * x^2 + x + 1);
y2 = @(x) exp(0.5*x)*(1/4 * x^2 + x + 1);
y3 = @(x) exp(0.5*x)*(x + 1);
y4 = @(x) exp(0.5*x);

fplot(y1, [x0 x1], 'r--')
hold on
fplot(y2, [x0 x1], 'b--')
fplot(y3, [x0 x1], 'g--')
fplot(y4, [x0 x1], 'k--')


plot(T, Y(1, :)', 'r')
hold on
plot(T, Y(2, :)', 'b')
plot(T, Y(3, :)', 'g')
plot(T, Y(4, :)', 'k')

legend('y1 egz', 'y2 egz', 'y3 egz', 'y4 egz', 'y1 RK4', 'y2 RK4', 'y3 RK4', 'y4 RK4', 'Location', 'NorthWest')