function [x1,nit,res]=gaussseidel(A,b,tol,x0,nitmax)

L=tril(A);
U=triu(A,1);
for nit=1:nitmax
    x1=L\(b-U*x0);
    err=norm(x1-x0,inf)/norm(x1,inf);
    if err<=tol
        res=norm(A*x1-b,inf);
        return
    end
    x0=x1;
end
res=norm(A*x1-b,inf);
nit=-1;