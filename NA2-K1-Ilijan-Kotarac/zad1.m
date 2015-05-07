a = 10; r = 1;
y0 = 0; t0 = 0; t1 = 5;
n = 100;

f = @(t, y) -a*y + r;
y_egz = @(t) (y0 - r/a)*exp(-a*t) + r/a;

[Te, Ye] = Euler(f, t0, t1, y0, n);
[Tt, Yt] = Trapez(a, r, t0, t1, y0, n);


fplot(y_egz, [t0 t1], 'k')
hold on
title('a = 10')
plot(Te, Ye, 'r')
plot(Tt, Yt, 'b')

hold off

% a = 100

a = 100; r = 1;
y0 = 0; t0 = 0; t1 = 5;
n = 100;

f = @(t, y) -a*y + r;
y_egz = @(t) (y0 - r/a)*exp(-a*t) + r/a;

[Te, Ye] = Euler(f, t0, t1, y0, n);
[Tt, Yt] = Trapez(a, r, t0, t1, y0, n);

figure
fplot(y_egz, [t0 t1], 'k')
hold on
title('a = 100')


plot(Te, Ye, 'r')
plot(Tt, Yt, 'b')

