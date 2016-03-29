%% Asks for the length of the code needed
%  Then asks for the code recieved, simple write it as a number 
%  Then tries to calculate the information rate

%% Example: Please enter the length of the code you want: 3
%           Please enter code recieved: 010 011 010
%           ans = '010 010 010'
%           Length of extended code: 9
%           inforate = 0.3333
exp = input('Please enter the length of the code you want: ');
tot = 2^exp; % number of codes of length n 
A = cell(1,tot);
B = A; C = A;

for i = 1:tot
    A{i} = dig2bin(i-1, exp);
    B{i} = parity(A{i});
    C{i} = triprep(A{i});
end
A = A' % all possible words of length n
B = B' % all the codes in A plus a parity digit at the end
C = C' % all the codes in A but repeated three times

coderec = input('Please enter code recieved: ' , 's');
guessct(coderec , exp , B , C)

leng = input('Length of extended code: '); % will determine the information rate given length of code you want analyzed 
inforate = log2(tot)/leng