function e = R2e(R)
%% Function to returns a vector of Euler angles given a rotation matrix
% e = [ roll(x); pitch(y); yaw(z) ]
%
% Aldo Diaz, University of Campinas, 2020

[U,S,V] = svd(R);
R = U*V';

tr = (trace(R)-1)/2;
theta = real(acos(tr));

if sin(theta) >= 1e-4
    omega = [R(3,2)-R(2,3), R(1,3)-R(3,1), R(2,1)-R(1,2)]'/(2*sin(theta));
    e = omega*theta;
else
    if tr > 0 % case norm(omega)=0;
        e = [0 0 0]';
    else % case norm(omega)=pi;
        if(0)
            %% fixed April 6th by Bouguet -- not working in all cases!
            e = theta * (sqrt((diag(R)+1)/2).*[1;2*(R(1,2:3)>=0)'-1]);
        else
            % Solution by Mike Burl on Feb 27, 2007
            % This is a better way to determine the signs of the
            % entries of the rotation vector using a hash table on all
            % the combinations of signs of a pairs of products (in the
            % rotation matrix)

            % Define hashvec and Smat
            hashvec = [0; -1; -3; -9; 9; 3; 1; 13; 5; -7; -11];
            Smat = [1,1,1; 1,0,-1; 0,1,-1; 1,-1,0; 1,1,0; 0,1,1; 1,0,1; 1,1,1; 1,1,-1;
                1,-1,-1; 1,-1,1];

            M = (R+eye(3,3))/2;
            uabs = sqrt(M(1,1));
            vabs = sqrt(M(2,2));
            wabs = sqrt(M(3,3));

            mvec = [M(1,2), M(2,3), M(1,3)];
            syn  = ((mvec > 1e-4) - (mvec < -1e-4)); % robust sign() function
            hash = syn * [9; 3; 1];
            idx = find(hash == hashvec);
            svec = Smat(idx,:)';

            e = theta * [uabs; vabs; wabs] .* svec;
        end
    end
end

end
