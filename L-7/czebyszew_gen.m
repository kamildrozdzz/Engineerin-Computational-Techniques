function [ Y ] = czebyszew_gen( n )

if n == 0
    Y = 1;
elseif n == 1
    Y = [0, 1; 1, 0];
else
    Y = zeros( n+1, n+1 );
    Y(1, n+1:end) = 1;
    Y(2, n:end) = [1, 0];
    
    for i = 2:n
        a = zeros( 1, i+1 );
        a(1:end-1) = Y(i, n+2-i:end);
        b = zeros( 1, i+1 );
        b(3:end) = Y(i-1, n+3-i:end);
        
        Y(i+1, n-i+1:end) = 2*a-b;
    end

    Y = Y(end,:);
end

end