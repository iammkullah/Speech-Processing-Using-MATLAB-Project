# Speech-Processing-Using-MATLAB-Project
Speech Processing Using MATLAB is a Digital Signal Processing project. 

Speech processing using MATLAB gives the reader a comprehensive overview of contemporary speech and audio processing techniques with an emphasis on practical implementations and illustrations using MATLAB code. Speech process refers to the analysis of speech signals and their processing to obtain useful information.
Speech processing can also be referred as digital signal processing, as the speech signals are digitized for processing. Core concepts are first covered in an introduction tothe physics of audio and vibration together with their representations using complex numbers,Z transforms, and frequency analysis transforms such as the FFT.

Speech processing is a computerized speech text process in voice is usually recorded with acoustic microphones by capturing air pressure changes. This kind of air transmitted voice signals is prone to two kinds of problems related to voice robustness and applicability. The former means mixing of speech signals and ambient noise usually deteriorate automatic voice recognition system performance. The latter means speech could be overheard easily on air transmission channel and this often results in privacy loss or annoyance to other people.

The following module describes the process behind implementing signal processing techniques in MATLAB. The algorithm utilizes the Discrete Fourier Transform in order to compare the frequency spectra of two voices. Further more, we are comparing and analysing original signal with Fourier Transform to find highest frequency of signal, and decimating re-sampling data at a lower rate after low pass filtering.


Basically we are following the given below question step by step. 

In this Matlab problem you will see the effects of Decimation &amp; Interpolation on an audio signal. 
Record your speech of about 5 seconds at sampling frequency of 32 kHz. You can use either wavrecord() MATLAB function or windows sound recorder for this purpose. If you use Sound Recorder, then u need to first set its properties for recording sound at 32 kHz and single channel. 
1. Plot the time and frequency domain magnitude spectrums of this speech signal. (Use wavread() to read the speech signal. Use freqz() to plot the frequency spectrum). What is highest frequency of this signal? Play this signal using wavplay(). 
2. Decimate the signal by a factor of 2. Again plot the time and frequency domain spectrum of the signal. Play the sound. What do you observe? 
3. Again decimate the signal by a factor of 2. Plot the time and frequency domain spectrum of the signal. Play the sound. What do you observe? 
4. Now interpolate the signal by a factor of 2. Plot the time and frequency domain spectrum of the signal. Play the sound. What do you observe? 
5. Again interpolate the signal by a factor of 2. Plot the time and frequency domain spectrum of the signal. Play the sound. What do you observe?
