function R = Rinterp(R1, R2, k)
%% Rotation interpolation (SLERP)
%
% 'R1' and 'R2' are proper rotations
% 'k' is the interpolation parameter in the interval [0, 1]
%
% Aldo Diaz, University of Campinas, 2020

if nargin < 3
   k = 1;
end

R = Rpow(R2*R1', k)*R1

end
