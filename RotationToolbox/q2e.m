function e = q2e(q, unit)
%% Function to convert non-unit quaternions to Euler angles
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

norm_square = q(1)^2+q(2)^2+q(3)^2+q(4)^2;
test = 2*(q(2)*q(4)-q(1)*q(3));

% Numerical accuracy is treated in the comparisons using 'eps'
% (floating-point relative accuracy)
if abs(test+norm_square) > eps('double')/4 && abs(test-norm_square) > eps('double')/4  % standard case
    y = -real(asin(test/norm_square)); % get the real part in case of complex-valued results
    x = atan2(2*(q(3)*q(4)+q(1)*q(2))/cos(y), (q(1)^2-q(2)^2-q(3)^2+q(4)^2)/cos(y));
    z = atan2(2*(q(2)*q(3)+q(1)*q(4))/cos(y), (q(1)^2+q(2)^2-q(3)^2-q(4)^2)/cos(y));
    %% There is another solution given by the set of angles:
    % y2 = pi - y;
    % x2 = atan2(2*(q(3)*q(4)+q(1)*q(2))/cos(y2), (q(1)^2-q(2)^2-q(3)^2+q(4)^2)/cos(y2));
    % z2 = atan2(2*(q(2)*q(3)+q(1)*q(4))/cos(y2), (q(1)^2+q(2)^2-q(3)^2-q(4)^2)/cos(y2));
else % gimbal-lock case
    z = 0; % can be set arbitrarily
    if abs(test+norm_square) <= eps('double')/4 % +90 degree pitch
        x = z + atan2(2*(q(2)*q(3)-q(1)*q(4)), 2*(q(2)*q(4)+q(1)*q(3)));
        y = pi/2;
    else  % -90 degree pitch
        x = -z + atan2(-2*(q(2)*q(3)-q(1)*q(4)), -2*(q(2)*q(4)+q(1)*q(3)));
        y = -pi/2;
    end
end
    
e = [ x; y; z ];

if unit == 'deg'
    e = e*180/pi; % angles given in degrees
end

end
