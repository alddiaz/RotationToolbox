function q = Shuster(R)
%% Function to convert a rotation matrix to a (unit) quaternion
% Reference:
% M. D. Shuster, "A Survey of Attitude Representations", In: The Journal of
% Astronautical Sciences, Vol. 41, No. 4, pp. 439-517, 1993.
%
% Aldo Diaz, University of Campinas, 2019

t1 = sqrt(1+R(1,1)+R(2,2)+R(3,3));
t2 = sqrt(1+R(1,1)-R(2,2)-R(3,3));
t3 = sqrt(1-R(1,1)+R(2,2)-R(3,3));
t4 = sqrt(1-R(1,1)-R(2,2)+R(3,3));

%% Test maximum argument in the square root (Shuster 1993, p. 463)
[~, index] = max([t1 t2 t3 t4]);

switch index
    case 1
        q = [ t1/2; (R(2,3)-R(3,2))/(2*t1); (R(3,1)-R(1,3))/(2*t1); (R(1,2)-R(2,1))/(2*t1) ];
    case 2
        q = [ (R(2,3)-R(3,2))/(2*t2); t2/2; (R(1,2)+R(2,1))/(2*t2); (R(1,3)+R(3,1))/(2*t2) ];
    case 3
        q = [ (R(3,1)-R(1,3))/(2*t3); (R(2,1)+R(1,2))/(2*t3); t3/2; (R(2,3)+R(3,2))/(2*t3) ];
    case 4
        q = [ (R(1,2)-R(2,1))/(2*t4); (R(3,1)+R(1,3))/(2*t4); (R(3,2)+R(2,3))/(2*t4); t4/2 ];
end

end
