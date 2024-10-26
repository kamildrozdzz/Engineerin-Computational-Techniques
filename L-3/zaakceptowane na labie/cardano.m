function X = cardano(A)
A=A./A(1);
a2=A(2); a1=A(3); a0=A(4);
p = (3*a1-(a2)^2)/9;
q = ((a2)^3)/27 - (a2*a1)/6 + a0/2;
D = q^2 + p^3;
if D >= 0
u = nthroot(-q+sqrt(D),3);
v = nthroot(-q-sqrt(D),3);
Y(1)= u+v;
Y(2) = -0.5*(u+v) + ((j*sqrt(3))/2)*(u-v);
Y(3) = -0.5*(u+v) - ((j*sqrt(3))/2)*(u-v);
else
fi = acos(-q/sqrt(-p^3));
Y(1) = 2* sqrt(-p) * cos ( (fi)/3);
Y(2) = 2* sqrt(-p) * cos ( (fi + 2*pi)/3);
Y(3) = 2* sqrt(-p) * cos ( (fi + 4*pi)/3);
end
X(1) = Y(1) - a2/3;
X(2) = Y(2) - a2/3;
X(3) = Y(3) - a2/3;
end