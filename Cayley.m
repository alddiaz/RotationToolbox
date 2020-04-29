function q = Cayley(R)
%% Function to convert a rotation matrix to a unit quaternion using Cayley's method
% Reference:
% S. Sarabandi, A. Perez-Gracia, F. Thomas, "On Cayley's Factorization with an Application to the Orthonormalization of Noisy Rotation Matrices",
% Advances in Applied Clifford Algebras, 2019.
%
% Aldo Diaz, University of Campinas, 2020

C = [ 1+R(1,1)+R(2,2)+R(3,3)    R(2,3)-R(3,2)           R(3,1)-R(1,3)           R(1,2)-R(2,1);
        R(2,3)-R(3,2)           1+R(1,1)-R(2,2)-R(3,3)	R(2,1)+R(1,2)           R(1,3)+R(3,1);
        R(3,1)-R(1,3)           R(2,1)+R(1,2)           1-R(1,1)+R(2,2)-R(3,3)	R(3,2)+R(2,3);
        R(1,2)-R(2,1)           R(1,3)+R(3,1)           R(3,2)+R(2,3)           1-R(1,1)-R(2,2)+R(3,3) ]/4;

q = sqrt([ C(:,1)'*C(:,1); C(:,2)'*C(:,2); C(:,3)'*C(:,3); C(:,4)'*C(:,4) ]); % column-wise norm of 'C'

[~, j_hat] = max(q); % column index of the dominat eigenvector of 'C'

q = sign(C(:,j_hat)).*q; % sign assignment operation

if q(j_hat) < 0
    q(j_hat) = -q(j_hat); % assumption for sign consistency
end

end

