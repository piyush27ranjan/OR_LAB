proc optmodel;
var x{1..2} >= 0;
var y >= 0;
max z = y; 

con c1: 4*x[1] + 3*x[2] <= 480;
con c2: 3*x[1] + 5*x[2] <= 480;
con c3: x[1] - 2*x[2] <= 30;
con c4: -1*x[1] + 2*x[2] <= 30;
con c5: x[1] >= y;
con c6: x[2] >= y;
solve with lp / solver = primal_spx;

print z x;

quit;
