 function [y] = test(xk,yk,x)
    n=length(xk)-1;
    N=length(x);
    y=zeros(1,N);
    for num=1:N
        for k=1:n+1
            iloraz=1;
            for l=1:n+1
                if k~=l
                    iloraz=iloraz*(x(num)-xk(l))/(xk(k)-xk(l));
                end
            end
            y(num)=y(num)+iloraz*yk(k);
        end
    end
 end