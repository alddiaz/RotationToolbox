function e = R2e(R, unit)
%% Function to returns a vector of Euler angles given a rotation matrix as:
% R = Rx*Ry*Rz
% e = ( roll(x); pitch(y); yaw(z) )
%
% The parameter 'unit' can have the values:
% 'deg'    Euler angles in 'e' are specified in degrees
%
% Aldo Diaz, University of Campinas, 2020

if nargin < 2
    unit = 'rad'; % angles given in radians
end
    
if R(1,3) ~= 1 && R(1,3) ~= -1
    y = -asin(R(1,3));
    x = atan2(R(2,3)/cos(y), R(3,3)/cos(y));
    z = atan2(R(1,2)/cos(y), R(1,1)/cos(y));
    %% There is another solution given by the set of angles:
    % y2 = pi - y;
    % x2 = atan2(R(2,3)/cos(y2), R(3,3)/cos(y2));
    % z2 = atan2(R(1,2)/cos(y2), R(1,1)/cos(y2));
else
    z = 0;
    if R(1,3) == -1
        y = pi/2;
        x = z + atan2(R(2,1), R(3,1));
    else
        y = -pi/2
        x = -z + atan2(-R(2,1), -R(3,1));
    end
end
    
e = [ x; y; z ];

if unit == 'deg'
    e = e*180/pi; % angles given in degrees
end

end
