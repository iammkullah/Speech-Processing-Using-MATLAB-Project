clc
% (part a)
% wavread will read the .wav file in which speech is recorded
% y is samples or the input signal
% fs is the sampling frequency
[y,fs] = wavread('project.wav');
wavplay(y,fs);   %wavplay Play sound using Windows audio output device.
subplot(2,1,1)
% plotting frequency spectrum
% y is input signal
%freqz Frequency response of digital filter
freqz(abs(y))
% setting axis limits
x = linspace(0,0.1);    %linspace Linearly spaced vector.
xlim([0 0.1])   % xlim X limits.
ylim([-80 80])  % ylim Y limits.
title('Freq doamin magnitude spectrum of speech.');
subplot(2,1,2)% subplot Create axes in tiled positions.
% plotting time spectrum
plot(y),grid on;            % Linear plot &  Grid lines.
title('Time domain');       %Graph title.
xlabel('Seconds');         %X-axis label. 
ylabel('Apmlitude');        %ylabel

% figure used to make the graphs appear in different windows
figure;
% fft is Fourier Transform to find highest frequency of signal
z=fft(y);
plot(abs(z)),grid on;           % Linear plot &  Grid lines.
title('Highest frequency');     %graph title
xlabel('Freq Hz');              %x-axis label
ylabel('Power');                %y-axis label

figure; 
% (part b)
subplot(2,1,1)% subplot Create axes in tiled positions.
% decimating or downsampling the speech by facor 2
y1 = decimate(y,2)
%decimate is a low pass filter 
freqz(abs(y1))%freqz frequency response of digital filter
x = linspace(0,0.1);    %linspace Linearly spaced vector.
xlim([0 0.1])           %x-axis limit
ylim([-80 80])          %y-axis limit
title('Freq doamin magnitude spectrum after decimating by 2');%graph title
subplot(2,1,2)% subplot Create axes in tiled positions.
plot(y1),grid on;% Linear plot &  Grid lines.
title('Time domain');       %graph title
xlabel('Seconds');          %x-axis label
ylabel('Apmlitude');        %y-axis label
wavplay(y1,fs);   %wavplay Play sound using Windows audio output device.


figure;         % figure Create figure window.
% (part c)
subplot(2,1,1)
% decimating by 4
y2 = decimate(y,2*2)
%decimate Resample data at a lower rate after lowpass filtering.
freqz(abs(y2))%freqz frequency response of digital filter.
x = linspace(0,0.1); %linearly spaced vector.
xlim([0 0.1]) %x-axis limit
ylim([-80 80])%y-axis limit
title('Freq Doamin Magnitude Spectrum After Decimating by 4');%graph title
subplot(2,1,2)% subplot Create axes in tiled positions.
plot(y2),grid on;% Linear plot &  Grid lines.
title('Time domain'); %graph title
xlabel('Seconds'); %x-axis label
ylabel('Apmlitude');%y-axis label
wavplay(y2,fs); %wavplay play sound using windows audio output device.


figure; %create figure window 
% (part d)
subplot(2,1,1)% subplot Create axes in tiled positions.
% decimating by 8
y3 = decimate(y,2*2*2)
%decimate resample data at a lower rate after lowpass filtering
freqz(abs(y3)) %frequency response of digital filter.
x = linspace(0,0.1); %linearly spaced vector
xlim([0 0.1]) %x-axis limit
ylim([-60 60])%y-axis limit
title('Freq doamin magnitude spectrum after decimating by 8');%graph title
subplot(2,1,2)% subplot Create axes in tiled positions.
plot(y3),grid on;% Linear plot &  Grid lines.
title('Time domain'); %graph title
xlabel('Seconds');%x-axis label
ylabel('Apmlitude');%y-axis label
wavplay(y3,fs); %plays sound using windows audio output device


figure;%create figure window
% (part e)
subplot(2,1,1)% subplot Create axes in tiled positions.
% decimating by 16
% decimate resample data at a lower rate after lowpass filtering
y4 = decimate(y,2*2*2*2)
freqz(abs(y4))%frequency response of digital filter.
x = linspace(0,0.1);%linearly spaced vector
xlim([0 0.1])%x-axis limit
ylim([-50 50])%y-axis limit
title('Freq doamin magnitude spectrum after decimating by 16');%graph title
subplot(2,1,2)% subplot Create axes in tiled positions.
plot(y4),grid on;% Linear plot &  Grid lines.
title('Time domain');%graph title
xlabel('Seconds');%x-axis label
ylabel('Apmlitude');%y-axis label
wavplay(y4,fs);%plays sound using windows audio output device

z=fft(y4);
figure;
plot(abs(z)),grid on;
