clc; clear; close all;

f = @(x) x.^2 - 2;

f(0.5)
czebyszew_ap(f,0.5,2)

x = -1:0.1:1;
y = czebyszew_ap(f,x,9);

plot(x,y);
hold on;
%plot(x,f(x),'r.');