function a = viet(x)
n = length(x);
a(1) = 1; % wspolczynnik przy najwyzszej potedze = 1
for k = 1:n
 %liczy po kolei kolejne wspolczynniki rekurencyjnie
 % x - wektor miejsc zerowych
 % xx = 1 - bo jeden inaczej nie działa xD
 % idk = 1 - bo startuje od k=1 (patrz na pierwsza sume we wzorze)
 % idn = k - bo ma liczyc n-kty wspolczynnik
 a(k+1) = fun(x,1,1,k)* (-1)^k;
end
end
function y = fun(x,xx,idk,idn) %funkcja jak kazda inna a nazwana tak bo tak
n = length(x);
s = 0;
if idn == 0
 y = xx; % zwracam iloczyn
else
 for k = idk:n-idn+1
 % x - wiadomo co to
 % xx*x(k) - domnazam do wczesnijeszego iloczynu kolejne miejsce
 % zerowe
 % k+1 - bo kolejna suma zaczyna sie od indeksu m=k+1 (patrz wzor z wykladu)
 % idn-1 - dekrementuje i gdy zero to nie wywolije kolejnej
 % rekurensji tylko zwracam iloczyn
 s = s + fun(x,xx*x(k),k+1,idn-1);
 end
 y = s;
end
end
