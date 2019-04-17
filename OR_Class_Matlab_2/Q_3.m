obj = @(x) -10*((2*x(1))^(1/3) - 2 + log(x(2)) - 2 + 2.7184^(x(3)/50) -2 + x(4)/50 );

%initial guess
x0 = [0 0 0 0];

%variable bound;
lb = [0 0 0 0];
ub = [];

A = [1 1 1 1; 0 0 0 -1];
b = [100; -20];
Aeq = [];
beq = [];

nonlincon = @nlcon;

[x,fval,exitflag,output,lambda,grad,hessian] = fmincon(obj, x0, A, b, Aeq, beq, lb, ub,nonlincon);

