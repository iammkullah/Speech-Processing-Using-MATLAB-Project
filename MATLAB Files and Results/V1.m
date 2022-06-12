clc %Clear command window.
close all %closes all the open figure windows.

% sampling frequency
F = 32000;
 
%  recording speech on MATLAB
%  5*F is recording speech of 5 secs of sampling frequency
%  datatype to store the sound

y  = wavrecord(5*F, F, 'int16');
%Record sound using Windows audio input device.
%Y = wavrecord(N,FS,CH) records N audio samples at FS Hertz from
%CH number of input channels from the Windows WAVE audio device.
%playing recorded speech

wavplay(y, F);
% wavplay Play sound using Windows audio output device.
%wavplay(Y,FS) sends the signal in vector Y with sample frequency
%of FS Hertz to the Windows WAVE audio device.

  
audiowrite('project.wav',y, F)
%it will write the speech signal of the current file(save in memory)
%audiowrite write audio files
%audiowrite(FILENAME,Y,FS)  writes data Y to an audio
%file specified by the file name FILENAME, with a sample rate
%of FS Hz.
