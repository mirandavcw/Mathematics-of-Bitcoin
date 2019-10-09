function sigvVPI(r,s,z,Ha,G,n,a,b,p)
%Verifies signature (r,s)- use keyprodallVPI.m or btckeyprodallVPI.m and sigcVPI.m
sinv = minv(s,n); %computes the inverse of smodn
u1=mod(sinv*z,n);
u2=mod(sinv*r,n);
P1=PMulDVPI(G,u1,a,b,p); %u1G (a point)
P2=PMulDVPI(Ha,u2,a,b,p); %u2Ha (")
P=PAddVPI(P1,P2,a,b,p); %P = u1G + u2Ha 
if r == mod(P(1),n)
    disp('Signature is valid') %verifies r=xmodn
else
    disp('Signature not valid')
end