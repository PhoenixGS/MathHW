p = [0.75 0.35 0.40 0.95 0.75]'
q = [10 5 10 10 5]'
A = [1 0 1 1 0; 1 0 0 1 1; 1 0 1 1 0; 0 1 0 1 1; 0 0 1 0 0]
v = [2/10 7/20 1/10 3/10 1/20]'
w = 1
cvx_begin
    variable x(5)
    maximize ((p')*x-w*((v')*A*x))
    subject to
        x<=q;
        x>=0;
cvx_end
disp(x)