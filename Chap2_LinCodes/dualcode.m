function res = dualcode( len , list )
[a , b] = size(list); k = 1;

for i = 1:2^len
A{i,1} = dig2bin(i-1 , len);

for j = 1:b
B(i,j) = mod(dot(A{i,1} - 48 , list{j} - 48 ), 2);
end
[c , d] = size(find(B(i,:) == 0));

if d == b
    dual{k} = A{i}; 
    k = k + 1;
end 
end

res = dual;
end

