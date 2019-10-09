function E=EllC(a,b,p)
%Creates E - set of solutions to EC y^2 = x^3 + ax + b (modp)
z=0:p-1;
E=[];
lhs = mod( z.^2, p);
rhs = mod( z.^3+a.*z+b , p);

for ii=1:length(rhs)
    A = find(lhs == rhs(ii));
    for j=1:length(A);
        E=[E;z(ii),z(A(j))];
    end
end


%ADD INF TO SET