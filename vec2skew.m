function Omega = vec2skew(omega, dim)
%% Function that returns a skew-symmetric matrix corresponding to a vector
%
% Aldo Diaz, University of Campinas, 2020

if(nargin < 2)
    dim = 3;
end

switch dim
    case 3
        Omega = [     0     -omega(3)  omega(2);
                   omega(3)     0     -omega(1);
                  -omega(2)  omega(1)     0 ];

    case 4
        Omega = [ 0        -omega(1) -omega(2) -omega(3);
                  omega(1)     0      omega(3) -omega(2);
                  omega(2) -omega(3)     0      omega(1);
                  omega(3)  omega(2) -omega(1)     0 ];
end

end
