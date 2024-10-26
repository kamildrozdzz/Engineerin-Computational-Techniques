clc; clearvars

x = -0.1:0.01:1.1;

h(1,:) = rect(x);
h(2,:) = rect(2*x) -rect(2*(x - 1/2));
h(3,:) = sqrt(2)*(rect(4*x) -rect(4*(x-1/4)));
h(4,:) = sqrt(2)*(rect(4*(x - 1/2)) -rect(4*(x-3/4)));

y = sin(pi*x);

p = zeros(size(y));
for k = 1:size(h,1)
    ak = trapz(x,h(k,:).*y);
    p = p + ak.*h(k,:);
end

figure(1);
plot(x,y);
hold on;
plot(x,p);