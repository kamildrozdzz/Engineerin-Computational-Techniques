clc; clearvars;

xk = rand(5,1);
yk = [0 0 1 0 2];

x = -10:0.001:10;
y2 = interLagr(xk,yk,x);

figure(1)
hold on
plot(x,y2,xk,yk,'ro');
ylim([-10 10])

%err = max(abs(y1-y2));
%disp(err);