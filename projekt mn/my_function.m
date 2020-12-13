function [ wynik ] = moja( A,b )

maxiter=1000;
dokl = 1e-8;



n=size(A,1);
M=diag(6*ones(n,1),0)+diag(-4*ones(n-1,1),1)+diag(-4*ones(n-1,1),-1);
N=M-A;

resJ(1) = norm(b);
roznica = 999;
xJ = zeros(n,1);
k = 2;
A1 = (M^-1) * N;
b1 =  (M^-1)*b;
while ((k < maxiter) && (roznica > dokl))
  y = b1 + A1*xJ;
  resJ(k) = norm(b-A*y);
  roznica = norm(y-xJ);
  xJ = y;
  k=k+1;
  wynik=xJ;
end

end