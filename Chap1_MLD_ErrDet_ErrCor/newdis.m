function res = newdis( pos , errorpat , list )
%% Takes in position , error pattern, and list of codewords
%% Example: newdis(2 , '1010' , {'1111' , '0010'})
%  returns 1

[a , b] = size(list); k = 1;

for j  = 1:b
    diss(1,j) = sum( errorpat ~= list{j} );
end


[c , d] = size(find(diss == min(diss)));

if d > 1
    res = 0;
else
    if diss(1,pos) == min(diss)
        res = 1;
    else
        res = 0;
    end
end

end

