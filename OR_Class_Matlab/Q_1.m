f = [-50, -40]
A = [3, 5; 0, 1; 8, 5]
b = [150; 20; 300]
Aeq = []
beq = []
lb = [0, 0]
ub = []
options = optimoptions('linprog')
[X, z, exitflag, output, lambda] = linprog(f, A, b, Aeq, beq, lb, ub, options)

