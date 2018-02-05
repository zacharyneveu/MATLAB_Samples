%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Part A
% x(t) = sin(\omega t)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
f = 1e4;
t = [0:(1/f):0.005];

% Signal transposed by ' for delayseq function
signal2 = sin(2*pi*1000*t)'; 
shifted_signal2 = delayseq(signal2, -0.15e-3, f);
shifted_signal3 = delayseq(signal2,  0.15e-3, f);

figure(4)
subplot(2, 1, 1)
plot(t.*1000, signal2, 'b', t.*1000, shifted_signal2, 'r', t.*1000, shifted_signal3, 'g');
title('signal delayed and advanced')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Part B
% x(t) = cos(\omega t)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Transposed for delay function
signal = cos(2*pi*1000*t)';

% Delay by  .75ms
shifted_signal = delayseq(signal, 0.75e-3,f);

subplot(2,1,2)
plot(t.*1000, signal, t.*1000, shifted_signal);
title('0.75-msec (fractional) delayed')
axis([0 5 -1.1 1.1])
xlabel('time (msec)')
