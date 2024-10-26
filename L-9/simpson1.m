function y = simpson1(fun,a,b)
    h = (b - a)/2;
    y = h*(fun(a) + 4*fun(a+h) + fun(b))/3;
end

