clc; clearvars;

N = 5;
k = 1:1:N;
xk = cos(pi.*(k-0.5)./N);
xk = sort(xk);

a = czebyszew_gen(N);

x0 = roots(a);
x0 = sort(x0);
x0 = x0(:)';

disp(xk);
disp(x0);