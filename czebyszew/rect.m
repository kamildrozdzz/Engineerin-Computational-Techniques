function y = rect(x)
    y = zeros(size(x));
    y(x == 1) = 1/2;
    y(x == 0) = 1/2;
    y(x > 0 & x < 1) = 1;
end

