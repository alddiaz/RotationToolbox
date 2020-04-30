function q = qN(q)
%% Quaternion normalization
% A unit quaternion q = [q1, q2, q3, q4]' has a real component
% q1 and a vector component given by v = [q2, q3, q4]'
% q(1) ≥ 0 is assumed and enforced to get an unambiguous representation
%
% Aldo Diaz, University of Campinas 2019

if norm(q) ~= 1 % if q is a non-unit quaternion
    q = q/norm(q);
end

% The scalar quaternion component is positive by convention.
% This does not change the rotation the unit quaternion represents, since q and -q denote the same rotation.
if q(1) < 0
    q = -q;
end

end
