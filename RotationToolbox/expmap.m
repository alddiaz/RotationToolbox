function R = expmap(omega_hat, theta, method)
%% The exponential map
%
% The parameter 'method' can have the values
% 'CH'           The Rodrigues' rotation formula obtained from Cayley-Hamilton theorem
% 'exp'          The matrix exponential
%
% Aldo Diaz, University of Campinas, 2020

if nargin < 3
    method = 'CH';
end

switch method
    case 'CH' % the Rodrigues' rotation formula
        R = eye(3)+sin(theta)*v2skew(omega_hat)+(1-cos(theta))*v2skew(omega_hat)*v2skew(omega_hat);

    case 'exp' % the exponential map (matrix exponential)
        R = expm(theta*v2skew(omega_hat));

    otherwise
        R = eye(3)+sin(theta)*v2skew(omega_hat)+(1-cos(theta))*v2skew(omega_hat)*v2skew(omega_hat);

end

end
