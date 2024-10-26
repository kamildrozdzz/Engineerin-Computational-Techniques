function [y] = whittaker(xk,yk,x)
    d = xk(2) - xk(1);
    y = 0;
    n = length(xk);

    function y = sink(x)
        if x == 0
            y = 1;
        else
            y = sin(pi*x)/(pi*x);
        end
    end

    for k = 1:n
        y = y + sink((x - xk(k))/d)*yk(k);
    end
end

