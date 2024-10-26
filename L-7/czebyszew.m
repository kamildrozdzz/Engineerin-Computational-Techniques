function y = czebyszew(x, N)
    n = length(x);
    y = zeros(1,n);

    for k = 1:n
        if N == 0
            y(k) = 1;
        elseif N == 1
            y(k) = x(k);
        elseif N > 1
            y(k) = 2*x(k)*czebyszew(x(k),N-1) - czebyszew(x(k),N-2);
        end
    end
end

