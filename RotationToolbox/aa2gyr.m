function gyro = aa2gyr(omega_hat, theta, bias, T)
%% Function to convert axis-angle parameters to gyroscopic measurements
%
% 'omega_hat' is a unit vector axis of rotation
% 'theta' is the angle of rotation (rad)
% 'T' is the sampling time (in seconds) of the instrument
% 'bias' is a 3-D vector with sensor bias data found from calibration
% 'gyro' is a 3-D vector of angular velocity measurements
%
% Aldo Diaz, University of Campinas, 2020

if nargin < 4
    T = 1; % sampling frequency is 1 Hz
    
    if nargin < 3;
        bias = [0, 0, 0]'; % (ideal) unbiased sensor
    end
end

if size(omega_hat, 2) > 1
    omega_hat = omega_hat';
end

if size(bias, 2) > 1
    bias = bias';
end

omegaN = theta/T; % (rad/s)
gyro = omegaN*omega_hat;
gyro = gyro + bias; % additive bias

end
