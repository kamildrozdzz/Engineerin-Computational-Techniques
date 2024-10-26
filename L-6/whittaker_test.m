clc; clearvars;

xk = 1:1:5;
yk = ones(1,length(xk));

x = -5:0.1:10;
y = zeros(1,length(x));

for k = 1:length(x)
    y(k) = whittaker(xk,yk,x(k));
end

plot(x,y);