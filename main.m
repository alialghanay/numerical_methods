%% Homework By @alialghanay
% this assignment was made for ITGS219 Class 
% student name: Ali Mohammed Ali al-Ghanay
% Student Id: 2191804737
% how to start this program: 
% go to command window and type " main "
%% Main Function
while true
    assignment_mode = input("please Chose What Assignment to Solve options are A or B", "s");
    switch assignment_mode
        case 'A'
            %Program to calculate root finding
            % Define function
            func = str2func(input("Enter the function, e.g @(x)2*x - 3: ", "s"));
            fprintf("Please Chose The Numerical Method Options are:");
            numerical_method = input("\n 1. Drawing, 2. Fixed Point Iteration, 3. Bisection, 4. Newton Raphson, 5. False Position \n", "s"); 
            switch numerical_method
                case "1"
                    %% Drawing
                    drawing(func);
                case "2"    
                    %% Fixed point iteration
                    y = fixed_point_iteration(func);
                    disp(y);
                case "3"
                    %% Bisection
                    bisection(func);
                case "4"
                    %% Newton Raphson
                    newton_raphson(func);
                case "5"
                    %% False position
                    false_position(func);
                otherwise
                    fprintf('Error! You have entered an action not on the list\n');
                    fprintf('You will now be directed to the start again to select another action \n');
                    continue;
            end
            break;
        case 'B'
             % Define the arrays for x and y
             x = input('Please enter valuses of x> /n');
             y = input('Please enter valuses of y> /n');
             x0 = input('Please enter valuses of x0> ');
             fprintf("Please Chose The Numerical Method Options are:");
             numerical_method = input("\n 1. Newton Forward, 2. Newton Backward, 3. Lagrange Method, 4. Splines \n", "s");
            switch numerical_method
                case "1"
                    %% Newton Forward
                    c = newton_forward_interpolation(x, y, x0);
                    disp(c);
                case "2"    
                    %% Newton Backward
                    y = newton_backward_interpolation(x, y, x0);
                    disp(y);
                case "3"
                    %% Lagrange Method
                    y = lagrange_interpolation(x, y, x0);
                    disp(y);
                    %fprintf('Interpolated value from Lagrange method: %f\n', y_interp_lagrange);
                case "4"
                    %% Splines
                    y = cubic_spline_interpolation(x,y);
                    disp(y);
                otherwise
                   fprintf('Error! You have entered an action not on the list\n');
                   fprintf('You will now be directed to the start again to select another action \n');
                   continue;
            end
            break;
        otherwise
            fprintf('Error! You have entered an action not on the list\n');
            fprintf('You will now be directed to the start again to select another action \n');
            arrg = input("if wish to try agin enter y otherwise enter any key", "s");
            if(arrg ~= 'y')
                break;
            end
    end
end