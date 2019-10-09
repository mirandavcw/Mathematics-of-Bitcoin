function [da,Ha,db,Hb,G,n,h,a,b,p] = btckeyprodall(G,n,h,a,b,p)
%Finds private and public keys from sextuple, outputs all parameters
da=randi(n,1); %choose random private key (A)
db=randi(n,1); %choose random private key (B)
Ha=PMulD(G,da,a,b,p); %computes public key (A)
Hb=PMulD(G,db,a,b,p); %computes public key (B)
%S=PMulD(Ha,db,a,b,p); %'secret' S - for checking only
