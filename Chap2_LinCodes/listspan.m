function res = listspan( list )
%% List all possible combinations given a set of binary strings
%% Example:
%  listspan({'100','010'})
%  Outputs:
%     '000'
%     '010'
%     '100'
%     '110'
[a , b] = size(list);
resett = regexprep(num2str(list{1} ~= list{1}),'\W','');
summ = resett;

for i = 1:2^b
    A{i,1} = dig2bin(i-1 , b);
    B = str2num((A{i,1})');
    for j = 1:b
       summ = regexprep(num2str(summ ~= regexprep(num2str(B(j)*list{j}-48>0),'\W','')),'\W' , '');
    end
    spann{1,i} = summ;
    summ = resett; 
end

res = (spann');
end


