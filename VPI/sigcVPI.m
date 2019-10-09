function [r,s,z]=sigcVPI(da,G,n,z,a,b,p)
%Creates signature (r,s) - use keyprodallVPI.m to create parameters
r=vpi(0);
s=vpi(0);
while r==vpi(0)
     while s==vpi(0)
        k=randint(n-1)+1; %secret k (+ 1 to negate 0)
        P=PMulDVPI(G,k,a,b,p); %P=kG
        r=mod(P(1),n); %r=xmodn (cannot be 0)
        kinv = minv(k,n);%computes the inverse of kmodn
        s=mod(kinv*(z+r*da),n); %computes s (cannot be 0)
    end
end
