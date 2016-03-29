function [ res ] = reliabmld( exp , list )
%% Calclulates reliability of codewords of length exp
%  with a list of strings
%% Example: reliabmld(3 , {'010' , '110' , '111'})
%   A =
%     1     0     0
%     0     0     0
%     1     0     0
%     0     0     0
%     0     1     0
%     0     0     1
%     0     1     0
%     0     0     1
%
% ans =    0.8100    0.8100    0.8100
tot = IMLD( exp , list);  [~ , b] =  size(list);
tot2 = tot(:,1);
tot = tot(:,end);
[a , ~] = size(tot);
A = zeros(a , b); summ = zeros(1 , b);

for i = 1:b
    for j = 1:a
        if str2num(tot{j}) == str2num(list{1,i})
        A(j , i) = 1;
        summ(i) = summ(i) + phiprob(.9 , tot2{j} , tot{j});
        end
    end
end
A
res = summ;
end

