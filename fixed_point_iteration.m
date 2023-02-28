%% Fixed point iteration
function out = fixed_point_iteration(in)
    fp = in;
    x0 = input("please input initial guess for fixed point>");
    x1 = fp(x0);

    while abs(x1-x0) > 0.00001
      x0 = x1;
      x1 = fp(x0);
    end
    out = x1;
    disp("Fixed point iteration:")
    disp(out);
end