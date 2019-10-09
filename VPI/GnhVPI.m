function [G, n, h, a, b, p]=GnhVPI(a, b, p, N)
L=factor(N); %prime factors of N
l=randi(length(L),1); %random number to choose a prime factor
n=L(l); 
h=N/n; %cofactor
y=[]; %assigns empty y
G= inf; %assigns G=O
m=randint(p); %random number for x coordinate
while G == inf
    while isempty(y)==1
        m=m+1; %changes x for each iteration we have no modular root/suitable G
        y= modroot(m^3+a*m+b,p); %calculates y coordinate
    end
    P=[m,y]; %random point P
    G=PMulDVPI(P, h, a, b, p); %G=hP
end
