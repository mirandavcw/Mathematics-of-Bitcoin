function kP=PMulDVPI(P,m,a,b,p)
%Point multiplication - Double and Add Algorithm
kP = inf; %Starts at O
Q = P; %Starts at 1P
k=fliplr(vpi2bin(m)); %converts m to binary (in 'reverse' order)
for ii= 1:length(k)
    if k(ii)== vpi(1)
        kP=PAddVPI(kP,Q,a,b,p); %for each 1 in k, add Q to kP
    end
     Q=PAddVPI(Q,Q,a,b,p); %for each digit in k, double Q
end
