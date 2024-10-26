clc; clearvars;

a = (rand(1,4)-0.5)*10;
xk = (rand(1,4)-0.5)*10;
disp(xk);
yk = [10,25,10,0];

x = -10:0.1:10;
y1 = polyval(a,x);
y2 = polyval(macierz(xk,yk),x);

%plot(x,y1);
hold on;
plot(x,y2);
hold on;
plot(xk,yk,'ro');

err = max(abs(y1-y2));
%disp(err);