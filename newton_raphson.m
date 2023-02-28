function out = newton_raphson(in)
    x0 = input("enter initial guesses: >"); 
    % solve the equation
    out = fsolve(in,x0);
    disp("Newton Raphson:")
    disp(out);
end