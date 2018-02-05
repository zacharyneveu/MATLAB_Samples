% x_3(t) = 7e^{(j5\pi -.5)t}u(t) from -5 to 15, plot real and imaginary
% parts

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

