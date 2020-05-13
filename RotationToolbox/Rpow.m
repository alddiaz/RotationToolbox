function R = Rpow(R, k)
%% Function to calculate the rotation power
%
% 'R' is a proper rotation
% 'k' is the k-th power parameter
%
% Aldo Diaz, University of Campinas, 2020

if nargin < 2
    k = 1;
end

[omega_hat, theta] = R2aa(R);

R = aa2R(omega_hat, k*theta);

end
