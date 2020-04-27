function q = q2aa(theta, omega)
%% Function that returns a quaternion from axis-angle parameters
%
% Aldo Diaz, University of Campinas, 2020

q = [ cos(theta/2);
      sin(theta/2)*omega ];

end
