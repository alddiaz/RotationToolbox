function q = qN(q)
%% Quaternion normalization
% A unit quaternion q = [q1, q2, q3, q4]' has a real component
% q1 and a vector component given by v = [q2, q3, q4]'
% q(1) ≥ 0 is assumed and enforced to get an unambiguous representation
%
% Aldo Diaz, University of Campinas 2019

q = q/norm(q);

% By convention, always keep scalar quaternion element positive. 
% This does not change the rotation that is represented
% by the unit quaternion, since q and -q denote the same rotation.
if q(1) < 0
    q = -q;
end

end
