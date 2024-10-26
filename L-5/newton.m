function [x0] = newton(f,a,b,p)
    x0 = a;
    h = 1e-9;

    function y = fp(f,x0,h)
        y = (f(x0+h) - f(x0-h))/(2*h);
    end

    fp1 = fp(f,x0+h,h);
    fp2 = fp(f,x0-h,h);
    fp22 = (fp1-fp2)/(2*h);

    if f(a)*fp22 < 0
        x0 = b;
        fp1 = fp(f,x0+h,h);
        fp2 = fp(f,x0-h,h);
        fp22 = (fp1-fp2)/(2*h);

        if f(b)*fp22 < 0
        end
    end

    while abs(f(x0)) > p

        x0 = x0 - f(x0)/fp(f,x0,h);
    end
end
