f=@(x) sin(x)/x-x;
a=.8; b=1;
tol=1e-10;
nitmax=50;
[c,nit,fc]=regula_falsi(f,a,b,tol,nitmax);
fprintf('approssimazione dello zero: %1.10e\n',c)
fprintf('numero di iterazioni: %d\n',nit)
fprintf('residuo: %1.1e\n',fc)