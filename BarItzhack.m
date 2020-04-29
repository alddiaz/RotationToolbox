function q = BarItzhack(R)
%% Function to convert a rotation matrix to a quaternion using Bar-Itzhack's method
% Reference:
% I. Bar-Itzhack, "An algorithm for computing the quaternion from the rotation matrix",
% Journal of Guidance, Vol 23, No. 26, pp. 1085-1087, 2000. 
%
% Aldo Diaz, University of Campinas, 2020

K = [ R(1,1)-R(2,2)-R(3,3)    R(1,2)+R(2,1)           R(1,3)+R(3,1)           R(3,2)-R(2,3);
      R(1,2)+R(2,1)          -R(1,1)+R(2,2)-R(3,3)    R(2,3)+R(3,2)           R(1,3)-R(3,1);
      R(1,3)+R(3,1)           R(2,3)+R(3,2)          -R(1,1)-R(2,2)+R(3,3)    R(2,1)-R(1,2);
      R(3,2)-R(2,3)           R(1,3)-R(3,1)           R(2,1)-R(1,2)           R(1,1)+R(2,2)+R(3,3) ]/3;

[ eigVec, eigVal ] = eig(K,'vector'); % eigenvalues and eigenvectors of 'K'
[~, j_hat] = max(real(eigVal)); % index of the dominant eigenvector of 'K'
q = real([eigVec(4,j_hat); -eigVec(1,j_hat); -eigVec(2,j_hat); -eigVec(3,j_hat)]);

end
