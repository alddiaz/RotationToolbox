function [ R1, R2, R3, R4 ] = dRdq(q)
%% The derivative of R(q) w.r.t. qi, i={1,2,3,4}
%
% Aldo Diaz, University of Campinas, 2019

q1 = q(1); q2 = q(2); q3 = q(3); q4 = q(4);

R1 = 2* [  q1    q4  -q3;
          -q4    q1   q2;
           q3   -q2   q1 ];
   
R2 = 2* [  q2    q3   q4;
           q3   -q2   q1;
           q4   -q1  -q2 ];

R3 = 2* [ -q3    q2  -q1;
           q2    q3   q4;
           q1    q4  -q3 ];

R4 = 2* [ -q4    q1   q2;
          -q1   -q4   q3;
           q2    q3   q4 ];

end
