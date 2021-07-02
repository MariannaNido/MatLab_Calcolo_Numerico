function [x] = SostAvanti(A,b)
n = size(A,2);
x = zeros(n,1); %Inizializzo il vettore delle soluzioni
x(1) = b(1)/A(1,1); %Non cambia al variare di i
for i=2:n
    sum = 0;
    for j=1:(i-1)
        sum = sum +(A(i,j)*x(j));
    end
    p = b(i) - sum;
    x(i) = ( 1/A(i,i) ) * p;
end
end
