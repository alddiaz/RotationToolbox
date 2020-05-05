function [omega_hat, theta] = gyr2aa(omega_gyro, bias, T)
%% Function to convert gyroscopic measurements to axis-angle parameters
%
% 'gyro' is a 3-D vector of angular velocity measurements from gyro sensor
% 'T' is the sampling time (in seconds) of the instrument
% 'bias' is a 3-D vector with sensor bias data found from calibration
%
% Aldo Diaz, University of Campinas, 2020

if nargin < 3
    T = 1; % sampling frequency is 1 Hz
    
    if nargin < 2;
        bias = [0, 0, 0]'; % (ideal) unbiased sensor
    end
end

if size(omega_gyro, 2) > 1
    omega_gyro = omega_gyro';
end

if size(bias, 2) > 1
    bias = bias';
end

omega_gyro = omega_gyro - bias; % bias compensation

omegaNorm = norm(omega_gyro); % (rad/s)
omega_hat = omega_gyro/omegaNorm;
theta = omegaNorm*T; % (rad)

end
