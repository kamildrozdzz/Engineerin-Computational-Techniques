clc; clearvars;

f = @(x) x.^2 - 3;

x0 = sieczne_II(f,0,2,1e-15)
x1 = test(f,0,2,1e-15)