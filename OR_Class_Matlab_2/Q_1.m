obj = @(x) - x(1)*x(2);

%initial guess
x = [0, 0];

%variable bound;
lb = [0, 0];
ub = [];

A = [4, 1];
b = 8;
Aeq = [];
beq = [];

x = fmincon(obj, x, A, b, Aeq, beq, lb, ub)

