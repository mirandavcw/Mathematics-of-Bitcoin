function sigv(r,s,z,Ha,G,n,a,b,p)
%Verifies signature (r,s)- use keyprodall.m and sigc.m 
[~,U,~] = gcd(s, n); %computes the inverse of smodn
sinv = mod(U,n); %"
u1=mod(sinv*z,n);
u2=mod(sinv*r,n);
P1=PMulD(G,u1,a,b,p); %u1G
P2=PMulD(Ha,u2,a,b,p); %u2Ha 
P=PAdd(P1,P2,a,b,p); %P = u1G + u2Ha 
if r == mod(P(1),n)
    disp('Signature is valid') %verifies r=xmodn
else
    disp('Signature not valid')
end