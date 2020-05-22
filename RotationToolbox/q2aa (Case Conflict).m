function [omega_hat, theta] = q2aa(q)
%% Function that returns the axis-angle parameters of a non-unit quaternion
%
% Aldo Diaz, University of Campinas, 2020

if nargin < 2
    unit_quaternion = false;
end

% theta = 2*acos(q(1)/norm(q)); % angle in radians
theta = 2*atan2(norm(q(2:4)),q(1)); % numerically more stable

if theta ~= 0
    omega_hat = -[ q(2);
                   q(3);
                   q(4) ]/(sin(theta/2))/norm(q); % axis
else
    omega_hat = [0; 0; 0];
end

end
