function [omega_hat, theta] = Q2aa(Q, unit_quaternion)
%% Function that returns the axis-angle parameters of a quaternion as matrix
%
% 'unit_quaternion' is a boolean flag that accounts for normalization
%
% Aldo Diaz, University of Campinas, 2020

if nargin < 2
    unit_quaternion = false;
end

% If 'q' in 'Q = q2Q(q)' has been previously normalized
if unit_quaternion
    Q = -Q;
end

theta = 2*acos(sum(diag(Q))/4); % angle in radians
omega_hat = [ (Q(2,1)-Q(1,2)-Q(4,3)+Q(3,4))/4;
              (Q(3,1)+Q(4,2)-Q(1,3)-Q(2,4))/4;
              (Q(4,1)-Q(3,2)+Q(2,3)-Q(1,4))/4 ]/(sin(theta/2)); % axis

end
