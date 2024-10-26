function [x0] = cardano(a)
    a = a/a(1);

    p = (3*a(3)-a(2)^2)/9;
    q = a(2)^3/27 - a(2)*a(3)/6 + a(4)/2;

    D = q^2 + p^3;

    if D >= 0
        u = nthroot(-q+sqrt(D),3);
        v = nthroot(-q-sqrt(D),3);

        y = [u+v, -(u+v)/2 + 1i*(u-v)*sqrt(3)/2, -(u+v)/2 - 1i*(u-v)*sqrt(3)/2];
    else
        fi = acos(-q/sqrt(-p^3));

        k = 1:3;
        y = 2*sqrt(-p)*cos((fi+2*pi.*(k-1))/3);
    end

    x0 = y - a(2)/3;
end

