function [wynik]=iteruj(A,b,order)
maxiter=1000
roznica=999
dokl=1e-8
n=size(order,2)
m=size(A,1)
x=zeros(m,1)
wynik1=x
k=2
while ((k < maxiter) && (roznica > dokl))
for c=1:n-1
s=order(c)
if s==1
    x=jeden(A,b,x);
elseif s==2
    x=dwa(A,b,x);
elseif s==3
    x=trzy(A,b,x);
elseif s==4
    x=cztery(A,b,x);
end
end
roznica = norm(x-wynik1);
wynik1=x
k=k+1
end
wynik=wynik1
end

