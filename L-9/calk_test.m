clc; clearvars;

f = @(x) sin(x);
a = 0;
b = pi/4;

dx = 0.0001;
x = a:dx:b;
C = trapz(f(x))*dx;
disp(C);

C1 = newton_cotes(f,a,b);
C2 = simpson1(f,a,b);
C3 = simpson2(f,a,b);
C4 = bode(f,a,b);
C5 = trapezy(f,a,b,0.0001);
disp(C1);
disp(C2);
disp(C3);
disp(C4);
disp(C5);