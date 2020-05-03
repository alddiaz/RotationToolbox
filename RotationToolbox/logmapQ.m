function S = logmapQ(Q, method)
%% The logarithm map in the quaternion space (inverse of the exponential map)
%
% The parameter 'method' can have the values
% 'std'          The standard formula
% 'C-H'          The Cayley-Hamilton result
% 'ln'           The matrix logarithm
%
% Aldo Diaz, University of Campinas, 2020

if nargin < 2
    method = 'std';
end

theta = 2*acos(sum(diag(Q))/4);

switch method
    case 'std' % standard formula
        S = (Q-Q')/(2*sin(theta/2));

    case 'CH' % Cayley-Hamilton theorem's result
        S = -(2*cos(theta/2)+1)*eye(4)/(2*sin(theta/2))-sin(theta/2)*Q/(cos(theta/2)-1)-Q*Q/(2*sin(theta/2));

    case 'ln' % matrix logarithm
        S = 2*logm(Q)/theta;
        
    otherwise
        S = (Q-Q')/(2*sin(theta/2));
end

end
