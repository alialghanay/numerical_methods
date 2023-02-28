function yp = lagrange_interpolation(x,y,xp)  
 sum=0;
for i =1:length(x)
    a=1;
    for j =1:length(x)
        if j~=i
            a = a*(xp-x(j))/(x(i)-x(j));   
        end
    end
    sum=sum + y(i)*a;   
end
yp = sum;                 