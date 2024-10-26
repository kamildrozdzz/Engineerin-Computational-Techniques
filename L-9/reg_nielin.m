    load('TO_KOL_KON_RNLW_02_dane.mat');
    gx = x.^2;
    X = [gx(:), ones(length(x),1)];
    Y = y(:);

    a = (X'*X)^(-1)*X'*Y;
    disp(a);


