function q = qpow(q, k)
%% Function to calculate the quaternion power
%
% 'q' is a quaternion as vector
% 'k' is the k-th power parameter
%
% Aldo Diaz, University of Campinas, 2020

if nargin < 2
    k = 1;
end

[omega_hat, theta] = q2aa(q);

q = aa2q(omega_hat, k*theta);

end
