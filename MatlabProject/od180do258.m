function X=od180do258(theta,x0,y0,z0,Mx,My,Mz)
    theta=theta-pi;
    Y=y0-min(My);
    R=Y/(cos(theta));
    rr=5/(cos(theta));
    N=(R/rr)+5;
    for i=1:N
        XX(i)=x0+rr*i*cos(theta+(pi));
        YY(i)=y0+rr*i*sin(theta+(pi));
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