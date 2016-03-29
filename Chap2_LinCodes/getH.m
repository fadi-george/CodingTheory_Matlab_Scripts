function res = getH( len , list)
% Generates parity-check matrix
[a , b] = size(list);
B = zeros(b , len); 
for i = 1:b
    for j = 1:len 
    str = list{i};
    A(i,j) = str2num(str(j));
    end
end
G = rref2(A);
G(~any(G,2) , :) = [];  % delete zero rows
[a , b] = size(G); k = 1; i = 1; oldj = 1;
X = G; H = zeros(b , (b - a));
for j = 1:b
    if G(i,j) == 1 && sum(G(i,j)) == 1
    ind(k) = j; 
    k = k + 1; 
    i = i + 1;
        if i == a + 1
        break;
        end
    end
end
[c , d] = size(ind);

for i = 1:d
    X(:, ind(d - i + 1)) = [];
end
iden = eye(b - a);
for i = 1:d
    H(ind(i) , : ) = X(i,:);
end
k = 1;
for i = 1:b
    if ~any(H(i,:))
        H(i,:) = iden(k,:);
        k = k + 1;
    end
    if k == (b - a) + 1
    break;
    end
end
res = H;
end

