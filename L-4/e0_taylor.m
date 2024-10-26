function [y] = e0_taylor(x, n)
    y = 0;
    for k = 0:n
        y = y + x^k/fact(k);
    end
end

