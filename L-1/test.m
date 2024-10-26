clc; close all; clear;

x_center=input("Podaj środek x: ");
y_center=input("Podaj środek y: ");

x=input('Podaj dłg x: ');
y=input('Podaj dłg y: ');

theta=linspace(-pi,pi,100);

x=x_center+x*cos(theta);
y=y_center+y*sin(theta);

plot(x,y);
axis equal;