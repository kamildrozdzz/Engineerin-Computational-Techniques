function X=dla270(x0,y0,z0,Mx,My,Mz)
    Y=y0-min(My);
    X=x0;
    R=Y;
    N=R/5;
    for i=1:N
        XX(i)=x0;
        YY(i)=y0-i*5;
        ZZ(i)=interp2(Mx,My,Mz,XX(i),YY(i));
        r(i)=sqrt((XX(i)-x0)^2+(YY(i)-y0)^2);
        z(i)=ZZ(i)-z0;
        beta(i)=atan(z(i)/r(i));
    end
    X=max(beta);
    %disp(beta1);
    %figure;
    %plot(r,z);
    %axis equal;
end
