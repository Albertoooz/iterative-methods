diagonalna=diag(A)
diagonalna1=diag(A,-1)
diagonalna2=diag(A,1)

B = diag(diagonalna,0)+diag(diagonalna1,-1)+diag(diagonalna2,1)

order=[1 2 4 3]

n=size(order,2)