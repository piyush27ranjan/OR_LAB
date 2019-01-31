int job = 4;
int person = 4;
range P = 1..job;
range C = 1..person;
int TC[P][C] = [[10,22,12,14], [16,18,22,10], [24,20,12,18], [16,14,24,20]];

dvar int+ X[P][C];
dexpr int total_cost = sum(i in P, j in C)TC[i][j]*X[i][j];

maximize total_cost;
subject to
{
	forall(i in P){sum(j in C)X[i][j] == 1;}
	forall(j in C){sum(i in P)X[i][j] == 1;}  
}