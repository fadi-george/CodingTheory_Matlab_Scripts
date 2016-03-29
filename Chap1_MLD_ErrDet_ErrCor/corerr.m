function res = corerr( leng ,  list )
% Takes length(leng) of codewords and list of codewords to be looked at 
% Function will output a column of entries stating which error patterns
% gets corrected
%
% Sample run: corerr( 3 , {'000' , '111'} ) will have the last column
% stating that the errors corrected are '000' , '001' , '010' and '100'

tot = deterr2(leng , list); [a , b] = size(tot);
tot(:,b) = []; k = 1;

for i = 1:a
    for j = 2:b-1
        {tot{i,j} , list};
        diss(i , j - 1) = newdis(j - 1 , tot{i,j} , list);

        [a , d] = size(find(diss(i,:) == 1));
        if d == b - 2
            newcol{i,1} = 'corrects';
        else
            newcol{i,1} = 'does not correct';
        end
        k = k + 1;
    end
    k = 1;
end

%diss
tot(:,b) = newcol;
res = tot;
end

