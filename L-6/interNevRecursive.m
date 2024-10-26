function y = interNevRecursive(xk, yk, x)
    N = length(xk);
    
    % Funkcja pomocnicza do rekurencyjnego obliczania wartości interpolowanej
    function result = Neville(k, i)
        if k == 0
            result = yk(i
        else
            result = ((x - xk(i+k)) * Neville(k-1, i) + (xk(i) - x) * Neville(k-1, i+1)) / (xk(i) - xk(i+k));
        end
    end

    % Wywołanie funkcji pomocniczej
    y = Neville(N-1, 1);
end