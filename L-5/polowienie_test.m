clc; clearvars;

f = @(x) x.^2 - 2;

p = 1e-6;

x0 = polowienie(f,0,2,p)
x1 = test(f,0,2,p)

X0 = roots([1,0,-2]);
X0 = X0(1);

kryt_bledu = abs(x0 - x1);
disp(kryt_bledu);
