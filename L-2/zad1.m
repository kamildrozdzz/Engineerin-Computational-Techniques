% Kamil Drożdż
% 1. Napisz program pokazujący błąd w szeregu Taylora dla sin(x)
x = linspace(-pi, pi, 1000); 
sin_x = sin(x); 
N_values = 1:100; 
errors = zeros(size(N_values));
errors2 = zeros(1,10);
for i = 1:length(N_values)
    N = N_values(i); 
    approx_sin_x = zeros(size(x)); 
    for n = 1:N
        approx_sin_x = approx_sin_x + ((-1)^(n-1) * x.^(2*n-1)) / factorial(2*n-1);
    end        
    errors(i) = max(abs(sin_x - approx_sin_x));
    if i<=10
        errors2(i) = errors(i);
    end
end
% Rysowanie wykresu
figure;
semilogy(N_values, errors,'x');
if ~all(errors2 == 0)
    hold on;
    semilogy(N_values(1:10), errors2,'o');
    hold off;
end
xlabel('Liczba elementów N')
ylabel('Błąd')
title('Błąd przybliżenia sin(x) w zależności od liczby elementów N')
% END
