function [y] = approx(f,N)
    x = -1:0.01:1;
    y = zeros(size(x));

    for k = 0:N
        skalar = trapz(x,f(x).*czebyszew(x,k));
        norm = trapz(x, czebyszew(x,k).*czebyszew(x,k));
        a = skalar/norm;

        y = y + a*czebyszew(x,k);
    end
end

