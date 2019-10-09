function [G, n, h, a, b, p]=Gnh(a, b, p)
E=EllC(a, b, p); %generates the set E
N=length(E)+1; %number of points in E (including O=inf)
L=factor(N); %prime factors of N
l=randi(length(L),1); %random number to choose a prime factor
n=L(l); 
h=N/n; %cofactor
for ii=1:N
    m=randi(N-1); %random number to choose a point, P (not O)
    P=E(m,:);
    G=PMulD(P, h, a, b, p); %G=hP
    if G ~= inf %G cannot be O
        return
    end
end

