clear; clc; close all;
x = pi*rand;
cos_x=cos(x);
n_val=1:100;
errors=zeros(size(n_val));
for i = 1:length(n_val)
    N=n_val(i);
    aprox_cos=zeros(size(x));
    aprox_cos=aprox_cos+1;
    for n=1:N
        aprox_cos=aprox_cos+(((-1)^(n))* x^(2*n)) / factorial(2*n);
    end
    errors(i)=max(abs(cos_x-aprox_cos));
end
semilogy(n_val,errors,'bx')