function R = aa2R(omega_hat, theta, method)
%% Function that returns a rotation matrix from axis-angle parameters
%
% Aldo Diaz, University of Campinas, 2020

if nargin < 3
    method = 'Rodrigues';
end

switch method
    case 'Rodrigues' % Rodrigues' rotation formula
        R = eye(3)+sin(theta)*v2skew(omega_hat)+(1-cos(theta))*v2skew(omega_hat)*v2skew(omega_hat);
    
    case 'expm' % Exponential map
        R = expm(theta*v2skew(omega_hat));
    
    otherwise
        R = eye(3)+sin(theta)*v2skew(omega_hat)+(1-cos(theta))*v2skew(omega_hat)*v2skew(omega_hat);

end

end
