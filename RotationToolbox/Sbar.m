function Sbar = Sbar(q)
%% The matrix Sbar(q)
%
% Aldo Diaz, University of Campinas, 2020

Sbar = [ -q(2) -q(3) -q(4);
          q(1) -q(4)  q(3);
          q(4)  q(1) -q(2);
         -q(3)  q(2)  q(1) ];

end
