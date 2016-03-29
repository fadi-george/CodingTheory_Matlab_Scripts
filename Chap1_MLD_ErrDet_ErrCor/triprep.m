function res = triprep( bin )
%% This function will repeat the input string three times 
%% Example: triprep('1010')
%  will return 1010 1010 1010
A = bin;
A = horzcat(A,' ',A,' ',A); % string repeated three times with space in between

res = A;
end

