function q = Sarabandi(R)
%% Function to convert a rotation matrix to a quaternion using Sarabandi's method
% Reference:
% S. Sarabandi, A. Shabani, J. M. Porta, F. Thomas, "On Closed-Form Formulas for the 3-D Nearest Rotation Matrix Problem",
% IEEE Transactions on Robotics, 2020.
%
% Aldo Diaz, University of Campinas, 2020

C = [ 1+R(1,1)+R(2,2)+R(3,3)    R(2,3)-R(3,2)           R(3,1)-R(1,3)           R(1,2)-R(2,1);
        R(2,3)-R(3,2)           1+R(1,1)-R(2,2)-R(3,3)	R(2,1)+R(1,2)           R(1,3)+R(3,1);
        R(3,1)-R(1,3)           R(2,1)+R(1,2)           1-R(1,1)+R(2,2)-R(3,3)	R(3,2)+R(2,3);
        R(1,2)-R(2,1)           R(1,3)+R(3,1)           R(3,2)+R(2,3)           1-R(1,1)-R(2,2)+R(3,3) ]/4;

c_abs = [ C(:,1)'*C(:,1); C(:,2)'*C(:,2); C(:,3)'*C(:,3); C(:,4)'*C(:,4) ]; % column-wise square norm of 'C'

[~, j_hat] = max(c_abs); % column index of the dominant eigenvector of 'C'

for i = 1:4
    q(:,i) = sign(C(:,j_hat)'*C(:,i))*C(:,i);
end

q = sum(q,2);

end
