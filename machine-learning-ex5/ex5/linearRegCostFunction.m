function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%
% X = 12*2 y = 12*1 theta = 2*1 

hypo = X * theta; % 12*1
error = hypo - y; % 12*1
J = (1/(2*m)) * sum(error .^ 2);

theta_new = theta';
theta_new = theta_new(:,2:end);
reg = (lambda/(2*m)) * sum(theta_new .^ 2);

J = J + reg;

temptheta = theta;
temptheta(1) = 0;
grad = (1/m) * (X' * error) + (lambda/m) * temptheta;













% =========================================================================

grad = grad(:);

end
