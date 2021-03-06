% %%
% 
% A=[ 12 -51 4;6 167 -68; -4 24 -41];
% 
% [ku, er] = qrgivens(A)
% 
% [Q R]  = qr(A)
% 
% %%
% 
% A = dlmread('1.txt');
% D = diag(A);
% n = size(A,1);
% [Q,R] = hhr(A);
% change = 1;
% Qi = eye(n);
% 
% while change > 0
%     Dold = D;
%     [Q,R] = hhr(A);
%     A = R * Q;
%     Qi = Qi * Q;
%     D = diag(A);
%     change = norm(D - Dold);
% end
%%
A = dlmread('adj.txt')
A = A(3:6, 3:6)
[Q R] = QRfactor(A)
[q r] =qr(A)

%%

k = 2
A = dlmread('hhr.txt')
R = A;
m = size(A,1)
x = zeros(m,1)
x(k:m,1) = R(k:m,k)
%%
A = dlmread('hhr.txt');
b = A;
D = diag(A);
n = size(A,1);
change = 1;
Qi = eye(n);

while change > 0
    Dold = D;
    [Q R] = QRfactor(A);
    A = R * Q;
    Qi = Qi *Q;
    D = diag(A);
    change = norm(D - Dold);
end

[v d] = eig(b)

%%
A = dlmread('6x6.txt')

D = degreeMatrix(A)
