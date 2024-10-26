clc; clearvars;

n = 20;
a0 = (rand(1,3)-0.5)*20;
x1 = 1:1:n;
x2 = x1 + (rand(1,n)-0.5)*4;
y = a0(1).*x1.^4 + a0(2).*x2 + a0(3) + rand(1,n);

figure(1);
plot3(x1,x2,y,'r.');
grid on;
hold on;

a = reg_nielin_wiel(x1,x2,y);

y0 = a(1).*x1.^4 + a(2).*x1 + a(3);
plot3(x1,x1,y0);