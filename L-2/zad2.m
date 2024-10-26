%Kamil Drożdż
%2.Napisz program który liczy faze(kąt fi) za pomocą róznych funkcji atan tan2 i angle

clc; clear; close all; format short g;

fprintf('oblicz wartośc kąta fi (faze) podanej liczby zespolonej ');
a=input('podaj wartosc rzeczywistą liczby zespolonej ');
b=input('podaj wartosc urojoną liczby zespolonej ');

%wywołanie danej liczby zespolonej
Z=a+b*i;
disp(Z);
%obliczanie kąta fi 
fi1=atan(b/a);
fi2=atan2(b,a);
fi3=angle(Z);
WB_Z = sqrt(a^2+b^2);

%wywołanie wyników 
fprintf('wartość trygonometryczna funkcji wywołana przez komende atan %f e^(j%f)\n',WB_Z,fi1);
fprintf('wartość trygonometryczna funkcji wywołana przez komende atan2 %f e^(j%f)\n',WB_Z,fi2);
fprintf('wartość trygonometryczna funkcji wywołana przez komende angle %f e^(j%f)\n',WB_Z,fi3);

%END