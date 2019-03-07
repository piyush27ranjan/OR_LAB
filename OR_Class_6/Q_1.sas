proc optmodel;
set O = {'Detroit', 'pittsburgh'};
set D = {'Boston', 'New York'};
number c{O, D} = [30 20
					40 10];
number a{O} = [200 100];
number b{D} = [150 150];

var x{O, D} >=0;
min total_cost = sum{i in O, j in D}c[i, j]*x[i, j];
constraint supply{i in O} : sum{j in D}x[i, j] = a[i];
constraint demand{j in D} : sum{i in O}x[i, j] = b[j];

solve;
print x;
