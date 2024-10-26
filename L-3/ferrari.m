%obliczanie miejsc zerowych 4 rzędu wzory ferrari
%wpisywanie wartosci wielomianu 
clc; clear; close all; format short g;
ao=20*(rand(1,5)-1/2);

%przekrształcanie wielomianu 4-go stopnia na 3-stopnia
a=ao(1)/ao(1);
b=ao(2)/ao(1);
c=ao(3)/ao(1);
d=ao(4)/ao(1);
e=ao(5)/ao(1);
%a4+b3+c2+d1+e=0
B=-c/2;
C=(b*d-4*e)/4;
D=(4*c*e-(b^2)*e-d^2)/8;
%Wyliczanie Delty z 3-go stopnia
p = (3*C-B^2) /9;
q = ((B^3)/27)-(B*C)/6+D/2;
Delta = q^2+p^3;


if Delta > 0 
   u=nthroot(-q+sqrt(Delta),3);
   v=nthroot(-q-sqrt(Delta),3);
   k1= u+v-B/3;
   k2=-(u+v)/2+i*(sqrt(3)/2*(u-v))-B/3;
   k3=-(u+v)/2-i*(sqrt(3)/2*(u-v))-B/3;
   
   P=sqrt(2*k1+(b^2)/4-c);
   Q=(k1*b-d)/(2*P);

    A12=b/2+P;
    A11=b/2-P;
    A02=k1+Q;
    A01=k1-Q;

    delta01=A11^2-4*A01;
    delta02=A12^2-4*A02;
  
    x1=(-A11-sqrt(delta01))/2;
    x2=(-A11+sqrt(delta01))/2;
    x3=(-A12-sqrt(delta02))/2;
    x4=(-A12+sqrt(delta02))/2;
    
    fprintf('Miejsca zerowe policzone z FERRARI\n');
    disp(x1);
    disp(x2);
    disp(x3);
    disp(x4);
  

elseif Delta == 0 
    
    k1=nthroot(D,3);
    k2=nthroot(D,3);
    k3=nthroot(D,3);
    
    P=sqrt(2*k1+(b^2)/4-c);
    Q=(k1*b-d)/(2*P);

    A12=b/2+P;
    A11=b/2-P;
    A02=k1+Q;
    A01=k1-Q;

    delta01=A11^2-4*A01;
    delta02=A12^2-4*A02;
   

    x1=(-A11-sqrt(delta01))/2;
    x2=(-A11+sqrt(delta01))/2;
    x3=(-A12-sqrt(delta02))/2;
    x4=(-A12+sqrt(delta02))/2;
    
    fprintf('Miejsca zerowe policzone z FERRARI\n');
    disp(x1);
    disp(x2);
    disp(x3);
    disp(x4);

elseif Delta < 0
    
        theta= acos(-q/sqrt(-p^3));
        
        k1=2*sqrt(-p) *cos((theta+2*pi*(0))/3)-B/3;
        k2=2*sqrt(-p) *cos((theta+2*pi*(1))/3)-B/3;
        k3=2*sqrt(-p) *cos((theta+2*pi*(2))/3)-B/3;

        P=sqrt(2*k1+(b^2)/4-c);
        Q=(k1*b-d)/(2*P);

        A12=b/2+P;
        A11=b/2-P;
        A02=k1+Q;
        A01=k1-Q;
        
        delta01=A11^2-4*A01;
        delta02=A12^2-4*A02;
   

        x1=(-A11-sqrt(delta01))/2;
        x2=(-A11+sqrt(delta01))/2;
        x3=(-A12-sqrt(delta02))/2;
        x4=(-A12+sqrt(delta02))/2;

        fprintf('Miejsca zerowe policzone z FERRARI\n');
        disp(x1);
        disp(x2);
        disp(x3);
        disp(x4);
end      
%wyliczenie wartosci z godowego wzoru
fprintf('wyliczanie miejsc zerowych z gotowej funkcji "roots"\n ');
x0=roots(ao);
disp(x0);

%wyliczanie błedu
    fprintf('Błąd w obliczeniach istnieje\n');
    x0=x0.';
    y0 = polyval(ao, x0); 
    y1 = polyval(ao, x1); 
    err = max(abs(y0(:)-y1(:))); 
    disp(err);

%END