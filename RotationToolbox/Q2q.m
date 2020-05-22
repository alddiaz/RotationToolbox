function q = Q2q(Q)
%% Function to convert a quaternion matrix to a quaternion vector
%
% Aldo Diaz, University of Campinas, 2020

q = [ (Q(1,1)+Q(2,2)+Q(3,3)+Q(4,4))/4;
      (Q(2,1)-Q(1,2)-Q(4,3)+Q(3,4))/4;
      (Q(3,1)+Q(4,2)-Q(1,3)-Q(2,4))/4;
      (Q(4,1)-Q(3,2)+Q(2,3)-Q(1,4))/4 ];

end

