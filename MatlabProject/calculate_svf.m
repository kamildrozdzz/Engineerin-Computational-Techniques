function svf = calculate_svf(beta)
    % Definicja funkcji
    fun = @(beta) cos(beta).^2;
    % Zakres całkowania
    a = 0;
    b = 2*pi;
    % Obliczanie całki
    svf = integral(fun, a, b);
    % Wyświetlanie wyniku
    disp(svf)
end