A=[1 1 0; 1 0 1; 0 1 1];
b=[6; 7; 5];
c=[1; 2; 4];
cvx_begin
    variable x(3)
    maximize((c')*x)
    subject to
        A*x<=b;
        x>=0;
cvx_end