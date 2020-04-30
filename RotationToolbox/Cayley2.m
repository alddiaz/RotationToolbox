function q = Cayley2(R)
%% Function to convert a rotation matrix to a (unit) quaternion
% Reference:
% S. Sarabandi, A. Perez-Gracia, F. Thomas, "On Cayley's Factorization with
% an Application to the Orthonormalization of Noisy Rotation Matrices",
% Advances in Applied Clifford Algebras, 2019.
%
% Aldo Diaz, University of Campinas, 2020

q(1,1) = sqrt((1+R(1,1)+R(2,2)+R(3,3))^2 + (R(2,3)-R(3,2))^2 + (R(3,1)-R(1,3))^2 + (R(1,2)-R(2,1))^2)/4;
q(2,1) = sqrt((R(2,3)-R(3,2))^2 + (1+R(1,1)-R(2,2)-R(3,3))^2 + (R(1,2)+R(2,1))^2 + (R(1,3)+R(3,1))^2)/4;
q(3,1) = sqrt((R(3,1)-R(1,3))^2 + (R(1,2)+R(2,1))^2 + (1-R(1,1)+R(2,2)-R(3,3))^2 + (R(2,3)+R(3,2))^2)/4;
q(4,1) = sqrt((R(1,2)-R(2,1))^2 + (R(1,3)+R(3,1))^2 + (R(2,3)+R(3,2))^2 + (1-R(1,1)-R(2,2)+R(3,3))^2)/4;

[~, j_hat] = max(q); % column index of the dominant eigenvector of 'C'

switch j_hat
    case 1
        q(1,1) =                     q(1,1);
        q(2,1) = sign(R(2,3)-R(3,2))*q(2,1);
        q(3,1) = sign(R(3,1)-R(1,3))*q(3,1);
        q(4,1) = sign(R(1,2)-R(2,1))*q(4,1);
    case 2
        q(1,1) = sign(R(2,3)-R(3,2))*q(1,1);
        q(2,1) =                     q(2,1);
        q(3,1) = sign(R(1,2)+R(2,1))*q(3,1);
        q(4,1) = sign(R(1,3)+R(3,1))*q(4,1);
    case 3
        q(1,1) = sign(R(3,1)-R(1,3))*q(1,1);
        q(2,1) = sign(R(1,2)+R(2,1))*q(2,1);
        q(3,1) =                     q(3,1);
        q(4,1) = sign(R(2,3)+R(3,2))*q(4,1);
    case 4
        q(1,1) = sign(R(1,2)-R(2,1))*q(1,1);
        q(2,1) = sign(R(1,3)+R(3,1))*q(2,1);
        q(3,1) = sign(R(2,3)+R(3,2))*q(3,1);
        q(4,1) =                     q(4,1);
end

end
