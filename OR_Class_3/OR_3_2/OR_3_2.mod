int Job =  ...;
int Machine = ...;
range P = 1..Job;
range C = 1..Machine;
int c[P][C] = ...;

dvar int+ X[P][C];
dexpr int total_cost = sum(i in P, j in C)c[i][j]*X[i][j];

minimize total_cost;
subject to
{
	forall(i in P){sum(j in C)X[i][j] == 1;}
	forall(j in C){sum(i in P)X[i][j] == 1;}  
}