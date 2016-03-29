function [res] = guessct( bin , exp , B , C)
endd = 2^exp; j = 1; b = 0;
D = zeros(endd , 1);

if length(bin) > exp && length(bin) < 3*exp
    
    for i = 1:endd
        D(i) = sum( bin ~= B{i} ); % will print hamming distance
    end
    
else
    
    for i = 1:endd
        D(i) = sum( bin ~= C{i} ); % will print hamming distance
    end    
    b = 1;
end

for i = 1:endd
	if D(i) == min(D) && b == 0
       
        res{j} = B{i};
        j = j + 1;
        
    elseif D(i) == min(D) && b == 1
        
        res{j} = C{i};
        j = j + 1;
        
	end
end 

res = res'; % likely code that was transmitted
end

