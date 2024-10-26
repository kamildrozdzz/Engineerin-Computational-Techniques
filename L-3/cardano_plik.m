%Kamil Drożdż

%zaimplementować wzory cardona, podajemy wielomian i oblicza pierwiastki.
%Wielomian 3 stopnia, 3 pierwiastki. Funkcja ma posiadać test sprawdzający
%poprawność działnia. Test ma polegać na porównaniu obliczonych
%pierwiastków z pierwiastkami obliczonymi przez f. wbudowaną. Tworzymy
%kryterium błędu. Powinniśmy otrzymać jedną liczbę dzięki której będziemy
%mogli zweryfikować czy liczba jest poprawna czy błędna.
%wielomiany do sprawdzenia:
% x^2
% 2x^3-8x^2-32x-40
% 4x^3-12x^2-32x-40
% 3x^3-3x^2-51x+195

clc; clear; close all;
% A=input('Podaj wielomian do obliczenia pierwiastków: ');
A = 20*(rand(1,4)-1/2);
x0=roots(A);
xmin=min(x0);
xmax=max(x0);
X=linspace(xmin,xmax,100);
y=polyval(A,X);
x1=cardano(A);
plot(X,y,'b-',x1,0,'rO')
hold on;
grid on;
if x0==x1
fprintf(['Brak błędu w obliczeniach']);
else
fprintf(['Błąd w obliczeniach istnieje \n']);
x0=x0.';
y0=polyval(A,poly(x0));
y1=polyval(A,poly(x1));
err=max(abs(y0(:)-y1(:)));
disp(err);
end

%END