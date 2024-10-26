function y = bode(fun,a,b)
    h = (b - a)/4;
    y = h*(14*fun(a) + 64*fun(a+h) + 24*fun(a+2*h) + 64*fun(a+3*h) + 14*fun(b))/45;
end

