clc; close all; clear;
x=linspace(-pi,pi,100);
sin_x=sin(x);
N_values=1:100;
errors=zeros(size(N_values));
for i=1:length(N_values)
    N=N_values(i);
    approx_sin_x=zeros(size(x));
    for n=1:N
        approx_sin_x=approx_sin_x+((-1)^(n-1))*x.^(2*n-1)/factorial(2*n-1);
    end
    errors(i)=max(abs(sin_x-approx_sin_x));
end
semilogy(N_values,errors);