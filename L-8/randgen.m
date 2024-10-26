clc; clearvars;

x = gen((rand(1,10000)-0.5)*2);
histogram(x);

function y = gen(x)
    y = zeros(size(x));
    for k = 1:length(x)
        if x(k) >= 0 && x(k) <= 1
            y(k) = 2*sqrt(abs(x(k)));
        elseif x(k) < 0 && x(k) >= -1
            y(k) = -2*sqrt(abs(x(k)));
        else
            y(k) = 0;
        end
    end
end

function y = PDF(x)
    y = zeros(size(x));
    for k = 1:length(x)
        if x(k) >= 0 && x(k) <= 1
            y(k) = 0.5*x(k);
        elseif x(k) < 0 && x(k) >= -1
            y(k) = -0.5*x(k);
        else
            y(k) = 0;
        end
    end
end

function y = CDF(x)
    y = zeros(size(x));
    dx = 0.001;
    for k = 1:length(x)
        x0 = -3:dx:x(k);
        y(k) = trapz(PDF(x0))*dx;
    end
end