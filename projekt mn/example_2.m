function [wynik]=dwa(A,b,x0)
%maxiter=1000;
%dokl = 1e-8;
n=size(A,1)
tmp = abs(eig(A));
tau = 2/(min(tmp) + max(tmp));
%resR(1) = norm(b);
%roznica = 999;
%xR = zeros(n,1);
xR=x0;
%k = 2;
%while ((k < maxiter) && (roznica > dokl))
  y = xR + tau*(b-A*xR);
%  resR(k) = norm(b-A*y);
%  roznica = norm(y-xR);
  xR = y;
 % k=k+1;
  wynik=xR;
%end

end