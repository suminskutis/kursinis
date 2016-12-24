function [A,Qi,D,steps] = shiftedqr(A)
%qr with shifts
% D = diagonal elements of matrix A = eigenvalues
% final A matrix Ak+1 = Rk*Qk
% Qi = product of all orthogonal Q matrices = eigenvectors
% steps = steps it took
n = size(A,1);
Qi = eye(n);
I = eye(n);
D = diag(A);
done = 1;
steps = 0;

while done > 0
    s = A(n,n);
    Dold = D;
    [Q,R] = qr(A-s*I);
    Qi = Qi * Q;
    A = R * Q + s*I;
    D = diag(A);
    done = norm(D - Dold);
    steps = steps + 1;
end

end