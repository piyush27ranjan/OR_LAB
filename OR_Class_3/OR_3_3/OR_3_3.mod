int plant = ...;
int DC = ...;
range P = 1..plant;
range C = 1..DC;

int TC[P][C] = ...;

int plant_capacity[P] = ...;
int demand[C] = ...;

dvar int+ X[P][C];
dexpr int total_cost = sum(i in P, j in C)TC[i][j]*X[i][j];

minimize total_cost;
subject to
{
	forall(i in P){sum(j in C)X[i][j] <= plant_capacity[i];}
	forall(j in C){sum(i in P)X[i][j] == demand[j];}  
}