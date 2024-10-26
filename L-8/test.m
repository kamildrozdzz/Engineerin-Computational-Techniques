clc; clearvars;

x = rand(1,1000);
xp = x(1:500);
x = sort(x);
xp = sort(xp);

mu = mean(x);
sigma = std(x);
sigmap = std(xp);

y = normpdf(x,mu,sigma);

x0 = (x-mu)./sigma;
y0 = normpdf(x0,0,1);

figure(1);
plot(x,y);
hold on;
plot(x0,y0);

%-----------
sigmap0 = STD0(xp);
sigmap1 = STD1(xp);

err0 = abs(sigma - sigmap0);
err1 = abs(sigma - sigmap1);
errp = abs(sigmap - sigma);
disp(err0);
disp(err1);
disp(errp);