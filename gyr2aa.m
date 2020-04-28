function [omega_hat, theta] = gyr2aa(gyro, T, bias)
%% Function to convert gyroscopic measurements to axis-angle parameters
%
% 'gyro' is a 3-D vector of angular velocity measurements from gyro sensor
% 'T' is the sampling time (in seconds) of the instrument
% 'bias' is a 3-D vector with sensor bias data found from calibration
%
% Aldo Diaz, University of Campinas, 2020

if nargin < 3
    bias = [0, 0, 0]'; % (ideal) unbiased sensor
    
    if nargin < 2;
        T = 1; % sampling frequency is 1 Hz
    end
end

if size(gyro, 2) > 1
    gyro = gyro';
end

if size(bias, 2) > 1
    bias = bias';
end

gyro = gyro - bias; % bias compensation

omegaN = norm(gyro); % (rad/s)
omega_hat = gyro/omegaN;
theta = omegaN*T; % (rad)

end
