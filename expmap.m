function R = expmap(omega_hat, theta, method)
%% The exponential map
%
% The parameter 'method' can have the values
% 'Rodrigues'    The Rodrigues' rotation formula
% 'exp'          The matrix exponential
%
% Aldo Diaz, University of Campinas, 2019

if nargin < 3
    method = 'Rodrigues';
end

switch method
    case 'Rodrigues' % Rodrigues' rotation formula
        R = eye(3)+sin(theta)*v2skew(omega_hat)+(1-cos(theta))*v2skew(omega_hat)*v2skew(omega_hat);

    case 'exp' % matrix exponential
        R = expm(theta*v2skew(omega_hat));

    otherwise
        R = eye(3)+sin(theta)*v2skew(omega_hat)+(1-cos(theta))*v2skew(omega_hat)*v2skew(omega_hat);

end

end
