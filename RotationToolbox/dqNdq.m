function JqN = dqNdq(q)
%% The derivative of qN(q) w.r.t. qk, k={1,2,3,4}
%
% Aldo Diaz, University of Campinas, 2020

JqN = [ q(2)^2+q(3)^2+q(4)^2       -q(1)*q(2)             -q(1)*q(3)            -q(1)*q(4);
           -q(2)*q(1)         q(1)^2+q(3)^2+q(4)^2       -q(2)*q(3)            -q(2)*q(4);
           -q(3)*q(1)             -q(3)*q(2)         q(1)^2+q(2)^2+q(4)^2      -q(3)*q(4);
           -q(4)*q(1)             -q(4)*q(2)             -q(4)*q(3)         q(1)^2+q(2)^2+q(3)^2 ]/sqrt((q(1)^2+q(2)^2+q(3)^2+q(4)^2)^3);

end
