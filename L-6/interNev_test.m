clc; clearvars;

a = (rand(1,6)-0.5)*10;
xk = [1,2,3,4,5,6];
yk = polyval(a,xk);

polyval(a,2.5)
interNev(xk,yk,2.5)