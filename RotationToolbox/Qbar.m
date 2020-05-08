function Qbar = Qbar(q)
%% Function to convert a quaternion vector to a quaternion matrix 'Qbar'
%
% Aldo Diaz, University of Campinas, 2020

Qbar = [ q(1) -q(2) -q(3) -q(4)
         q(2)  q(1) -q(4)  q(3) 
         q(3)  q(4)  q(1) -q(2)
         q(4) -q(3)  q(2)  q(1) ];

end

