function [y] = STD1(x)
    m = mean(x);
    y = sqrt(sum((x-m).^2)/(length(x)-1));
end
