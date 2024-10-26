function [x0] = kol_przyb(f,a,b,p,k)
    lambda = @(x) x - k*f(x);

    x0 = (a+b)/2;
    k = 1;
    xk = zeros(1,100);
    while abs(f(x0)) > p
        xk(k) = x0;
        k = k + 1;

        x0 = lambda(x0);
    end
end