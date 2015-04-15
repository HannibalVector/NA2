f = @(y) [(-y(1) - y(1)*y(2)^2 + 294*y(2)); (y(1) - y(1)*y(2))/98 - 3*y(2)];
y0 = [1; 0];

options = odeset('RelTol', 1e-4);
[t,y] = ode23t(f, [0 1], y0, options);