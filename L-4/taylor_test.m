clc; clearvars;

n = 100;

y0 = exp(5);
y1 = e0_taylor(5,n);
kryt_bledu1 = abs(y0 - y1);
disp(kryt_bledu1);


y00 = sin(10);
y11 = sin0_taylor(10,n);
kryt_bledu2 = abs(y00 - y11);
disp(kryt_bledu2);