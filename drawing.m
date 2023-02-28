%% Drawing
% Plot the function
function out = drawing(in)
    fplot(in);
    title("Root finding by drawing")
    xlabel("x");
    ylabel("f(x)");
    out = true;
end