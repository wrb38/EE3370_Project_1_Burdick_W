% EE3370 Project 1
% x(t)=3*cos(omega*t+angle)
% William Burdick
% 02/27/15

clc      % Clear screen 
clear    % Clear all variables
A = 3; f= 1000; omega = 2*pi*f; 
angle = (3.14*33)/180; T=1/f;
t=linspace(-3000*T,3000*T,1000);

x_t=3*cos(omega*t+angle);
f_t=cos(omega*t).*sin(omega*t).*heaviside(t-1);

subplot(4,1,1)
plot(t,x_t, 'linewidth',2);grid on

subplot(4,1,2)
u_t=heaviside(t);
plot(t,u_t, 'linewidth',2);grid on

subplot(4,1,3)
plot(t,x_t.*u_t, 'linewidth',2);grid on

subplot(4,1,4)
plot(t,f_t, 'linewidth',2);grid on
