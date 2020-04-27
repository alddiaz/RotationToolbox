function R = e2R(e, unit)
%% Function to create a rotation matrix given a vector of Euler angles around (x, y, z) axes:
% e = [ roll(x); pitch(y); yaw(z) ]
%
% R = Rx*Ry*Rz
%
% Aldo Diaz, University of Campinas, 2019

if nargin < 2
    unit = 'rad';
end

switch unit
    case {'rad', 'deg'} % angle given in radians or degrees
    	if unit == 'deg'
            e = e*180/pi;
	end
	
        Rx = [ 1 0 0;
               0 cos(e(1)) sin(e(1));
               0 -sin(e(1)) cos(e(1)) ];
        Ry = [ cos(e(2)) 0 -sin(e(2));
               0 1 0;
               sin(e(2)) 0 cos(e(2)) ];
        Rz = [ cos(e(3)) sin(e(3)) 0;
               -sin(e(3)) cos(e(3)) 0;
               0 0 1 ]; 
        R = Rx*Ry*Rz;
        
    case 'expm' % exponential map
        R = expm([  0   -e(3)  e(2);
                   e(3)   0   -e(1);
                  -e(2)  e(1)    0 ]);
end

end
