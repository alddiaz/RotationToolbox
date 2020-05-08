function [omega_hat, theta] = q2aa(q)
%% Function that returns the axis-angle parameters of a non-unit quaternion
%
% Aldo Diaz, University of Campinas, 2020

if nargin < 2
    unit_quaternion = false;
end

q = q/norm(q); % unit quaternion normalization

theta = 2*acos(q(1)); % angle in radians

if theta ~= 0
    omega_hat = -[ q(2);
                   q(3);
                   q(4) ]/(sin(theta/2)); % axis
else
    omega_hat = [0; 0; 0];
end

end
