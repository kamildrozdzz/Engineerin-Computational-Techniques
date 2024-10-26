clc; clearvars;

f = @(x) x.^2 - 3;
x0 = roots([1,0,-3]);
x0 = x0(1);

x00 = newton(f,0.1,2,1e-15)
x000 = untitled(f,0.1,2,1e-15)

kryt_bledu = abs(x0 - x00);
disp(kryt_bledu);