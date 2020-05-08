function q = Shuster(R)
%% Function to convert a rotation matrix to a unit quaternion
% Reference:
% M. D. Shuster, "A Survey of Attitude Representations", In: The Journal of
% Astronautical Sciences, vol. 41, no. 4, pp. 439-517, 1993.
%
% Aldo Diaz, University of Campinas, 2020

C = [ 1+R(1,1)+R(2,2)+R(3,3)    R(2,3)-R(3,2)           R(3,1)-R(1,3)           R(1,2)-R(2,1);
        R(2,3)-R(3,2)           1+R(1,1)-R(2,2)-R(3,3)	R(2,1)+R(1,2)           R(1,3)+R(3,1);
        R(3,1)-R(1,3)           R(2,1)+R(1,2)           1-R(1,1)+R(2,2)-R(3,3)	R(3,2)+R(2,3);
        R(1,2)-R(2,1)           R(1,3)+R(3,1)           R(3,2)+R(2,3)           1-R(1,1)-R(2,2)+R(3,3) ];

[~, index] = max(diag(C)); % maximum argument test (Shuster 1993, p. 463)

q = C(:,index)/(2*sqrt(C(index,index)));
q(index) = sqrt(C(index,index))/2;

end

