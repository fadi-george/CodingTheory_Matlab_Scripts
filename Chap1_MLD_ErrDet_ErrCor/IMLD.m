function [res] = IMLD( exp , list )
%% Generates an IMLD table for a code of length exp (number )
%  list should be a cell containing strings
%% Example: IMLD( 3 ,  {'010' , '001'} )
%  Generates
%    '000'    '010'    '001'    [1]    '----'
%    '001'    '011'    '000'    [0]    '001' 
%    '010'    '000'    '011'    [0]    '010' 
%    '011'    '001'    '010'    [1]    '----'
%    '100'    '110'    '101'    [2]    '----'
%    '101'    '111'    '100'    [1]    '001' 
%    '110'    '100'    '111'    [1]    '010' 
%    '111'    '101'    '110'    [2]    '----'
% '----' indicates that it couldnt determine the closet match
[a , b] = size(list);
for i = 1:2^exp
    A{i} = dig2bin(i-1, exp);
    
    for j = 1:b
    B{i,j} = regexprep(num2str(A{i} ~= list{j}),'\W','');  
    dist(i,j) = sum( B{i,j} ~= A{1});
    end
    
    mindis(i,1) = min(dist(i , :));
    
    [ ,a] = size(find(dist(i,:) == mindis(i,1)));
    if a == 1
        decode{i , 1}  = list{ find(dist(i,:) == mindis(i,1)) };
    else % more than one min
        decode{i , 1}  = '----';
    end
end
res(:,1) = A';
res(:,2:b+1) = B;
res(:,b+2) = num2cell(mindis);
res(:,b+3) = decode;
end

