function [da,Ha,db,Hb,G,n,h,a,b,p] = keyprodall(a, b, p)
%Outputs private and public keys from E, outputs all parameters
[G, n, h, a, b, p]=Gnh(a, b, p);
da=randi(n,1); %choose random private key (A)
db=randi(n,1) ;%choose random private key (B)
Ha=PMulD(G,da,a,b,p); %computes public key (A)
Hb=PMulD(G,db,a,b,p); %computes public key (B)
%S=PMulD(Ha,db,a,b,p); %'secret' S - for checking only

    