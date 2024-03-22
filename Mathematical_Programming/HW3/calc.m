cvx_begin
    variable z(2)
    minimize(norm(y-z(1)*x-z(2),Inf))
cvx_end