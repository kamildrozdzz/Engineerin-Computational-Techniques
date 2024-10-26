function y = legendre(x,N)
    nn = length(x);
    y = zeros(size(x));

    for k = 1:nn
        if N == 0
            y(k) = 1;
        elseif N == 1
            y(k) = x(k);
        elseif N > 1
            n = N - 1;
            y(k) = ((2*n + 1)*x(k)/(n+1))*legendre(x(k),n) - (n/(n+1))*legendre(x(k),n-1);
        end
    end
end

