function [omega_hat, theta] = R2aa(R, method)
%% Function that returns the axis-angle parameters of a rotation matrix
%
% The parameter 'method' can have the values
% 'std1'         The standard formula in vector form
% 'std2'         The standard formula in matrix form
% 'CH'           The Cayley-Hamilton result
% 'ln'           The matrix logarithm
%
% Aldo Diaz, University of Campinas, 2020

if nargin < 2
    method = 'std1';
end

switch method
    case 'std1'
        [omega_hat, theta] = logmap(R, method);

    otherwise
        [Omega, theta] = logmap(R, method);
        omega_hat = skew2v(Omega);
end

end
