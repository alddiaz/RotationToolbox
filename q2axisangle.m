function [theta, omega] = q2axisangle(q)
%% Function that returns the axis-angle parameters of a unit quaternion
%
% Aldo Diaz, University of Campinas, 2020

theta = 2*acos(q(1)); % angle in radians
omega = [ q(2);
    	  q(3);
    	  q(4) ]/(sin(theta/2)); % axis

end
