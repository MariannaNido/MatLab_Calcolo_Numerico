function [x,Iter,fx] = nidomarianna1(f,df,ddf,x0,tol,maxIter)
for Iter=1:maxIter
    fx = f(x0);
    dfx = df(x0);
    ddfx = ddf(x0);
    num = 2*fx*dfx;
    den = 2*(dfx^2)-fx*ddfx;
    if ( den < 1e-15 )
        disp("Errore! Denominatore nullo!")
        x = 0;
        fx = 0;
        return
    end
    dx = -num/den;
    x = x0+dx;
    if (abs(dx)<=tol*abs(x))
        fx = f(x);
        return
    end
    x0 = x;
end
end