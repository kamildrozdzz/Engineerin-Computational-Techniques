clc; clearvars; close all;

% xk = -3:3;
% yk = [rand(1,7)-0.5]*50;

xk = [1,2,3,4];
yk = [2,3,1,5];

x = -10:0.1:10;
y = zeros(1,length(x));

for k = 1:length(x)
    y(k) = sklejanie(xk,yk,x(k));
end

plot(x,y);
hold on;
plot(xk,yk,'ro');