function [wynik]=trzy(A,b,x0)

n=size(A,1);
normVal=Inf;
%x = zeros(n,1);
x=x0;
%tol=1e-8; itr=0;

%while normVal>tol
    x_old=x;
    
    for i=1:n
        
       sigma=0;
        
        for j=1:i-1
                sigma=sigma+A(i,j)*x(j);
        end
        
        for j=i+1:n
                sigma=sigma+A(i,j)*x_old(j);
        end
        
        x(i)=(1/A(i,i))*(b(i)-sigma);
    end
    
  %  itr=itr+1;
  %  normVal=norm(x_old-x);
    wynik=x
%end
end