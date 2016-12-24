%%
A = dlmread('hhr.txt')
B = hess(A)

[e] = qrmethod(A)

[v d] = eig(A)

%%
A = dlmread('1.txt');
D = diag(A);
change = 1;
Qi = eye(3);
steps = 0;
while change > 0
    Dold = D;
    [Q R] = qr(A);
    Qi = Qi*Q;
    A = R*Q;
    D = diag(A);
    change = norm(D - Dold);
    steps = steps +1;
end

D
A
R
Qi
[v d] = eig(A)
steps
