int plant = 3;
int DC = 2;
range P = 1..plant;
range C = 1..DC;
int TC[P][C] = [[50, 300], [100, 250], [500, 125]];
int plant_capacity[P] = [1000, 1500, 1200];
int demand[C] = [2300, 1400];

dvar int+ X[P][C];
dexpr int total_cost = sum(i in P, j in C)TC[i][j]*X[i][j];

minimize total_cost;
subject to
{
	forall(i in P){sum(j in C)X[i][j] == plant_capacity[i];}
	forall(j in C){sum(i in P)X[i][j] == demand[j];}  
}