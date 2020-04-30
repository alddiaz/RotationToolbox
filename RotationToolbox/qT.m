function q = qT(q)
%% Function to calculate the quaternion conjugate, a.k.a. quaternion transpose
%
% Aldo Diaz, University of Campinas, 2020

q = [ q(1); -q(2); -q(3); -q(4) ];

end
