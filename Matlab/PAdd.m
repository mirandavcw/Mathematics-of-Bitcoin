function R=PAdd(P,Q,a,b,p)
%Point addition for all cases
if isscalar(P)
    if isscalar(Q) %case P=Q=O
        R=inf;
    else %case P=O
        R=Q;
    end
elseif isscalar(Q) %case Q=O
    R=P;
else %case P,Q not O  
    x1 = P(1); y1 = P(2); x2 = Q(1); y2 = Q(2); %assign coordinates
    if mod( x1^3 + a*x1 + b , p) ~= mod( y1 ^ 2 , p) %checks P in E
        error('P not in E')
    elseif mod( x2^3 + a*x2 + b , p) ~= mod( y2 ^ 2, p) %checks Q "
        error('Q not in E')
    end
    if and(x1 == x2, y1 == mod( -y2 , p )) % case P=-Q
         R=inf;
         return
    end
    if x1 == x2 %case x1=x2 => y1=y2
            [~,U,~] = gcd( (2*y1) , p);
            Y = mod( U , p ); %inverse of 2y1 mod p
            sl = mod(  ( 3 * x1 ^ 2 + a) * Y  , p);
    else %x1 ~= x2
        [~,U,~] = gcd( ( x2 - x1 ) , p);
        X = mod(U, p); %inverse of x2-x1 mod p
        sl = mod( ( y2 - y1 ) * X  , p);
    end
        %finds P + Q = R
        x3 = mod(  ( sl ^ 2 - x1 - x2 )  , p);
        y3 = mod(  sl * ( x3 - x1 ) + y1  , p);
        R = [x3 , mod( -y3, p)];
end