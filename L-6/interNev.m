function [y] = interNev(xk,yk,x)
    function yy = P(k,m)
        if k == m
            yy = yk(k);
        else
            yy = ((xk(m) - x)*P(k,m-1) + (x - xk(k))*P(k+1,m))/(xk(m) - xk(k));
        end
    end

    N = length(xk);
    y = P(1,N);
end