% rdc = REMOVE DC (component)
% removed the DC component of a sequence (vector)
% by subtracting from allpoints the mean value
% of the vector. returns the no-dc vector
%
% SYNTAX:  nodcx = rdc(x);
% 
function nodcx = rdc(x)
meanx = mean(x);
nodcx = x - meanx;
end
