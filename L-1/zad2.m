%Kamil Drożdż
clear; clc; close all;
% Definicja funkcji f(x)
f = @(x) exp(-x) .* sin(6.*pi.*x - 1/3.*pi);

% Przedział x od 0 do 5/7
x = 0:0.001:2;

% Obliczanie wartości funkcji w danym przedziale
y = f(x);

% Rysowanie wykresu funkcji
plot(x, y);
xlabel('x');
ylabel('f(x)');
title('Wykres funkcji f(x) = e^{-x} * sin(6\pi x - 1/3\pi)');
grid on;
%END