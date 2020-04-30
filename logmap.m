function Omega = logmap(R, method)
%% The logarithm map (inverse of the exponential map)
%
% The parameter 'method' can have the values
% 'M1'           The standard formula
% 'C-H'           The Cayley-Hamilton result
% 'ln'           The matrix logarithm
%
% Aldo Diaz, University of Campinas, 2019

if nargin < 2
    method = 'standard';
end

theta = acos((trace(R)-1)/2);

switch method
    case 'standard'
        Omega = (R-R')/(2*sin(theta));

    case 'C-H' % Cayley-Hamilton theorem's result
        Omega = -((2*cos(theta)+1)*eye(3)/(2*sin(theta))+sin(theta)*R/(cos(theta)-1)+R*R/(2*sin(theta)));

    case 'ln' % matrix logarithm
        Omega = logm(R)/theta;
        
    otherwise
        Omega = (R-R')/(2*sin(theta));
end

end
