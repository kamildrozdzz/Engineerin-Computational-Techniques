clc; clearvars;

x = -5:0.01:5;
y = legendre(x,4);

plot(x,y);
ylim([-2 2]);