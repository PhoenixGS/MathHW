rand('seed',0);
A = rand(30,10);
b = rand(30,1);
c_nom = 1+rand(10,1); % nominal c values
cvx_begin
    variable x(10)
    minimize ((c_nom')*x)
    subject to
        A*x>=b;
cvx_end