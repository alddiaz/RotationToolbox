function q = qN(q)
%% Quaternion normalization
% The normalized unit quaternion q = [q1, q2, q3, q4]' has a real component
% q1 and a vector component given by v = [q2, q3, q4]'
%
% Aldo Diaz, University of Campinas, 2020

norm_q = sqrt(q(1)^2+q(2)^2+q(3)^2+q(4)^2);

if norm_q ~= 1 % if 'q' is a non-unit quaternion
    q = q/norm_q;
end

% The scalar quaternion component is positive by convention.
% (q(1) > 0 is enforced to get unambiguous rotation representations)
% This does not change the rotation the quaternion represents, since q and -q denote the same rotation.
if q(1) < 0
    q = -q;
end

end
