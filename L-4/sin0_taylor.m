function [y] = sin0_taylor(x,n)
    y = 0;
    a = 1;

    for k = 1:2:n

        y = y + a * x^k/fact(k);
        a = -a;
    end
end

