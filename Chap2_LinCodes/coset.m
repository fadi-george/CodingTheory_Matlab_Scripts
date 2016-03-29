function res = coset( len , list )
%% Finds all the cosets for some code C
% len is the length of any codeword in C
% list is in the format like so { '101' , '100' }
%% Example: 
%  coset(3 , { '101' , '100' }) returns
%     '101'    '100'
%     '100'    '101'
%     '111'    '110'
%     '110'    '111'

[a , b] = size(list); c = a; d = b;
for i = 1:2^len
    A{i} = dig2bin(i-1,len); % all codeworks in K^len
end
i = 2; j = 1; dimm =(2^len)/(b); % dimm determines how many cosets we needd 
klist = list; mlist = list;

for m = 1:dimm 
  while(any(klist{j} ~= A{i}))  
    j = j + 1;
        if j == d + 1
        j = 1;
        i = i + 1;
        break;
        end
  end
  if floor(sum(klist{j} == A{i})/len)
        i = i + 1;
        j = 1;
  else
    for k = 1:b
    coss{1,k} = regexprep(num2str(list{k} ~= A{i-1}),'\W','');
    end
  klist = [klist , coss];
  mlist = [mlist ; coss];
  [c , d] = size(klist); j = 1;
  end
end

res = mlist;
end

