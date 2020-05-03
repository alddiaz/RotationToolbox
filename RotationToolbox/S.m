function S = S(omega_hat)
%% The skew-symmetric matrix S(omega_hat)
%
% Aldo Diaz, University of Campinas, 2020

S = [      0        -omega_hat(1) -omega_hat(2)  -omega_hat(3);
      omega_hat(1)         0       omega_hat(3)  -omega_hat(2);
      omega_hat(2)  -omega_hat(3)        0        omega_hat(1);
      omega_hat(3)   omega_hat(2) -omega_hat(1)        0       ];

end
