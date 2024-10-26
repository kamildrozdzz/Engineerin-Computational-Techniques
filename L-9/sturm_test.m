clc; clearvars;

n = randi(9) + 1;
disp(n);
x0 = (rand(1,n)-0.5)*20;
a = poly(x0);
roots(a);

K = sturm(a,-11,11);
disp(K);