%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Part A
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
t1 = [-5:0.001:5];
x1 = 6*sin(2*pi*t1).*cos(pi*t1-6);

subplot(2, 2, 1);
plot(t1, x1);
grid on;
xlabel('time (t)');
ylabel('6sin(2\pi t)cos(\pi t-6)');
title('(a)');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Part B
% x_2(t) = 5e^{-.2t}sin(2\pi t) from -10<=x<=10
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
t2 = [-10:0.002:10];

x2 = 5*exp(-.2*t2).*sin(2*pi*t2);

subplot(2, 2, 2);
plot(t2, x2);
grid on;
xlabel('time (t)');
ylabel('5exp(-0.2t)sin(2\pi t');
title('(b)');


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Part B
% x_3(t) = 7e^{(j5\pi -.5)t}u(t) from -5 to 15, plot real and imaginary
% parts
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
t3 = [-5:0.001:15];
x3 = 7*exp((j*5*pi-.5)*t3).*(t3>=0);

subplot(2, 2, 3);
plot(t3, real(x3)); % plot real part
grid on;
xlabel('time (t)');
ylabel('7exp[(j*5\pi-0./5)t]u(t)');
title('(c): Real Component');

subplot(2, 2, 4);
plot(t3, imag(x3)); % plot real part
grid on;
xlabel('time (t)');
ylabel('7exp[(j*5\pi-0./5)t]u(t)');
title('(c): Imaginary Component');

