function delta_theta = dthR(R1, R2)
%% Relative angle between consecutive rotations 'R1' and 'R2'
% The angle 'delta_theta' describes the difference between 'R1' and 'R2' as the angle 'R1' should turn to obtain 'R2'.
%
% Aldo Diaz, University of Campinas 2019

delta_theta = acos((trace(R2*R1')-1)/2);

end
