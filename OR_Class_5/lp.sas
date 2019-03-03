proc optmodel;
var x{1..2} >= 0;
max z = 34*x[1] + 40*x[2];

con c1: 4*x[1] + 6*x[2] <= 48;
con c2: 2*x[1] + 2*x[2] <= 18;
con c3: 2*x[1] + x[2] <= 16;
solve with lp / solver = primal_spx;

print z x;

quit;
