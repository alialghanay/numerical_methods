function s = newton_backward_interpolation(x, y, xf)

rows = length(y);
cols = rows+1;
h = x(2) - x(1);

table = zeros(rows, cols);

for i = 1:rows
    table(i, 1) = x(i);
    table(i, 2) = y(i);
end


n = 1;
for j = 3:cols
    for i = 1:rows-n
        table(i, j) = table(i+1, j-1) - table(i, j-1);
    end
    n = n +1;
end

temp0 = 1;
p = 0;
for i = 1:rows
   temp = (xf-x(i))/h;
   if(( temp > 0 && temp < 1))
        p = (xf-x(i+1))/h;
        temp0 = i+1;
        
   end
end

s = table(temp0, 2);

r = 1;
n = 1;
for i = 2:rows
    r = r * (p+i-2);
    if(temp0-n < 1)
        break;
    end
    s = s + (r * (table(temp0-n, i+1)/factorial(i-1)));
    n = n + 1;
end

disp(table);

fprintf('Final answer is: %f\n', s);
end