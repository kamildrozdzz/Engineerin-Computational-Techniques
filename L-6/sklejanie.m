function [y] = sklejanie(xk,yk,x)
    function y = tri(x)
        if abs(x) >= 1
            y = 0;
        else
            y = 1 - abs(x);
        end
    end

    d = xk(2) - xk(1);
    y = 0;
    n = length(xk);

    for k = 1:n
        y = y + tri((x - xk(k))/d)*yk(k);
    end
end

