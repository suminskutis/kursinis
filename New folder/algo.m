%%
A = dlmread('6x6.txt');
%B = hess(A)


[a1, qi1, d1, s1] = shiftedqr(A);
[a2, qi2, d2, s2] = unshiftedqr(A);


%[v d] = eig(A);

%~~ matrix * eigenvector == eigenvector * eigenvalues 
% AA = A;
% X = qi1;
% a = a1;
% matrixVector = AA * X
% vectorValue  = X * a
% difference = matrixVector-vectorValue

%%
A = dlmread('6x6.txt')
D = degreeMatrix(A)
L = D^(-1/2) * A * D^(-1/2)

[a1, qi1, d1, s1] = shiftedqr(L);  % vealues,vectors,diagonal,steps
a1
qi1

X = kVectors(a1,qi1,3)
    
% %%~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
% A = dlmread('1.txt')
% B = A;
% change = 1;
% n = size(A,1);
% d = diag(A);
% Qi = eye(n);
% while change > 0
%     dold = d;
%     [q r] = qrFact(A);
%     Qi = Qi * q;
%     A = r*q;
%     d = diag(A);
%     change = norm(d-dold);
% end
% 
% [v d]=  eig(B)

% %  
% A = dlmread('24x24.txt');
% B = A;
% n = size(A,1);
% Qi = eye(n)
% for i = 1:29
%     [q r] = QRfactor(A);
%     A = r * q;
%     Qi = Qi * q;
% end
% ae = diag(A);
% [v d]= eig(B);
% e = eig(B);
% Qi
% v

% % %%
% % A = dlmread('hhr.txt');
% % n = size(A,1);
% % I = eye(n,n);
% % for i = 1:88
% % s = A(n,n); 
% % [Q,R] = qr(A-s*I); 
% % A = R*Q+s*I;
% % d = diag(A)
% % end
% % e = eig(A)
% % 'labas'
% % %%
% % A = dlmread('hhr.txt');
% % 
% % for i = 1:8
% % [Q R] = qr(A);
% % A = R*Q;
% % d = diag(A)
% % end
% % e =eig(A)
% % %%
% % A = dlmread('hhr.txt');
% % 
% % [A,Qi,D,steps] = qur(A);
% % D
% % steps
% % e = eig(A)
% 
% % %%
% % A = dlmread('1.txt');
% % D = diag(A);
% % n = size(A,1);
% % [Q,R] = hhr(A);
% % change = 1;
% % Qi = eye(n);
% % 
% % while change > 0
% %     Dold = D;
% %     [Q,R] = hhr(A);
% %     A = R * Q;
% %     Qi = Qi * Q;
% %     D = diag(A);
% %     change = norm(D - Dold);
% % end
% % A
% % Qi
%     
% 
% 