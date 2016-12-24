function [E ,Qi,Ri,H, steps ] = myqrmethod (A )
% Computes all the eigenvalues of a matrix using the QR method .
% Input : A -- square matrix
% Outputs : E -- vector of eigenvalues
% steps -- the number of iterations it took
n = size(A,1);
H = hess ( A );
E = diag ( H );
change = 1;
steps = 0;
I = eye(n);
Qi = eye(n);
% loop while estimate changes
while change > 0
    s = H(n,n);
    Eold = E;
    % apply QR method
    [Q, R] = qr(H - s*I);
    H = R * Q + s*I;
    Qi = Qi * Q;
    Ri = R;
    E = diag (H);
    % test change
    change = norm (E - Eold );
    steps = steps +1;
end
