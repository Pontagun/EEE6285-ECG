% beatpreproc0 = beat pre-processing for ECG beats
% DUMMY PREPROC - RETURNS SAME IMPUT VECTOR
% Receives a single 320-point column from matrices
% ECGN, ECGAPC, ECGPVC, ECGLBBB or ECGRBBB (i.e., 1 "beat")
% And returns A SINGLE COLUMN OF q real-valued features
% that will be used as 1 training sample in an ANN
%
% SYNTAX:   featv = beatpreproc0(ecgv);
%
function featv = beatpreproc0(ecgv);
%
% Copies the input col. vector as the output
featv = ecgv;

end
