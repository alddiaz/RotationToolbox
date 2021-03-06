function R = e2R(e, unit)
%% Function to create a rotation matrix given a vector 'e' of Euler angles around (x, y, z) axes as:
% e = [ roll(x); pitch(y); yaw(z) ]
% R = Rx*Ry*Rz
%
% The parameter 'unit' can have the values:
% 'deg'    Euler angles in 'e' are specified in degrees
%
% Aldo Diaz, University of Campinas, 2020

if nargin < 2
    unit = 'rad'; % angles given in radians
end

if unit == 'deg'
    e = e*pi/180; % angles given in degrees
end

Rx = [ 1      0          0;
       0   cos(e(1))  sin(e(1));
       0  -sin(e(1))  cos(e(1)) ];

Ry = [ cos(e(2))  0  -sin(e(2));
          0       1      0;
       sin(e(2))  0   cos(e(2)) ];

Rz = [ cos(e(3))  sin(e(3))  0;
      -sin(e(3))  cos(e(3))  0;
          0          0       1 ];

R = Rx*Ry*Rz;
        
end
