cvx_begin
    variable x(2)
    minimize (2-x(1)-x(2))
    subject to
        x(1)^2+x(2)^2<=1-x(1)-x(2)
cvx_end
disp(x)
