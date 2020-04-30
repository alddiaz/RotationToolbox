function [ R1, R2, R3, R4 ] = dRdq(q)
%% The derivative of R(q) w.r.t. qi, i={1,2,3,4}
%
% Aldo Diaz, University of Campinas, 2019

R1 = 2* [  q(1)    q(4)  -q(3);
          -q(4)    q(1)   q(2);
           q(3)   -q(2)   q(1) ];

R2 = 2* [  q(2)    q(3)   q(4);
           q(3)   -q(2)   q(1);
           q(4)   -q(1)  -q(2) ];

R3 = 2* [ -q(3)    q(2)  -q(1);
           q(2)    q(3)   q(4);
           q(1)    q(4)  -q(3) ];

R4 = 2* [ -q(4)    q(1)   q(2);
          -q(1)   -q(4)   q(3);
           q(2)    q(3)   q(4) ];

end
