function q = e2q(e, unit)
%% Function to convert Euler angles to quaternions
%
% e = [ roll(x); pitch(y); yaw(z) ]
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

q = [ cos(e(1)/2)*cos(e(2)/2)*cos(e(3)/2)+sin(e(1)/2)*sin(e(2)/2)*sin(e(3));
      sin(e(1)/2)*cos(e(2)/2)*cos(e(3)/2)-cos(e(1)/2)*sin(e(2)/2)*sin(e(3));
      cos(e(1)/2)*sin(e(2)/2)*cos(e(3)/2)+sin(e(1)/2)*cos(e(2)/2)*sin(e(3));
      cos(e(1)/2)*cos(e(2)/2)*sin(e(3)/2)-sin(e(1)/2)*sin(e(2)/2)*cos(e(3)) ];

end
