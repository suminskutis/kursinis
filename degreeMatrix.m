function [ D ] = degreeMatrix( A )
%calculate degree matrix from given adjacency matrix

n = size(A,2);
D = zeros(n);

for i = 1:n
    column = A(:,i);
    D(i,i) = sum(column);
end

