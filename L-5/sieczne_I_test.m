clc; clearvars;

f = @(x) x.^2 - 2;

x0 = sieczne_I(f,0,2,1e-15)
x1 = untitled(f,0,2,1e-15)