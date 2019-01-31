int plant = 3;
int DC = 4;
range P = 1..plant;
range C = 1..DC;
int TC[P][C] = [[10,0,20,11], [12,7,9,20], [0,14,16,18]];
int plant_capacity[P] = [20,25,5];
int demand[C] = [5,15,15,10];

dvar int+ X[P][C];
dexpr int total_cost = sum(i in P, j in C)TC[i][j]*X[i][j];

minimize total_cost;
subject to
{
	forall(i in P){sum(j in C)X[i][j] <= plant_capacity[i];}
	forall(j in C){sum(i in P)X[i][j] == demand[j];}  
}