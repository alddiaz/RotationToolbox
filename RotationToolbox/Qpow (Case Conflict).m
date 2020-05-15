function Q = Qpow(Q, k)
%% Function to calculate the quaternion power
%
% 'Q' is a quaternion as matrix
% 'k' is the k-th power parameter
%
% Aldo Diaz, University of Campinas, 2020

if nargin < 2
    k = 1;
end

[omega_hat, theta] = Q2aa(Q);

Q = aa2Q(omega_hat, k*theta);

end
