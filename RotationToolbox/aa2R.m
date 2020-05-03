function R = aa2R(omega_hat, theta, method)
%% Function that returns a rotation matrix from axis-angle parameters
%
% The parameter 'method' can have the values
% 'CH'           The Rodrigues' rotation formula obtained from Cayley-Hamilton theorem
% 'exp'          The matrix exponential
%
% Aldo Diaz, University of Campinas, 2020

if nargin < 3
    method = 'CH';
end

R = expmap(omega_hat, theta, method);

end
