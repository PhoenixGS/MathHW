mu=1.2
V=[2 -1;-1 3]
r=[1;2]
e=ones(2,1)
cvx_begin
    variable x(2)
    minimize ((x')*V*x)
    subject to
        (r')*x>=mu;
        (e')*x==1;
        x>=zeros(2,1)
cvx_end
disp(x)