function res = syndro( Gcell )
% Print Out Syndrome for Some Coset Matrix
[a , b] = size(Gcell); sylen = log2(a); c = 0;
for i = 1:a
    min = sum(Gcell{i,1} == '1');
    minn = Gcell{i,1};
    for j = 1:b
        if sum(Gcell{i,j} == '1') == min
            c = c + 1;
        end 
        if sum(Gcell{i,j} == '1') < min
        min = sum(Gcell{i,j} == '1');
        minn = Gcell{i,j};
        end
    end
    A{i,1} = minn;
    B{i,1} = dig2bin(i-1,sylen); 
    if c > 1
       C{i,1} = '----'; c = 0;
    else
       C{i,1} = ['v' ' + ' A{i , 1}]; c = 0;
    end
    
end

res = [A B C];
end

