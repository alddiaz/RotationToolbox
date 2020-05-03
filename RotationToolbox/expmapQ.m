function Q = expmapQ(omega_hat, theta, method)
%% The exponential map in the quaternion space
%
% The parameter 'method' can have the values
% 'CH'           The formula obtained from Cayley-Hamilton theorem
% 'exp'          The matrix exponential
%
% Aldo Diaz, University of Campinas, 2020

if nargin < 3
    method = 'CH';
end

switch method
    case 'CH' % trigonometric equivalence
        Q = cos(theta/2)*eye(4)+sin(theta/2)*S(omega_hat);
    
    case 'exp' % the exponential map (matrix exponential)
        Q = expm((theta/2)*S(omega_hat));
    
    otherwise
        Q = cos(theta/2)*eye(4)+sin(theta/2)*S(omega_hat);

end

end
