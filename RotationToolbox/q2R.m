function R = q2R(q)
%% Function to convert a quaternion to a rotation matrix
%
% Aldo Diaz, University of Campinas, 2019

R = [ q(1)^2+q(2)^2-q(3)^2-q(4)^2  2*(q(2)*q(3)+q(1)*q(4))      2*(q(2)*q(4)-q(1)*q(3));
      2*(q(2)*q(3)-q(1)*q(4))      q(1)^2-q(2)^2+q(3)^2-q(4)^2  2*(q(3)*q(4)+q(1)*q(2));
      2*(q(2)*q(4)+q(1)*q(3))      2*(q(3)*q(4)-q(1)*q(2))      q(1)^2-q(2)^2-q(3)^2+q(4)^2 ];

if norm(q) ~= 1 % 'q' is a non-unit quaternion
    R = (1/(q(1)^2+q(2)^2+q(3)^2+q(4)^2)).*R;
end

end
