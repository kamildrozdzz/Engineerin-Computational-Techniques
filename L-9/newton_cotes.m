function y = newton_cotes(fun,a,b)
    h = b - a;
    y = h*(fun(a) + fun(b))/2;
end

