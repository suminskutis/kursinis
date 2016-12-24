function [A, Qi, D, steps] = unshiftedqr(A)
%qr without shifts
% D = diagonal elements of matrix A = eigenvalues
% final A matrix Ak+1 = Rk*Qk
% Qi = product of all orthogonal Q matrices = eigenvectors
% steps = steps it took

n = size(A,1);
Qi = eye(n);
D = diag(A);
done = 1;
steps = 0;
while done > 0
    Dold = D;
    [Q,R] = qr(A);
    Qi = Qi * Q;
    A = R * Q;
    D = diag(A);
    done = norm(D - Dold);
    steps = steps + 1;
end

end