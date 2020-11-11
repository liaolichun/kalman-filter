clc;clear;close all;

Z = zeros(1,1000);
meas = zeros(1,1000);
for t=1:1:999
   Z(t+1) = Z(t) + 3*randn(1,1); 
end
figure(1);
plot(Z);

for t=1:1:1000
   meas(t) = Z(t) + 5*randn(1,1);  
end
figure(2);
plot(meas);

%% KF process
x = 0;
P = 0;
phi = 1;
Q = 9;
H = 1;
R = 25;
est_x(1) = x;

for t=1:1:999
    predict_x = est_x(t)*phi;
    P_minus = phi*P*phi + Q;
    K = P_minus*H/(H*P_minus*H + R)
    est_x(t+1) = predict_x + K*(meas(t+1) - H*predict_x);
    P = (1 - K*H)*P_minus;
    tmp(t) = P;
end
figure(3);
plot(est_x);
figure(4);
plot(tmp);