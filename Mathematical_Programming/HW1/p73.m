cvx_begin
    variable x(3)
    minimize (2*x(1)+x(2)+x(3))
    subject to
        sum(x)==1;
        [x(1) x(2); x(2) x(3)]==semidefinite(2);
cvx_end
disp(x)