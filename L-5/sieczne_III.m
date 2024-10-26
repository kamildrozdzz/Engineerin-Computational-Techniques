function [x0] = sieczne_III(f,a,b,p)
    c = (a+b)/2;
    d = abs(a-c);

    x0 = a;
    while abs(f(x0)) > p
        fa = f(a); fb = f(b); fc = f(c);
        k = (fc - fa)/(fb - fc);
        x0 = c + d*log((fc-fa)/(k*fc-fa))/log(k);

        d = min(abs([a,b,c]-x0));
        c = x0;
        a = x0 - d;
        b = x0 + d;
    end
end

