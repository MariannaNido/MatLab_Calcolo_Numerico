function [c,nit,fc]=regula_falsi(f,a,b,tol,nitmax)
fa=f(a);
fb=f(b);
c=(a*fb-b*fa)/(fb-fa);
fc=f(c);
nit=0;
err=tol+1;
while err>tol && nit<nitmax
    c_old=c;
    if fa*fc<0
        b=c;
        fb=fc;
    else
        a=c;
        fa=fc;
    end
    c=(a*fb-b*fa)/(fb-fa);    
    fc=f(c);
    nit=nit+1;
    err=abs(c-c_old)/abs(c);
end
if err>tol
    nit=-1;
end