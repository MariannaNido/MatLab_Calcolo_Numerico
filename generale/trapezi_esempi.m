f=@(x) sin(pi*x);
a=0; b=1;
n=4;
I0=trapezi(f,a,b,n);
n=2*n;
I1=trapezi(f,a,b,n);
while abs(I1-I0)>1e-3
    I0=I1;
    n=2*n;
    I1=trapezi(f,a,b,n);
end
fprintf('approssimazione integrale: %1.5f\n',I1)
fprintf('n=%d\n',n)