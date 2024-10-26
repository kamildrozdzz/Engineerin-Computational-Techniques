%Kamil Drożdż
%3.napisz program który ktory sprawdza lewą i prawą strone wzory eulera

clc; close all; clear; format short g;

x=input('podaj wartość x dla której ma byc sprawdzoy warunek L=P dla wzoru elera ');

left_side = exp(i*x);
right_side = cos(x)+i*sin(x);

if left_side == right_side
    fprintf('wzór Eulera jest prawdą');
else
    fprintf('wzór Eulera nie spełnia równania');
end

%END