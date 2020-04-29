function q = R2q(R, method, unit_quaternion)
%% Function to convert a rotation matrix to a quaternion
%
% 'unit_quaternion' is a boolean flag to account for normalization
%
% Aldo Diaz, University of Campinas, 2020

if nargin < 3
    unit_quaternion = false;
    if nargin < 2
        method = 'Cayley';
    end
end

switch method
    case 'BarItzhack'
        q = BarItzhack(R); % best accuracy
        
    case 'Cayley'
        q = Cayley(R); % returns a unit quaternion

    case 'Sarabandi'
        q = Sarabandi(R); % the best for embedded systems

    case 'ShepperdMarkley'
        q = ShepperdMarkley(R);

    case 'Shuster'
        q = Shuster(R); % ShepperdMarkley returning a unit quaternion

    otherwise
        q = Cayley(R);
end

% Unit quaternion flag
if unit_quaternion
    q = qN(q);
end

end
