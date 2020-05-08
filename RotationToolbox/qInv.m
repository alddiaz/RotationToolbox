function q = qInv(q)
%% Function to calculate the quaternion inverse
%
% Aldo Diaz, University of Campinas, 2020

q = [ q(1); -q(2); -q(3); -q(4) ]/(q(1)^2+q(2)^2+q(3)^2+q(4)^2);

end
