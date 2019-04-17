function[c, ceq] = nlcon(x);
c = [];
ceq = -10*(2.7184^(x(3)/50) - 2);
