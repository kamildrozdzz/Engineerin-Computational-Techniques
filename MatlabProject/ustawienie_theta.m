function X=ustawienie_theta(x0,y0)
load('TO_DUPNY_mapa.mat');
rozm_Y=max(My)-y0;
rozm_X=max(Mx)-x0;
rozm_Y1=y0-min(My);
rozm_Y2=max(My)-y0;
rozm_X1=x0-min(Mx);
% padający na ściane po prawej  1
theta1=atan(rozm_Y/rozm_X);
%disp(theta1);
%------------- 2
theta2=atan(rozm_Y1/rozm_X);
%disp(theta2);
% padający na górną ściane 3
theta3=atan(rozm_X/rozm_Y);
%disp(theta3);
%------------- 4
theta4=atan(rozm_X1/rozm_Y2);
%disp(theta4);
%padające na ściane po lewej 5
theta5=atan(rozm_Y2/rozm_X1);
%disp(theta5);
%------------- 6
theta6=atan(rozm_Y1/rozm_X1);
%disp(theta6);
% padający na dolną ściane 7
theta7=atan(rozm_X1/rozm_Y1);
%disp(theta7);
%------------- 8
theta8=atan(rozm_X/rozm_Y1);
%disp(theta8);
X=[theta1,(theta1+theta3),(theta1+theta3+theta4),(theta1+theta3+theta4+theta5),(theta1+theta3+theta4+theta5+theta6),(theta1+theta3+theta4+theta5+theta6+theta7),(theta1+theta3+theta4+theta5+theta6+theta7+theta8),(theta1+theta3+theta4+theta5+theta6+theta7+theta8+theta2)];
end
