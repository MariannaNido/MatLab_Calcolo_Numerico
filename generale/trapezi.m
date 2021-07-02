function [I]=trapezi(f,a,b,n)

h=(b-a)/n;
j=0;
xj=a+j*h;
I=f(xj);
for j=1:n-1
    xj=a+j*h;
    I=I+2*f(xj);
end
j=n;
xj=a+j*h;
I=I+f(xj);
I=I*h/2;