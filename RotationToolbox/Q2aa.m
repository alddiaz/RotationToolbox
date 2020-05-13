function [omega_hat, theta] = Q2aa(Q, method)
%% Function that returns the axis-angle parameters of a non-unit quaternion as matrix
%
% The parameter 'method' can have the values
% 'std'          The standard formula
% 'CH'           The Cayley-Hamilton result
% 'ln'           The matrix logarithm
%
% Aldo Diaz, University of Campinas, 2020

if nargin < 2
    method = 'std';
end

[S, theta] = logmapQ(Q, method);
omega_hat = skew2v(S);

end
