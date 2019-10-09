function [da,Ha,db,Hb,G,n,h,a,b,p] = btckeyprodallVPI(G,n,h,a,b,p)
%Outputs private and public keys from sextuple, outputs all parameters
da=randint(n)+1; %choose random private key (A) (add 1 so d =/= 0)
db=randint(n)+1; %choose random private key (B)
Ha=PMulDVPI(G,da,a,b,p); %computes public key (A)
Hb=PMulDVPI(G,db,a,b,p); %computes public key (B)