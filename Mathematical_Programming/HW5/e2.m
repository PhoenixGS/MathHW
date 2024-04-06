A=[1 1 0; 1 0 1; 0 1 1];
b=[6; 7; 5];
c=[1; 2; 4];
cvx_begin
    variable x(3)
    minimize((b')*x)
    subject to
        (A')*x>=c;
        x>=0;
cvx_end