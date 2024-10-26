clear; close all; clc;
A=rand(3,1);
X0=roots(A)
xmin=min(X0);
xmax=max(X0);
X=linspace(xmin-1,xmax+1,100);
y=polyval(A,X);
A=A./(2*A(1));
D=A(2)^2-4*A(1)*A(3);
if D>=0
    pierw(1)=-A(2)-sqrt(D);
    pierw(2)=-A(2)+sqrt(D);
    ypierw=polyval(A,pierw);
    plot(X,y,pierw,ypierw,'rO');
    grid on
else
    pierw(1)=(-A(2)+i*(sqrt(abs(D))));
    pierw(2)=(-A(2)+i*(sqrt(abs(D))));
    ypierw=polyval(A,pierw);
    plot(X,y,pierw,ypierw,'rO');
    grid on
end

pierw
    