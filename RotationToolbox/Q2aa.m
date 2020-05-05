function [omega_hat, theta] = Q2aa(Q, method, unit_quaternion)
%% Function that returns the axis-angle parameters of a quaternion as matrix
%
% The parameter 'method' can have the values
% 'std'          The standard formula
% 'CH'           The Cayley-Hamilton result
% 'ln'           The matrix logarithm
%
% 'unit_quaternion' is a boolean flag that accounts for previous quaternion normalization
%
% Aldo Diaz, University of Campinas, 2020

if nargin < 3
    unit_quaternion = false;
    if nargin < 2
        method = 'std';
    end
end

% % Use 'unit_quaternion=true', if 'q' in 'Q = q2Q(q)' has been previously normalized
if unit_quaternion
    Q = -Q;
end

[S, theta] = logmapQ(Q, method);
omega_hat = skew2v(S);

end
