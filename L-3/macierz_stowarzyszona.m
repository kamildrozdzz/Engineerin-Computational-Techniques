% Wprowadź współczynniki wielomianu w postaci wektora (np. [1, -3, 2] reprezentuje wielomian x^2 - 3x + 2)
coefficients = input('Podaj współczynniki wielomianu (od najwyższego stopnia do najniższego): ');

% Odwróć współczynniki wielomianu, aby uzyskać je w odpowiedniej kolejności
coefficients = fliplr(coefficients);

% Oblicz miejsca zerowe wielomianu
roots_of_polynomial = roots(coefficients);

% Wyświetl miejsca zerowe wielomianu
disp('Miejsca zerowe wielomianu:');
disp(roots_of_polynomial);
