function [ X] = kVectors( A,Q,k)
%return k highest vectors of Q
%   find highest vectors of Q
%   corresponding to highest eigenvalues of A
% find diagonal elements of A(eigenvalues)
diagonal = diag(A');
saiz = size(diagonal,1);
sortedDiagonal = sort(diagonal);
kValues = fliplr((sortedDiagonal(end-k+1:end))')     %kValues is biggest k diagonal values in ascending order
X = zeros(saiz,k);

for i = 1:k;
    highestValue = kValues(i);
    for j = 1:saiz;
        if highestValue == diagonal(j)  ;    %find highestValue in diagonal array
            indice = diagonal == highestValue ;    %find the indce of highestValue variable in diagonal array
            X(:,i) = Q(:,indice);
        end
    end




end

