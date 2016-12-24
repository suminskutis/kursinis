function [qq, rr] = qrFact(A)

%n = matrix length
n = size(A, 2);
U = zeros(n);
Qplus = 1;
for j = 1:n;
    u = A(:,j);  %pick vectors of A one by one and assign them to u
    for i = 1:j-1;
        u = u - proj( U(:,i), A(:,j));  % uk row of matrix U calculated
    end 
    U(:,j) = u;
end
qq = normc(U);
%qq = qq*-1;
rr = qq' * A;
end

% calculates projection
function p = proj(e,a)
    p =(e' * a) / (e' * e) * e;
end