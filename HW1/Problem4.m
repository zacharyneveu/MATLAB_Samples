%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Part A
% x(t) = sin(\omega t)/2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
f=[659 622 659 622 659 494 587 523 440];
fs=8e3; %8k sample rate
d=0.5;
t=[0:(1/fs):d]; % total note duration of 1s

% calculate signals at each freq. and store as array of signals
w=sin(2*pi*f'*t)/2;
% invert w
w = w';
% Concatenate signals into single column vector
w=w(:)';
% Write audio and create spectogram
audiowrite('matlab_p4a_answer.wav',w,fs);
specgram(w,[],fs);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Part B
% x(t) = sin(\omega t)/2
% Solfedge frequencies
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
f = [392 440 494 523 587 659 740 784 740 659 587 523 494 440 392];
d = 1.0;
t=[0:(1/fs):d]; % total note duration of 1s

% calculate signals at each freq. and store as array of signals
w=sin(2*pi*f'*t)/2;
% invert w
w = w';
% Concatenate signals into single column vector
w=w(:)';
% Write audio and create spectogram
audiowrite('matlab_p4b_answer.wav',w,fs);
specgram(w,[],fs);
title('Solfedge');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Part C
% x(t) = sin(\omega t)/2 + sin(\omega_1 t)
% Solfedge Frequencies
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
f = [392 440 494 523 587 659 740 784];
f_flip=fliplr(f);
fs=8e3;
d=1.0;
t=0:(1/fs):d;

w=sin(2*pi*f'*t)/2 + sin(2*pi*f_flip'*t);
w=w';
w=w(:)';
audiowrite('matlab_p4c_answer.wav',w,fs);
spectrogram(w,[],fs);


