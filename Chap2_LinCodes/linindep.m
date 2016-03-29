function res = linindep( list )
[a,b] = size(list);
vals = cell(1,(2^b)-1);
coef = zeros(1,b);

for i = 2:(2^b)summ = list{j}

    vals{i-1} = dig2bin((i-1),b);
    for j = 1:b
        m = char(vals(i-1));
        coef(j) = str2num(m(j));
        summ ~= regexprep(num2str(coef(j)*list{i} - 48 > 0) , '\W' , '')
    end

end

end

