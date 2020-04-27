function omega = skew2vec(Omega)
%% Function that returns the vector corresponding to a skew-symmetric matrix
%
% Aldo Diaz, University of Campinas, 2020

switch size(Omega, 2)
    case 3
        omega = [ (Omega(3,2)-Omega(2,3))/2;
	  	  (Omega(1,3)-Omega(3,1))/2;
	  	  (Omega(2,1)-Omega(1,2))/2 ];
	  	  
    case 4
        omega = [ (Omega(2,1)-Omega(1,2)-Omega(4,3)+Omega(3,4))/4;
	  	  (Omega(3,1)+Omega(4,2)-Omega(1,3)-Omega(2,4))/4;
	  	  (Omega(4,1)-Omega(3,2)+Omega(2,3)-Omega(1,4))/4 ];
end

end
