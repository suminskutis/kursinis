function [ D ] = qrmethod(A)
% householder
n = size(A,2)
D = diag(A);
change = 1;
Qi = eye(n);
steps = 0;
while change > 0
    Dold = D;
    [Q R] = qr(A);
    Qi = Qi*Q
    A = R*Q;
    D = diag(A);
    change = norm(D - Dold);
    steps = steps +1;
end

end

