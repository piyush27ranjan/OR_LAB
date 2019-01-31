int plant = 5;
int DC = 5;
range P = 1..plant;
range C = 1..DC;
int TC[P][C] = [[11, 7, 10, 17, 10], [13, 21, 7, 11, 13], [13, 13, 15, 13, 14], [18, 10, 13, 16, 14], [12, 8, 16, 19, 10]];

dvar int+ X[P][C];
dexpr int total_cost = sum(i in P, j in C)TC[i][j]*X[i][j];

minimize total_cost;
subject to
{
	forall(i in P){sum(j in C)X[i][j] == 1;}
	forall(j in C){sum(i in P)X[i][j] == 1;}  
}