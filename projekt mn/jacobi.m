
function wynik=Jacobi(A,b)

resJ(1) = norm(b);
roznica = 999;
xJ = zeros(n,1);
k = 2;
A1 = diag(1./diag(A)) * (diag(diag(A))-A);
b1 = b ./ diag(A);
while ((k < maxiter) && (roznica > dokl))
  y = b1 + A1*xJ;
  resJ(k) = norm(b-A*y);
  roznica = norm(y-xJ);
  xJ = y;
  k++;
  wynik=xJ;
endwhile

endfunction