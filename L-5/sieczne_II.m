function [x0] = sieczne_II(f,a,b,p)
    if f(a)*f(b) < 0 && a < b
        x0 = a;
        while abs(f(x0)) > p
            x0 = a - (f(a)*(b-a))/(f(b) - f(a));
            b = a;
            a = x0;
        end
    end
end

