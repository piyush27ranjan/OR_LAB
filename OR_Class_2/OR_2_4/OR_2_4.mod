int job = 3;
int person = 4;
range P = 1..job;
range C = 1..person;
int TC[P][C] = [[7,5,8,4], [5,6,7,4], [8,7,9,8]];

dvar int+ X[P][C];
dexpr int total_cost = sum(i in P, j in C)TC[i][j]*X[i][j];

minimize total_cost;
subject to
{
	forall(i in P){sum(j in C)X[i][j] == 1;}
	forall(j in C){sum(i in P)X[i][j] <= 1;}  
}