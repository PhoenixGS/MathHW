rand('seed',0);
A = rand(30,10);
b = rand(30,1);
c_nom = 1+rand(10,1); % nominal c values
F=[eye(10);-eye(10);ones(1,10);-ones(1,10)]
g=[1.25*c_nom; -0.75*c_nom; 1.1*sum(c_nom); -0.9*sum(c_nom)]
cvx_begin
    variables x(10) d(22)
    minimize ((d')*g)
    subject to
        A*x>=b;
        (F')*d==x;
        d>=0;
cvx_end