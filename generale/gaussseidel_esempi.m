A=[2.4, -0.8, -0.7;
    0.5, 1.5, 0.7;
    -0.1, 0.8, 2.1];
b=[0.9; 2.7; 2.8];
tol=1e-5;
x0=[0.9; 0.9; 0.9];
nitmax=10;
[x1,nit,res]=gaussseidel(A,b,tol,x0,nitmax);
fprintf('soluzione:\n')
fprintf('\t %1.6f\n',x1)
fprintf('numero di iterazioni %d\n',nit)
fprintf('residuo %1.1e\n',res)