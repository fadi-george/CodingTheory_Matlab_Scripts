function res = islinindep( list )
%  Determines if a set of binary strings (representing vectors) are
%  linearly dependent
%
%  Example: 
%  islinindep({'1001','1001','1010'})
%  returns Linearly Dependent

A = listspan(list)'; [a , b] = size(A);
counter = 0; lzero = A{1}; 

for i = 1:b
    if A{i} == lzero
        counter = counter + 1;
    end 
end 

if counter > 1
    res = 'Linearly Dependent';
else
    res = 'Linearly Independent';
end

end

