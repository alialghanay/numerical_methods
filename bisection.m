function out = bisection(in)
    a = 1;
    b = 2;
    err = 0.00001;
    while abs(a-b) > err
      c = (a+b)/2;
      if in(a)*in(c) < 0
        b = c;
      else
        a = c;
      end
    end

    out = c;
    disp("Bisection:")
    disp(out);
end