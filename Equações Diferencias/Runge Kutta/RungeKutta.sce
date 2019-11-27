exec('RungeKutta.sci');
deff('z = f(x, y)', 'z = 3*10^(-5) - 1.8*10^(-3)*y');
a = 8;
b = 10;
m = 12;
yO = 4*10^(-3);
[VetX, VetY] = RungeKutta (a, b, m, yO);
disp(VetX)
disp(VetY)
