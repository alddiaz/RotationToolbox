function q = qN(q)
%% Quaternion normalization
% A unit quaternion q = [q1, q2, q3, q4]' has a real component
% q1 and a vector component given by v = [q2, q3, q4]'
% q(1) ≥ 0 is assumed and enforced to get an unambiguous representation
%
% Aldo Diaz, University of Campinas 2019

q(1:4) = q(1:4) / norm(q(1:4));

if (q(1) ~= 0)
    q = q*sign(q(1));
end

end
