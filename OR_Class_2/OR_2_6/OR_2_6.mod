int job = 4;
int person = 4;
range P = 1..job;
range C = 1..person;
int TC[P][C] = [[20,0,32,27], [15,20,17,18], [16,18,0,20], [0,20,18,24]];

dvar int+ X[P][C];
dexpr int total_cost = sum(i in P, j in C)TC[i][j]*X[i][j];

minimize total_cost;
subject to
{
	forall(i in P){sum(j in C)X[i][j] == 1;}
	forall(j in C){sum(i in P)X[i][j] == 1;} 
	X[1][2] == 0;
	X[3][3] == 0;
	X[4][1] == 0; 
}