function res = parity( bin )
%% Adds a parity bit to the end of the input string
%% Example: parity('01011')
%           returns 010111 since there were 3 1's in the string so another
%           1 is needed to balance the number of 1s
A = bin;
weight = 0;

if(strfind(A , '1'))
	[~ , weight] = size(strfind(A , '1'));
end

if floor(weight/2) ~= weight/2 % if weight of the binary word is odd then add at 1 at the end
    A = strcat(A , '1');
    res = A;                   % return the string with the added parity digit
else
    A = strcat(A , '0');       % otherwise the weight is odd and needs to have a 0 at the end
    res = A;
end

end

