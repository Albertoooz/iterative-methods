a= [3 2 1] 
w=a(end)
p=1
x=5

for i = 1:(length(a)-1)
    p=p*x
    w=w+p*a(length(a)-i)
end 


b= [ 3 2 1]
w2=a(1)
for i = 1:(length(a)-1)
    w2=w2*x+a(i+1)
end

