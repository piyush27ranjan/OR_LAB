proc optmodel;

var x{1..4} >= 0;
max z = 10*((2*x[1])^(1/3) + Log(x[2])/Log(2.72) + 2.72^(x[3]/50) + x[4]/50 - 6);

constraint a: sum{i in {1..4}}x[i] <= 100;
constraint b: 20 - x[4] <= 0;
constraint c: -10*(2.72^(x[3]/50) - 2) <= 0;
solve; 
print x[1];
print x[2];
print x[3];
print x[4];

number p = Log(2.71);
print p;
