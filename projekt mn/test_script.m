n = 5;

alfa = 3;
maxiter = 1000;
dokl = 1e-8;
A = alfa*diag(ones(n,1))-diag(ones(n-1,1),1)-diag(ones(n-1,1),-1);
	
b = ones(n,1);

A