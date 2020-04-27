function q = e2q(e)
%% Function to convert Euler angles to quaternions
%
% e = [ roll(x); pitch(y); yaw(z) ]
%
% Aldo Diaz, University of Campinas, 2020

q = [ cos(e(1)/2)*cos(e(2)/2)*cos(e(3)/2)+sin(e(1)/2)*sin(e(2)/2)*sin(e(3));
      sin(e(1)/2)*cos(e(2)/2)*cos(e(3)/2)-cos(e(1)/2)*sin(e(2)/2)*sin(e(3));
      cos(e(1)/2)*sin(e(2)/2)*cos(e(3)/2)+sin(e(1)/2)*cos(e(2)/2)*sin(e(3));
      cos(e(1)/2)*cos(e(2)/2)*sin(e(3)/2)-sin(e(1)/2)*sin(e(2)/2)*cos(e(3)) ];

end
