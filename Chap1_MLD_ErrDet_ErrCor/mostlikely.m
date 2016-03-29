function [res] = mostlikely( w , list )
%% Determines which codewords are mostly likely that they were the ones set.
%  Needs to recieve a cell array (list) 
%% Example: mostlikely('100' , {'111' , '101' , '000'})
%  returns  '101'    '000'

[a , b] = size(list);
dist  = zeros(b , 1);
j = 1;

for i = 1:b
    dist(i) = sum(w ~= list{i}); % finds hamming distance of w to reach word in list
end


for i = 1:b
    if dist(i) == min(dist)     % find the lowest hamming distance
    res{j} = list{i};           % put the most likely codewords into the result cell
	j = j + 1;
    end        
end 

end

