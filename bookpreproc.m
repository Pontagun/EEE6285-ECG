% bookpreproc = beat pre-processing for ECG beats
% AS PERFORMED IN EXERCISE 5.14 OF SUBASI'S BOOK
% Receives a single 320-point column from matrices
% ECGN, ECGAPC, ECGPVC, ECGLBBB or ECGRBBB (i.e., 1 "beat")
% And returns A SINGLE COLUMN OF q real-valued features
% that will be used as 1 training sample in an ANN
%
% SYNTAX:   featv = bookpreproc(ecgv);
%
function featv = bookpreproc(ecgv);


% PARAMETERS USED IN PROCESSING BY BOOK (EX 5.14):
Fs = 360; % Sampling frequency
T = 1/Fs; % Sampling period
segmentLength = 128; % Length of a signal segment
Length = 320;% Length of signal
order = 50;

% This iw what the book does:
% Obtain the Covariance Spectrum of the Normal ECG signal using pcov.
% for i=1:Nofsignal
% [Pxx,F] = pcov(ECGN(1:Length,i),order,segmentLength,Fs);
% ASData(i,:)=Pxx(:);
% end
%%

% HERE WE ARE DOING IT FOR JUST 1 BEAT (ecgv):
% Obtain the Covariance Spectrum of the ECG beat with pcov.
[Pxx,F] = pcov(ecgv,order,segmentLength,Fs);
featv=transpose( Pxx(:) );

end
