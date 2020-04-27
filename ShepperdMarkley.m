function q = ShepperdMarkley(R)
%% Function to convert a rotation matrix to a (unit) quaternion
% This function takes as input 'R', a rotation matrix, and returns the 
% corresponding quaternion 'q' using Shepperd's method using Markley variation. 
% References:
%
% S. W. Shepperd, "Quaternion from rotation matrix", Journal of Guidance
% and Control, Vol. 1, No. 3, pp. 223-224, 1978.
% 
% F. L. Markley, "Unit quaternion from rotation matrix", Journal of
% Guidance, Control and Dynamics, Vol. 31, No. 2, pp. 440-442, 2008.
%
% Aldo Diaz, University of Campinas, 2020

C = [ 1+R(1,1)+R(2,2)+R(3,3)    R(2,3)-R(3,2)           R(3,1)-R(1,3)           R(1,2)-R(2,1);
        R(2,3)-R(3,2)           1+R(1,1)-R(2,2)-R(3,3)	R(2,1)+R(1,2)           R(1,3)+R(3,1);
        R(3,1)-R(1,3)           R(2,1)+R(1,2)           1-R(1,1)+R(2,2)-R(3,3)	R(3,2)+R(2,3);
        R(1,2)-R(2,1)           R(1,3)+R(3,1)           R(3,2)+R(2,3)           1-R(1,1)-R(2,2)+R(3,3) ];

[~,index] = max(diag(C));

q = C(:,index);

% Uncomment to return a unit quaternion
q = q/norm(q);

end
