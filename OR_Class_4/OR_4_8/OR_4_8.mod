range comp = 1..3;
range cargo = 1..4;

int cweight[cargo] = [18, 15, 23, 12];
int cden[cargo] = [480, 650, 580, 390];
int profit[cargo] = [310, 380, 350, 285];

int wcapacity[comp] = [10, 16, 18];
int volcapacity[comp] = [6800, 8700, 5300];

dvar float+ x[comp][cargo];

dexpr float total = sum(i in comp, j in cargo)(x[i][j]*cweight[j]*profit[j]);

maximize total;
subject to {
  	forall(i in comp){
  		sum(j in cargo)cden[j]*cweight[j]*x[i][j] <= volcapacity[i];	
  	}
  	forall(i in comp){
  		sum(j in cargo)cweight[j]*x[i][j] <= wcapacity[i];	
  	}
  	forall(i in comp){
  		sum(j in cargo)x[i][j] <= 1;  
  	}
  	sum(j in cargo)cweight[j]*x[1][j]/wcapacity[1] == sum(j in cargo)cweight[j]*x[2][j]/wcapacity[2];
  	sum(j in cargo)cweight[j]*x[1][j]/wcapacity[1] == sum(j in cargo)cweight[j]*x[3][j]/wcapacity[3];
  	sum(j in cargo)cweight[j]*x[2][j]/wcapacity[2] == sum(j in cargo)cweight[j]*x[3][j]/wcapacity[3];
};