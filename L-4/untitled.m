clc; clear; close all;
a=rand(5,1);
r=sort(roots(a));
a=a./a(1);
a4=a(1);
a3=a(2);
a2=a(3);
a1=a(4);
a0=a(5);
a=[1, -a2/2, (a3*a1-4*a0)/4, (4*a2*a0-a3^2*a0-a1^2)/8];
k=cardano(a);
k0=k(1);
p=sqrt(2*k0+(a3^2)/4-a2);
q=(k0*a3-a1)/(2*p);

X1=[1, a3/2+p, k+q];
X2=[1, a3/2-p, k-q];

D1=X1(2)^2-4*X1(1)*X1(3);
D2=X2(2)^2-4*X2(1)*X2(3);

X=[(-X1(2)-sqrt(D1))/(2*X1(1)), (-X1(2)+sqrt(D1))/(2*X1(1)), (-X2(2)-sqrt(D2))/(2*X2(1)), (-X2(2)+sqrt(D2))/(2*X2(1)),];
X=sort(X.');
disp(r);
disp(X);
errors=max(abs(r-X));
fprintf('Błąd: \n');
disp(errors);