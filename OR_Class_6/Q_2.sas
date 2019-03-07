proc optmodel;
set f = {'A', 'B', 'C', 'D'};
set d = {'1', '2', '3', '4'};
number ff{f, f} = [0 5 2 0 
					0 0 2 3 
     				3 4 0 0
					0 0 5 0];
number dd{d, d} = [0 5 10 4
					4 0 6 7
					8 5 0 5
					6 6 5 0];

var x{f, d}>= 0;
min total_cost = sum{i in f, j in f, k in d, l in d}ff[i,j]*dd[k,l]*x[i, k]*x[j, l];
constraint machine{i in f} : sum{j in d}x[i, j] = 1;
constraint site{i in d} : sum{j in f}x[j, i] = 1;

solve;
print x;
