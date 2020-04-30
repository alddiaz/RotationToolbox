function e = q2e(q)
%% Function to convert quaternions to Euler angles
%
% e = [ roll(x); pitch(y); yaw(z) ]
%
% Aldo Diaz, University of Campinas, 2020

e = [ atan2(2*(q(1)*q(2)+q(3)*q(4)), 1-2*(q(2)*q(2)+q(3)*q(3)));
      asin(2*(q(1)*q(3)-q(2)*q(4)));
      atan2(2*(q(1)*q(4)+q(2)*q(3)), 1-2*(q(3)*q(3)+q(4)*q(4))) ];

end
