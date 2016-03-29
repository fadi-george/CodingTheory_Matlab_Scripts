function res = distG( G )
% least weight in span method
[a , b] = size(G); 
for i = 1:a
    A{i} = G(i,:);
end

B = listspan(A);
[b , a] = size(B); min = 99999;

for i = 1:b
    C(i) = sum(findstr(B{i},'1') > 0);
    if(C(i) < min && C(i) ~= 0)
        min = C(i);
    end
end

res = min;
end

