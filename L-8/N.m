function [y] = N(mi,sigma,x)
    y = zeros(size(x));
    for k = 1:length(x)
        y(k) = exp(-(x(k)-mi)^2/(2*sigma^2))/(sigma*sqrt(2*pi));
    end
end

