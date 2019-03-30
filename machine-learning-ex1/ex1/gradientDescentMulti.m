function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %

 % i = 1:m;
%t1 = sum( X(i,:) * theta - y(i)); 
%t2 = sum( (X(i,:) * theta - y(i)) .* (X(i,2)) ) ; 
%t3 = sum((X(i,:) * theta - y(i)) .* (X(i,2)));


 %theta(1) = theta(1) - (alpha/m) * (t1);
  %theta(2) = theta(2) - (alpha/m) * (t2);
%theta(3) = theta(3) - (alpha/m) * (t3);
%i = 1:m;

h = X* theta; % Performing vector multiplication for every example of X obtaining 
               % a row vector of all h functions for each example 
               % those are the predicted values

a = h - y;

    
 
 theta = (theta - (alpha*(1/m).* X'*a));  
 

    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);

end

end
