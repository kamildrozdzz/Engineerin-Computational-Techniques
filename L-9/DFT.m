clc; clearvars; close all;

N = 30;
x = linspace(0,1,N);
y = sin(2.*pi.*x);

figure(1);
plot(x,y);

K = 50;
Y = zeros(1,K);

for k = 0:K-1
    for n = 0:N-1
        Y(k+1) = Y(k+1) + y(n+1)*exp(-1i*2*pi*k*n/N);
    end
end

figure(2);
plot(0:1:K-1,abs(Y));