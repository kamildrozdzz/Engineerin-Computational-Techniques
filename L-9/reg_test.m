clc; clearvars;

n = 10;
x = 1:1:n;
y = 2.*x.^2 + 4 + (rand(1,n)-0.5)*10;

figure(1);
plot(x,y,'r.');
hold on;

a = reg_nielin(x,y);
yx = a(1).*x.^2 + a(2);
plot(x,yx);