function res = phiprob( p , v , w )
%% Calculates the probability phi given
% p is probability
% w is word recieved
% v is word sent
%% Example: phiprob(.9 , '101' , '001')
%           returns 
d = sum( v ~= w );   % hamming distance
n = length(v);

prob = (p ^ (n - d))*((1 - p) ^ (d));
res = prob;
end

