function Q = aa2Q(omega_hat, theta, method)
%% Function that returns a quaternion as matrix from axis-angle parameters
%
% Aldo Diaz, University of Campinas, 2020

if nargin < 3
    method = 'Rodrigues';
end

switch method
    case 'Rodrigues' % Rodrigues' rotation formula
        Q = cos(theta/2)*eye(4)+sin(theta/2)*Somega(omega_hat);
    
    case 'expm' % Exponential map
        Q = expm((theta/2)*Somega(omega_hat));
    
    otherwise
        Q = cos(theta/2)*eye(4)+sin(theta/2)*Somega(omega_hat);

end

end
