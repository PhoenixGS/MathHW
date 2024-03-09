cvx_begin
    variable x(3)
    minimize (2*x(1)+x(2)+x(3))
    subject to
        sum(x)==1;
        x>=0;
cvx_end
disp(x)
        