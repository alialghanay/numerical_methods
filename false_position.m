function out = false_position(in)
    x0 = input("please input x0>");
    x1 = input("please input x1>");
    err = 0.00001;
    while abs(in(x0)) > err
      x2 = x1 - (in(x1)*(x0-x1))/(in(x0)-in(x1));
      x0 = x1;
      x1 = x2;
    end
    
    out = x1;
    disp("False position:")
    disp(out);
end