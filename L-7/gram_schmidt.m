function W = gram_schmidt(V)
    function y = magn(v)
        y = sqrt(sum(v.^2));
    end

    W = zeros(size(V));
    U = zeros(size(V));
    W(1,:) = V(1,:)/magn(V(1,:));

    function y = ilo_skal(v,w)
        y = sum(v.*w);
    end

    for k=2:size(V,1)
        U(k,:) = V(k,:);
        for l = 1:k-1
            U(k,:) = U(k,:) - ilo_skal(V(k,:),W(l,:)) * W(l,:);
        end
        W(k,:) = U(k,:)/magn(U(k,:));
    end
end

