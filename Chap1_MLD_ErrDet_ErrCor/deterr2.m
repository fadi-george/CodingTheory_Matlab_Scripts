function res = deterr2( exp , list )
% Takes length(exp) of codewords and list of codewords to be looked at 
% Function will output a column of entries stating which error patterns
% gets detected
%
% Sample run: deterr2( 3 , {'000' , '111'} ) will have the last column
% stating that the errors detected are '001','010','011','100','101','110'
tot = IMLD(exp , list); [a , b] = size(tot); tot(:,b-1:b) = [];

for i = 1:a
    tot{i , b-1 } = deterr( tot(i,2:b-2) , tot{i,1});
end

res = tot;
end

