function [x0] = sieczne_I(f,a,b,p)
    if f(a)*f(b) < 0
        x0 = a;
        while abs(f(x0)) > p
            x0 = a - (f(a)*(b-a))/(f(b) - f(a));

            if f(a)*f(x0) < 0
                b = x0;
            else
                a = x0;
            end
        end
    end
end

