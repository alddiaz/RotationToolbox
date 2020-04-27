function S = Somega(w)
%% The matrix S(omega)
%
% Aldo Diaz, University of Campinas, 2019

wx = w(1); wy = w(2); wz = w(3);

S=[ 0  -wx  -wy  -wz;
   wx    0   wz  -wy;
   wy  -wz    0   wx;
   wz   wy  -wx    0 ];

end
