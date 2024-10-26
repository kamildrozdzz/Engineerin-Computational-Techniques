function C = trapezy(f,a,b,h)
    x = a:h:b;
    y = f(x);
    C = (sum(y) - (y(1)+y(end))/2)*h;
end

