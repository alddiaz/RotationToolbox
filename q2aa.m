function [omega_hat, theta] = q2aa(q)
%% Function that returns the axis-angle parameters of a unit quaternion
%
% Aldo Diaz, University of Campinas, 2020

theta = 2*acos(q(1)); % angle in radians
omega_hat = [ q(2);
    	  q(3);
    	  q(4) ]/(sin(theta/2)); % axis

end
