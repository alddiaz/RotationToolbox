function R = q2R(q)
%% Function to convert a unit quaternion to a rotation matrix
% Returns matrix R(q) as in Eq. (158) in (Shuster, 1993)
% Reference:
% M. D. Shuster, "A Survey of Attitude Representations", In: The Journal of
% Astronautical Sciences, Vol. 41, No. 4, pp. 439-517, 1993.
%
% Aldo Diaz, University of Campinas, 2019

q1 = q(1);   q2 = q(2);   q3 = q(3);   q4 = q(4);

R = [ q1^2+q2^2-q3^2-q4^2	2*(q2*q3+q1*q4)         2*(q2*q4-q1*q3);
        2*(q2*q3-q1*q4)     q1^2-q2^2+q3^2-q4^2     2*(q3*q4+q1*q2);
        2*(q2*q4+q1*q3)     2*(q3*q4-q1*q2)         q1^2-q2^2-q3^2+q4^2 ];

% If q is a unit quaternion, the following instruction can be removed
R = (1/(q1^2 + q2^2 + q3^2+ q4^2)).*R;
end
