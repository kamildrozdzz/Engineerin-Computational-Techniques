function X=od90do110(theta,x0,y0,z0,Mx,My,Mz)
    theta=theta-(pi/2);
    Y=max(My)-y0;
    R=Y/(sin(theta));
    rr=5/(cos(theta));
    N=(R/rr);
    for i=1:N
        XX(i)=x0+rr*i*cos(theta+(pi/2));
        YY(i)=y0+rr*i*sin(theta+(pi/2));
        ZZ(i)=interp2(Mx,My,Mz,XX(i),YY(i));
        r(i)=sqrt((XX(i)-x0)^2+(YY(i)-y0)^2);
        z(i)=ZZ(i)-z0;
        beta(i)=atan(z(i)/r(i));
    end
    X=max(beta);
    %figure;
    %plot(r,z);
    %axis equal;
end
