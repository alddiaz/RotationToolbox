function q = qinterp(q1, q2, k)
%% Quaternion as vector interpolation (SLERP)
%
% 'q1' and 'q2' are quaternions as vectors
% 'k' is the interpolation parameter in the interval [0, 1]
%
% Aldo Diaz, University of Campinas, 2020

if nargin < 3
   k = 1;
end

q = Qpow(q2Q(q2)*q2Q(qInv(q1)), k)*q1;

end
