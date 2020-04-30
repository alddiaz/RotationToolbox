function q = R2q(R, method, unit_quaternion)
%% Function to convert a rotation matrix to a quaternion
%
% 'unit_quaternion' is a boolean flag that accounts for normalization
%
% Aldo Diaz, University of Campinas, 2020

if nargin < 3
    unit_quaternion = false;
    if nargin < 2
        method = 'BarItzhack';
    end
end

switch method
    case 'BarItzhack'
        q = BarItzhack(R); % best accuracy, returns a unit quaternion
        
    case 'Cayley'
        q = Cayley(R); % returns a unit quaternion

    case 'Sarabandi'
        q = Sarabandi(R); % second best, good for embedded systems

    case 'ShepperdMarkley'
        q = ShepperdMarkley(R);

    case 'Shuster'
        q = Shuster(R); % equal to ShepperdMarkley, returns a unit quaternion

    otherwise
        q = BarItzhack(R);
end

% Unit quaternion normalization
if unit_quaternion
    q = qN(q);
end

end
