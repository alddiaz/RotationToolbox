function S = Sq(q)
%% The matrix S(q)
%
% Aldo Diaz, University of Campinas, 2019

S = [ -q(2) -q(3) -q(4);
       q(1) -q(4)  q(3);
       q(4)  q(1) -q(2);
      -q(3)  q(2)  q(1) ];

end
