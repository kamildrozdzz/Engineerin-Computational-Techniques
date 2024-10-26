function [y] = fact(n) %silnia
    y = 1;
    for k = n:-1:1
        y = y * k;
    end
end

