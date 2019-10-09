function [r,s,z]=sigc(da,G,n,a,b,p,z)
%Creates signature (r,s) - use keyprodall.m to create parameters
r=0;
s=0;
while r==0    
    while s==0
        k=randi(n-1); %secret k 
        P=PMulD(G,k,a,b,p); %P=kG
        r=mod(P(1),n); %computes r (cannot be 0)
        [~,U,~] = gcd(k, n); %computes the inverse of kmodn
        kinv = mod(U,n);%"
        s=mod(kinv*(z+r*da),n); %computes s (cannot be 0)
    end
end


