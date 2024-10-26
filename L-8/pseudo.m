clc; clearvars;

x = 0:20;
y = zeros(size(x));
for k = 1:length(x)
    y(k) = x(k) + (rand(1,1)-0.5)*2;
end

figure(1);
plot(x,y,'.');
hold on;

X = [x',ones(length(x),1)];
Y = y';

a = (((X'*X)^(-1))*X')*Y;
y0 = polyval(a,x);

plot(x,y0);

e = Y - X*a;
disp(e);