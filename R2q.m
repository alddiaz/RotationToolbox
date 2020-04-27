function q = R2q(R, method)
%% Function to convert a (noisy) rotation matrix to the closest (unit) quaternion
%
% Aldo Diaz, University of Campinas, 2020

if nargin < 2
    method = 'Bar-Itzhack';
end

switch method
    case 'Bar-Itzhack'
        q = rotm2quat(R)'; % best accuracy
    case 'Cayley'
        q = Cayley(R); % second best
    case 'ShepperdMarkley'
        q = ShepperdMarkley(R); % third best
    case 'Shuster'
        q = Shuster(R); % fourth best
    case 'Sarabandi'
        q = Sarabandi(R); % best for embedded systems
    otherwise
        q = rotm2quat(R)';
end

end
