function q = BarItzhack(R)
%% Function to convert a rotation matrix to a quaternion using Bar-Itzhack's method
% Reference:
% I. Y. Bar-Itzhack, "New method for extracting the quaternion from a rotation matrix",
% Journal of Guidance, vol. 23, no. 6, pp. 1085-1087, 2000. 
%
% Aldo Diaz, University of Campinas, 2020

K = [ R(1,1)-R(2,2)-R(3,3)    R(1,2)+R(2,1)           R(1,3)+R(3,1)           R(3,2)-R(2,3);
      R(1,2)+R(2,1)          -R(1,1)+R(2,2)-R(3,3)    R(2,3)+R(3,2)           R(1,3)-R(3,1);
      R(1,3)+R(3,1)           R(2,3)+R(3,2)          -R(1,1)-R(2,2)+R(3,3)    R(2,1)-R(1,2);
      R(3,2)-R(2,3)           R(1,3)-R(3,1)           R(2,1)-R(1,2)           R(1,1)+R(2,2)+R(3,3) ]/3;

[ evec, elambda ] = eig(K,'vector'); % eigenvalues and eigenvectors of 'K'

[~, j_hat] = max(real(elambda)); % column index of the dominant eigenvector of 'K'

q = real([evec(4,j_hat); -evec(1,j_hat); -evec(2,j_hat); -evec(3,j_hat)]);

end
