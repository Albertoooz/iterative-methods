function [ wynik ] = Jacobiimoj( A,b )

maxiter=1000;
dokl = 1e-8;
n=size(A,1)
resJ(1) = norm(b);
roznica=999
xJ = zeros(n,1)
B=diag(diag(A))
jed=eye(n)
k=2
while ((k < maxiter) && (roznica > dokl))
  y = (B^-1)*b + (jed-(B^-1)*A)*xJ;
  resJ(k) = norm(b-A*y);
  roznica = norm(y-xJ);
  xJ = y;
  k=k+1;
  wynik=xJ;
end
end