function [Omega, theta] = logmap(R, method)
%% The logarithm map (inverse of the exponential map)
%
% The parameter 'method' can have the values
% 'std1'         The standard formula in vector form (returns a vector)
% 'std2'         The standard formula in matrix form (returns a matrix)
% 'CH'           The Cayley-Hamilton result
% 'ln'           The matrix logarithm
%
% Aldo Diaz, University of Campinas, 2020

if nargin < 2
    method = 'std1';
end

theta = acos((trace(R)-1)/2); % angle in radians

switch method
    case 'std1' % standard formula in vector form
        Omega = -[ R(2,3)-R(3,2);
                   R(3,1)-R(1,3);
                   R(1,2)-R(2,1) ]/(2*sin(theta)); % axis

    case 'std2' % standard formula in matrix form
        Omega = -(R'-R)/(2*sin(theta));

    case 'CH' % Cayley-Hamilton theorem's result
        Omega = -(2*cos(theta)+1)*eye(3)/(2*sin(theta))-sin(theta)*R/(cos(theta)-1)-R*R/(2*sin(theta));

    case 'ln' % matrix logarithm
        Omega = logm(R)/theta;
        
    otherwise
        Omega = -(R'-R)/(2*sin(theta));
end

end
