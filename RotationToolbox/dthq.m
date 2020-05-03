function delta_theta = dthq(q1, q2)
%% Relative angle between consecutive quaternions 'q1' and 'q2'
% The angle 'delta_theta' describes the difference between 'q1' and 'q2' as the angle 'q1' should turn to obtain 'q2'.
%
% Aldo Diaz, University of Campinas 2020

delta_theta = 2*acos(q2'*q1);

end
