function R = q2R(q)
%% Function to convert a quaternion to a rotation matrix
%
% Aldo Diaz, University of Campinas, 2020

norm_square = q(1)^2+q(2)^2+q(3)^2+q(4)^2; % square of the norm

if norm_square ~= 0 % 'q' is non-zero quaternion
    R = [ q(1)^2+q(2)^2-q(3)^2-q(4)^2  2*(q(2)*q(3)+q(1)*q(4))      2*(q(2)*q(4)-q(1)*q(3));
          2*(q(2)*q(3)-q(1)*q(4))      q(1)^2-q(2)^2+q(3)^2-q(4)^2  2*(q(3)*q(4)+q(1)*q(2));
          2*(q(2)*q(4)+q(1)*q(3))      2*(q(3)*q(4)-q(1)*q(2))      q(1)^2-q(2)^2-q(3)^2+q(4)^2 ];

    if norm_square ~= 1 % 'q' is non-unit quaternion
        R = R/norm_square;
    end
else
    R = eye(3);
end
