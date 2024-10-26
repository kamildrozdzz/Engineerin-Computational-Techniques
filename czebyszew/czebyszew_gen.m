function a = czebyszew_gen(N)
    if N == 0
        a = 0;
    else
        m = 0:1:N;
        xm = cos(pi.*m./N);
        ym = ones(1,length(m));
        for l = 2:2:length(m)
            ym(l) = -1;
        end
        
        A = ones(N+1,N+1);
        A = A(:,1:end).*xm(:);
        
        for l = 1:(N+1)
            A(:,l) = A(:,l).^(N+1-l);
        end
        
        a = A^(-1)*ym(:);
        a = a(:)';
    end
end

