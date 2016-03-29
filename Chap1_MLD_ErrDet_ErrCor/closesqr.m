function res = closesqr( num )
%% Finds Closet Square relative to input num
%% Example:  closeqr( 21 ) returns 25

numsqrt = sqrt(num);
sqrbef = (floor(numsqrt))^2;
sqraft = (floor(numsqrt) + 1)^2;

if num - sqrbef < sqraft - num 
    res = sqrbef;
else
    res = sqraft;
end

end

