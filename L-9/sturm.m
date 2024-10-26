function K = sturm(a,xa,xb)
    a1 = a;
    a2 = pochodna(a1);
    Za = 0;
    Zb = 0;

    while sum(a2) ~= 0
        if polyval(a1,xa)*polyval(a2,xa) < 0
            Za = Za + 1;
        end

        if polyval(a1,xb)*polyval(a2,xb) < 0
            Zb = Zb + 1;
        end

        [~,r] = deconv(a1,a2);
        a1 = a2;
        while r(1) == 0 && length(r) > 1
            r = r(2:end);
        end
        a2 = (-1).*r;
    end

    K = Za - Zb;
end

