function a = reg_nielin_wiel(x1,x2,y)
    x1 = x1.^4;
    X = [x1(:),x2(:),ones(length(x1),1)];
    Y = y(:);

    a = (X'*X)^(-1)*X'*Y;
    a = a(:)';
end

