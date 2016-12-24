function [Q,R] = hhr(A)
% qr via householder reflection
 
% length of matrix A
B = A;
n = size(A,2);
m = n;
Q = eye(n);
R = zeros(n);
for i = 1:n-1
    
    I = eye(m);                         % create identity matrix of size n = m
    zeroV = zeros(m,1); zeroV(1) = 1;   % get vector with values of [1,0,0,0...,0]  n = vectors length
    A = B(i:end,i:end);                     % set part of input matrix as working matrix
    vector = A(:,1)';                   %take columns of matrix A one by one
    normV = norm(vector);        
    u = vector - normV*zeroV';
    v = u/norm(u);
    % Q = I - 2vv'
    Qi = I - 2*(v'*v);
    A = Qi*A;                %set A for following calculations
    I(i:n,i:n) = Qi;
    Q = Q*I;                 
    m = m-1;
    R(i:n,i:n) = A;
end


end

