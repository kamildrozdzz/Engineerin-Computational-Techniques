function p = testy(miejsca_zerowe)
    % Obliczanie współczynników wielomianu
    n = length(miejsca_zerowe);
    p = [1];
    for i = 1:n
        p = conv(p, [1, -miejsca_zerowe(i)]);
        disp(p);
    end

    % Rysowanie wykresu wielomianu
    x = min(miejsca_zerowe):0.01:max(miejsca_zerowe);
    y = polyval(p, x);
    plot(x, y,miejsca_zerowe,0,'ro');
    title('Wykres wielomianu');
    xlabel('x');
    ylabel('y');
end
