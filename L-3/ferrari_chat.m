% Wprowadź współczynniki wielomianu czwartego stopnia: ax^4 + bx^3 + cx^2 + dx + e = 0
a = input('Podaj współczynnik a: ');
b = input('Podaj współczynnik b: ');
c = input('Podaj współczynnik c: ');
d = input('Podaj współczynnik d: ');
e = input('Podaj współczynnik e: ');

% Sprowadź równanie czwartego stopnia do postaci x^4 + px^2 + qx + r = 0
p = (3 * b^2 - 8 * a * c) / (8 * a^2);
q = (b^3 - 4 * a * b * c + 8 * a^2 * d) / (8 * a^3);
r = (-3 * b^4 + 256 * a^3 * e - 64 * a^2 * b * d + 16 * a * b^2 * c) / (256 * a^4);

% Oblicz pierwiastki równania czwartego stopnia
coefficients = [1 0 p 0 q 0 r];
roots = roots(coefficients);

% Wyświetl pierwiastki
fprintf('Pierwiastki wielomianu czwartego stopnia:\n');
disp(roots);
