int plants = ...;
int DC = ...;

range P=1..plants;
range D=1..DC;

int plantCapacity[P] = ...;
int demands[D]=...;
int c[P][D] = ...;

dvar float+ x[P][D];
dexpr float TC = sum(i in P, j in D)c[i][j]*x[i][j];

minimize TC;

subject to
{
	Supply: forall(i in P)sum(j in D)x[i][j] <= plantCapacity[i];
	Demand: forall(j in D)sum(i in P)x[i][j] >= demands[j];  
}