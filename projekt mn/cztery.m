function [ wynik ] = cztery( A,b,x0 )
diagonalna=diag(A)
diagonalna1=diag(A,-1)
diagonalna2=diag(A,1)

B = diag(diagonalna,0)+diag(diagonalna1,-1)+diag(diagonalna2,1)

%maxiter=1000;
%dokl = 1e-8;
n=size(A,1)
%resJ(1) = norm(b);
%roznica=999
%xJ = zeros(n,1)
xJ=x0;

jed=eye(n)
k=2
%while ((k < maxiter) && (roznica > dokl))
  y = B\b + (jed-B\A)*xJ;
%  resJ(k) = norm(b-A*y);
%  roznica = norm(y-xJ);
  xJ = y;
%  k=k+1;
  wynik=xJ;
%end
end