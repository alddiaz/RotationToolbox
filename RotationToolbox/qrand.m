function q = qRand()
%% Method for choosing a point on the unit 4-sphere
% Reference:
% G. Marsaglia, "Choosing a point from the surface of a sphere",
% The Annals of Mathematical Statistics, vol. 43, no. 2, pp. 645-646, 1972. 
%
% Aldo Diaz, University of Campinas, 2020

while 1
    q = 2*rand(4,1) - 1;
    if (q(1)^2+q(2)^2) < 1 && (q(3)^2+q(4)^2) < 1
        norm_q = sqrt((1-q(1)^2-q(2)^2)/(q(3)^2+q(4)^2));
        q(3) = q(3)*norm_q;
        q(4) = q(4)*norm_q;
        % Reject the result if the norm is not 1 due to numerical rounding errors
        if norm(q) == 1 
            break
        end
    end
end

% The scalar quaternion component is positive by convention.
% (q(1) > 0 is enforced to get unambiguous rotation representations)
% This does not change the rotation the quaternion represents, since q and -q denote the same rotation.
if q(1) < 0
    q = -q;
end

end
