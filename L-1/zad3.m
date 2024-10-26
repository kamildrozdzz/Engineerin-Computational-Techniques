%Kamil Drożdż
clear; clc; close all;
% Prośba o wprowadzenie parametrów elipsy od użytkownika
center_x=input('Podaj wartość x: ');

center_y = input('Podaj wartość y: ');

a = input('Podaj wartość półosi a: ');

b = input('Podaj wartość półosi b: ');

% Tworzenie zakresu kątów od 0 do 2*pi
theta = linspace(0, 2 * pi, 100);

% Obliczanie współrzędnych punktów elipsy
x = center_x + a * cos(theta);
y = center_y + b * sin(theta);

% Rysowanie elipsy
figure (1)
plot(x, y,'b-',[0, 0], [-100, 100], 'k--',[-100,100],[0,0],'k--');
axis equal;  % Zapewnia równe proporcje na osiach x i y
xlabel('Oś X');
ylabel('Oś Y');
title('Elipsa');
grid on;
%END
