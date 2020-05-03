function Q = aa2Q(omega_hat, theta, method)
%% Function that returns a quaternion as matrix from axis-angle parameters
%
% The parameter 'method' can have the values
% 'CH'           The formula obtained from Cayley-Hamilton theorem
% 'exp'          The matrix exponential
%
% Aldo Diaz, University of Campinas, 2020

if nargin < 3
    method = 'CH';
end

Q = expmapQ(omega_hat, theta, method);

end
