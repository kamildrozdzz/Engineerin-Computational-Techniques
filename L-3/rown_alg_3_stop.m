clc; clear; close all;
x0=rand(3,1);
xmin=min(x0);
xmax=max(x0);
A=poly(x0);
X=linspace(xmin-0.02,xmax+0.03,100);
y=polyval(A,X);
x1=cardano(A);
plot(X,y,'b-',x1,0,'rO')
hold on;
grid on;
