function res = deterr( list , error  )
%% Takes a cell list and tries to see if the error (string) is detected in the code
%% Example: deterr( {'000' , '111'} , '001') states that the
 % pattern 001 was detected
[a , b] = size(list);
a = 1;

for i = 1:b
    A{i} = regexprep(num2str(error ~= list{i}),'\W','');
    if any(strcmp( A{i} , list ))
        a = 0;
    end
end

if a == 1
    %res = sprintf('Error Detected for %s' , error);
    res = ['Pattern ' error ' was ' 'detected'];
else % a == 0
    %res = sprintf('Error Not Detected for %s' , error);
    res = ['Pattern ' error ' was ' 'not detected'];
end

end

