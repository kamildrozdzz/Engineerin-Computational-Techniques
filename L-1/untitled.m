%Kacper Fijałkowski 
%416231

%Napisz program pokazujący bład w szregu cosinusów 

clc; clear; close all; format short g;

%blad = błąd!!!

%definicja zmiennych
%x=pi*rand;
x = linspace(-2*pi,2*pi,100);
cos_x=cos(x);

%zadanie wartości W-wartosc 1 na 100
w_wartosc = 1:100;

blad = zeros(size(w_wartosc));

for i=1:length(w_wartosc)
    W=w_wartosc(i);
    cosinus_x = zeros(size(x));
    cosx=cosinus_x + 1;
    for k=1:W
        cosx=cosx+ ((-1)^k)*x.^(2*k)/factorial(2*k);
    end
    blad(i)=max(abs(cos_x-cosx));
end

%wywółanie wykresu
semilogy(w_wartosc, blad,' x');
hold on;
title('bląd cos(x)');
xlabel('liczba W');
ylabel('bład');