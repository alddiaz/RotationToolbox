function e = R2e2(R)
%% Function to returns a vector of Euler angles given a rotation matrix
% e = ( roll(x); pitch(y); yaw(z) )
%
% Aldo Diaz, University of Campinas, 2019

    %assert(isRotationMatrix(R))
    sy = sqrt(R(1,1)*R(1,1)+R(2,1)*R(2,1));
    singular = sy < 1e-6;
    if ~singular
        x = atan2(R(3,2), R(3,3));
        y = atan2(-R(3,1), sy);
        z = atan2(R(2,1), R(1,1));
    else
        x = atan2(-R(2,3), R(2,2));
        y = atan2(-R(3,1), sy);
        z = 0;
    end
    
    e = [ x, y, z ]';

end
