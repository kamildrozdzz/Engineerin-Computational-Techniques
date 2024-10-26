clc; clearvars;

f = @(x) x.^3 - 1;

x = -1:0.01:1;
y = approx(f,3);

plot(x,y);