%Kamil Drożdż
% Prośba o wprowadzenie wymiarów macierzy od użytkownika
clear; clc; close all;
% Prośba o podanie wymiarów macierzy od użytkownika
prompt = 'Podaj liczbę wierszy macierzy: ';
numRows = input(prompt);
prompt = 'Podaj liczbę kolumn macierzy: ';
numCols = input(prompt);

% Inicjalizacja macierzy zerami
matrix = zeros(numRows, numCols);

% Wypełnienie przekątnych macierzy wartością 7
for i = 1:min(numRows, numCols)
    matrix(i, i) = 7;  % Wypełnienie przekątnej (elementy na głównej przekątnej)
    matrix(i, end - i + 1) = 7;  % Wypełnienie przekątnej odwrotnej (elementy na przekątnej odwrotnej)
end

% Wyświetlenie uzyskanej macierzy
disp('Oto macierz z 7 na przekątnych:');
disp(matrix);

%END