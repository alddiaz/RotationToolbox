function S = Sq(q)
%% The matrix S(q)
%
% Aldo Diaz, University of Campinas, 2019

q1 = q(1); q2 = q(2); q3 = q(3); q4 = q(4);

S = [-q2 -q3 -q4;
      q1 -q4  q3;
      q4  q1 -q2;
     -q3  q2  q1 ];

end
