function [a] = macierz(x,y)
    N = length(x);
    A = ones(N,N);
    A = A(1:end,:).*x(:);

    for k = 1:N
        A(1:end-2,k) = A(1:end-2,k).^(N-k);
        A(end-1:end,k) = A(end-1:end,k).^(N-k-1).*(N-k);
    end

    a = A^(-1)*y';
    a = a(:);
end

