function y = simpson2(fun,a,b)
    h = (b - a)/3;
    y = 3*h*(fun(a) + 3*fun(a+h) + 3*fun(a+2*h) + fun(b))/8;
end

