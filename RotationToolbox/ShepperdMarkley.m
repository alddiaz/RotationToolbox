function q = ShepperdMarkley(R)
%% Function to convert a rotation matrix to a quaternion using Shepperd's method with Markley's variation. 
% References:
% S. W. Shepperd, "Quaternion from rotation matrix",
% Journal of Guidance and Control, vol. 1, no. 3, pp. 223-224, 1978.
% F. L. Markley, "Unit quaternion from rotation matrix",
% Journal of Guidance, Control and Dynamics, vol. 31, no. 2, pp. 440-442, 2008.
%
% Aldo Diaz, University of Campinas, 2020

C = [ 1+R(1,1)+R(2,2)+R(3,3)    R(2,3)-R(3,2)           R(3,1)-R(1,3)           R(1,2)-R(2,1);
        R(2,3)-R(3,2)           1+R(1,1)-R(2,2)-R(3,3)	R(2,1)+R(1,2)           R(1,3)+R(3,1);
        R(3,1)-R(1,3)           R(2,1)+R(1,2)           1-R(1,1)+R(2,2)-R(3,3)	R(3,2)+R(2,3);
        R(1,2)-R(2,1)           R(1,3)+R(3,1)           R(3,2)+R(2,3)           1-R(1,1)-R(2,2)+R(3,3) ];

[~, index] = max(diag(C)); % maximum argument test

q = C(:,index);

end
