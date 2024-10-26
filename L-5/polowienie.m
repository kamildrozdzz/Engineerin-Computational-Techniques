function [x0] = polowienie(f,a,b,p)
    if f(a)*f(b) < 0
        x0 = a;
        while(abs(a-b) >= p && f(x0) ~= 0)
            x0 = (a+b)/2;

            if f(a)*f(x0) < 0
                b = x0;
            else
                a = x0;
            end
        end
    end
end

