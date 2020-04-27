function Q = q2Q(q)
%% Function to convert a quaternion vector to a quaternion matrix
%
% Aldo Diaz, University of Campinas, 2020

Q = [ q(1) -q(2) -q(3) -q(4)
      q(2)  q(1)  q(4) -q(3) 
      q(3) -q(4)  q(1)  q(2)
      q(4)  q(3) -q(2)  q(1) ];

end

