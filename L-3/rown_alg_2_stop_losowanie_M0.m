clear; close all; clc;
X0=rand(2,1);
xmin=min(X0);
xmax=max(X0);
A=poly(X0);
X=linspace(xmin-0.02,xmax+0.03,100);
y=polyval(A,X);
A=A./(2*A(1))
D=A(2)^2-2*A(3);
pierw(1)=-A(2)-sqrt(D);
pierw(2)=-A(2)+sqrt(D);
plot(X,y,pierw,0,'rO');
grid on