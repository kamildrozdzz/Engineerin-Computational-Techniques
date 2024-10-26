clc; clearvars;

a = (rand(1,4)-0.5)*20;

x0 = roots(a);
x00 = cardano(a);

x0 = sort(x0);
x00 = sort(x00);

kryt_bledu = max(abs(x0(:) -  x00(:)));
disp(kryt_bledu);