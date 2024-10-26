function [y] = interLagr(xk,yk,x)
    n = length(xk) - 1;
    N = length(x);
    y = zeros(1,N);

    for num = 1:N
        for k = 1:n+1
            ilo = 1;
            for l = 1:n+1
                if k ~= l
                    ilo = ilo * (x(num)-xk(l))/(xk(k)-xk(l));
                end
            end
            y(num) = y(num) + ilo * yk(k);
        end
    end
end

