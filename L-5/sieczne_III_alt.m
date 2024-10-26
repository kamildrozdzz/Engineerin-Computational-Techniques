function [x0] = sieczne_III_alt(f,a,b,p)
    if f(a)*f(b) < 0 && a < b
        x0 = a;
        while abs(f(x0)) > p
            c = (a+b)/2;
            eQ = (f(c) + sign(f(b))*sqrt(f(c)^2-f(a)*f(b)))/f(b);

            x0 = c + (c-a)*f(c)*sign(f(a)-f(b))/sqrt(f(c)^2-f(a)*f(b));

            d = min(abs([a,b,c]-x0));
            a = x0 - d;
            b = x0 + d;
        end
    end
end

