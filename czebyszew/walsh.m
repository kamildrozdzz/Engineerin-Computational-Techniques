clc; clearvars;

x = -0.1:0.01:1.1;

w(1,:) = rect(x);
w(2,:) = rect(2*x) - rect(2*(x-1/2));
w(3,:) = rect(4*x) - rect(2*(x-1/4)) + rect(4*(x-3/4));
w(4,:) = rect(4*x) - rect(4*(x-1/4)) + rect(4*(x-1/2)) - rect(4*(x-3/4));

plot(x,w(4,:));

y = sin(pi*x);

p = zeros(size(y));
for k = 1:size(w,1)
    ak = trapz(x,w(k,:).*y);
    p = p + ak.*w(k,:);
end

figure(1);
plot(x,y);
hold on;
plot(x,p);