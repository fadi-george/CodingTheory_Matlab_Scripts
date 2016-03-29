function res = mindist( list )
%% Determines the minimum distance between any codewords in the list
%% Example:  mindist({'1011' , '0110' , '1111'})
%  returns a 1 since codewords '1011' and '1111' are one 'bit' away
[a , b] = size(list); k = 1;

disss = zeros(1  , nchoosek(b , 2));

for j  = 1:b-1
    
    for i = j+1:b
    	disss(k) = sum( list{j} ~= list{i} );
        k = k+1;
    end
    
    
end

res = min(disss);
end

