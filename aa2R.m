function R = aa2R(omega_hat, theta, method)
%% Function that returns a rotation matrix from axis-angle parameters
%
% The parameter 'method' can have the values
% 'Rodrigues'    The Rodrigues' rotation formula
% 'exp'          The matrix exponential
%
% Aldo Diaz, University of Campinas, 2020

if nargin < 3
    method = 'Rodrigues';
end

R = expmap(omega_hat, theta, method);

end
