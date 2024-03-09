
A=[3 2 1 2 5; 4 1.5 0.5 2 4; 3.5 1. 1.5 1 3];
b=[5 3 10 1.5 1];
c=[1000 500 250 480 960];


cvx_begin %quietx
    variable x(3)
    maximize sum(x)*80 - (x')*A*(b')
    subject to 
         (x')*A<= c;
         x(1)>=50;
cvx_end
disp(x)
