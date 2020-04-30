function R = q2R(q)
%% Function to convert a quaternion to a rotation matrix
%
% Aldo Diaz, University of Campinas, 2019

q1 = q(1);   q2 = q(2);   q3 = q(3);   q4 = q(4);

R = [ q1^2+q2^2-q3^2-q4^2	2*(q2*q3+q1*q4)         2*(q2*q4-q1*q3);
        2*(q2*q3-q1*q4)     q1^2-q2^2+q3^2-q4^2     2*(q3*q4+q1*q2);
        2*(q2*q4+q1*q3)     2*(q3*q4-q1*q2)         q1^2-q2^2-q3^2+q4^2 ];

if norm(q) ~= 1 % if q is a non-unit quaternion
    R = (1/(q1^2 + q2^2 + q3^2+ q4^2)).*R;
end

end
