function [x] = nidomarianna2(A,b)
n = size(A,2);
x = zeros(n,1);
x(n) = b(n)/A(n,n);
i = (n-1);
while (i<n && i>0) %Oppure for i=(n-1):-1:1
    sum = 0;
    for j=(i+1):n
        sum = sum + (A(i,j)*x(j));
    end
    p = b(i)-sum;
    x(i) = (1/A(i,i))*p;
    i = i-1;
end
end