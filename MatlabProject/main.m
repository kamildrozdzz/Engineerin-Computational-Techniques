clc; clear; close all;
load('TO_DUPNY_mapa.mat');
x0=487810;
y0=190325;
z0=633;
range_theta=ustawienie_theta(x0,y0);
for j=1:360
    theta=j*pi/180;
    if (theta<range_theta(1))
        B=od0do27(theta,x0,y0,z0,Mx,My,Mz);
    elseif (theta >= range_theta(1)) && (theta < range_theta(2))
        B=od27do90(theta,x0,y0,z0,Mx,My,Mz);
    elseif (theta==range_theta(2))
        B=dla90(x0,y0,z0,Mx,My,Mz);
    elseif (theta>range_theta(2)) && (theta < range_theta(3))
        B=od90do110(theta,x0,y0,z0,Mx,My,Mz);
    elseif (theta>=range_theta(3)) && (theta < range_theta(4))
        B=od110do180(theta,x0,y0,z0,Mx,My,Mz);
    elseif (theta==range_theta(4))
        B=dla180(x0,y0,z0,Mx,My,Mz);
    elseif (theta>range_theta(4)) && (theta<range_theta(5))
        B=od180do258(theta,x0,y0,z0,Mx,My,Mz);
    elseif (theta>=range_theta(5)) && (theta<range_theta(6))
        B=od180do258(theta,x0,y0,z0,Mx,My,Mz);
    elseif (theta==range_theta(6))
        B=dla270(x0,y0,z0,Mx,My,Mz);
    elseif (theta>range_theta(6)) && (theta<range_theta(7))
        B=od270do317(theta,x0,y0,z0,Mx,My,Mz);
    elseif (theta>=range_theta(7)) && (theta<range_theta(8))
        B=od317do0(theta,x0,y0,z0,Mx,My,Mz);
    end
    finall_beta(j)=B;
end
disp(finall_beta);
svf=calculate_svf(finall_beta);

