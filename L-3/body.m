% Kacper Fijałkowski 

%416231

clc; close all; clear; format short g;

R=2e3;
C=2e-5;
L=40e-3;

f=logspace(0,5,100);
w=2*pi*f;
s=i*w;
K=(R*L*C*(s.^2)+L*s)./(R*L*C*(s.^2)+L*s+R);
K1=20*log10(abs(K));
K2=(angle(K)/pi);
K3=real(K);
K4=imag(K);

% Charakterystyka Bodego
figure;

subplot(2,1,1);
semilogx(f, K1,'b.-');
grid on;
title('Charakterystyka amplitudowa Bodego');

subplot(2,1,2);
semilogx(f, K2,'r.-');
grid on;
title('Charakterystyka fazowa Bodego');

figure;

subplot(2,1,1);
semilogx(f, K3,'b.-');
title('real(K)');
grid on;

subplot(2,1,2);
semilogx(f, K4,'r.-');
title('imag(K)');
grid on;