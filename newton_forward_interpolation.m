function s = newton_forward_interpolation(x, y, xf) 
    n=length(x); 
    d=zeros(n-1);
    h=x(2)-x(1); u=(xf-x(1))/h;
    for k=2:n 
        d(k-1,1)=y(k)-y(k-1);
    end
    for r=2:n-1 
        for k=1:n-r
            d(k,r)= d(k+1,r-1)-d(k,r-1);
        end
    end
    disp('The forward difference table is: /n')
    disp(d);
    s=y(1); t=u;
    for r=1:n-1 
        s=s+t*d(1,r);
        t=(u-r)/(r+1)*t;
    end
    fprintf('The required value is f(%1.2f)= %3.4f',xf,s); 
 
end 