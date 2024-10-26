% Miejsca zerowe
x1 = 1; % podaj wartość
x2 = 3; % podaj wartość
x3 = 9; % podaj wartość

% Współczynniki wielomianu
a = 1;
b = - (x1 + x2 + x3);
c = x1*x2 + x1*x3 + x2*x3;
d = - x1*x2*x3;

% Wyświetl współczynniki
A=[a,b,c,d];
disp(A);
x=linspace(-40,40,10000);
y=polyval(A,x);
plot(x,y,'b-',[x1,x2,x3],0,'ro');
ylim([-10,10]);