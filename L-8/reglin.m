clc; clearvars;

x = 0:20;
y = zeros(size(x));
for k = 1:length(x)
    y(k) = x(k) + (rand(1,1)-0.5)*2;
end

figure(1);
plot(x,y,'.');
hold on;

n = length(x);

a = (n*sum(x.*y) - sum(x)*sum(y))/(n*sum(x.*x) - sum(x)^2);
b = (sum(x.*x)*sum(y) - sum(x)*sum(x.*y))/(n*sum(x.*x) - sum(x)^2);
Y = polyval([a,b],x);

plot(x,Y);