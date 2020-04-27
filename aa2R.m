function R = aa2R(theta, omega, method)
%% Function that returns a rotation matrix from axis-angle parameters
%
% Aldo Diaz, University of Campinas, 2020

if nargin < 3
    method = 'Rodrigues';
end

switch method
    case 'Rodrigues' % Rodrigues' rotation formula
        R = eye(3)+sin(theta)*v2skew(omega)+(1-cos(theta))*v2skew(omega)*v2skew(omega);
    
    case 'expm' % Exponential map
        R = expm(theta*v2skew(omega));
    
    otherwise
        R = eye(3)+sin(theta)*v2skew(omega)+(1-cos(theta))*v2skew(omega)*v2skew(omega);;

end

end
