function q = R2q(R, method)
%% Function to convert a rotation matrix to a quaternion
%
% The parameter 'method' can have the values
% 'BarItzhack'         Bar-Itzhack's method
% 'Cayley'             Cayley's factorization method
% 'Sarabandi'          Arithmetic optimization method
% 'ShepperdMarkley'    Shepperd-Markley method
% 'Shuster'            Shuster's method
%
% 'unit_quaternion=true' returns a unit quaternion, with q(1)>0
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

% The scalar quaternion component is positive by convention.
% (q(1) > 0 is enforced to get unambiguous rotation representations)
% This does not change the rotation the quaternion represents, since q and -q denote the same rotation.
if q(1) < 0
    q = -q;
end

end
