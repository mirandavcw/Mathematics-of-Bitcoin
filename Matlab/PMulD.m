function kP=PMulD(P,m,a,b,p)
%Point multiplication - Double and Add Algorithm
kP = inf; %Starts at O
Q = P; %Starts at 1P
k= de2bi ( m , [] , 2) ; %converts m to binary
for ii= 1:length(k)
    if k(ii)==1
        kP=PAdd(kP,Q,a,b,p); %for each 1 in k, add Q to kP
    end
     Q=PAdd(Q,Q,a,b,p); %for each digit in k, double Q
end