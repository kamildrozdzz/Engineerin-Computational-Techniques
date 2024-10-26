clc; clearvars;

f = @(x) x.^2 - 2;
x0 = roots([1,0,-2]);
x0 = x0(1);

x00 = kol_przyb(f,0,2,1e-15,1/4);

kryt_bledu = abs(x0 - x00);
disp(kryt_bledu);