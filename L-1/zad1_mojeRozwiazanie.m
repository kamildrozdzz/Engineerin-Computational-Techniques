%Kamil Drożdż
clear; clc; close all;

wiersze=input('Podaj liczbe wiersze: ');
kolumny=input('Podaj liczbe kolumny: ');

macierz=zeros(wiersze,kolumny);
for i=1:min(wiersze,kolumny)
    macierz(i,i)=7;
    macierz(i,end-i+1)=7;
end

disp(macierz);
