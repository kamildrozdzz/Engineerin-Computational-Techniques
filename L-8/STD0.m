function [y] = STD0(x)
    m = mean(x);
    y = sqrt(sum((x-m).^2)/length(x));
end

