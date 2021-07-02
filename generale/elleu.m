function [L,U]=elleu(A)

n=size(A,1);
L=eye(n);
for k=1:n-1
    disp(A)
    if A(k,k)==0
        disp('Errore: pivot nullo')
        L=[]; U=[];
        return
    end
    for i=k+1:n
        L(i,k)=A(i,k)/A(k,k);
        for j=k+1:n
            A(i,j)=A(i,j)-L(i,k)*A(k,j);
        end
    end
end
U=triu(A);