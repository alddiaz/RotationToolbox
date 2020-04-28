function [omega_hat, theta] = R2aa(R)
%% Function that returns the axis-angle parameters of a rotation matrix
%
% Aldo Diaz, University of Campinas, 2020

theta = acos((trace(R)-1)/2); % angle in radians
omega_hat = [ R(3,2)-R(2,3);
    	  R(1,3)-R(3,1);
    	  R(2,1)-R(1,2) ]/(2*sin(theta)); % axis

end
