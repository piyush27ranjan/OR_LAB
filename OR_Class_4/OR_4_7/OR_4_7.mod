range np = 1..7;
dvar boolean x[np];

int B[np] = [100, 80, 120, 110, 90, 90, 110];

dexpr int total = sum(i in np)(x[i]*B[i]);
minimize total;

int A[np][np] = [[1,1,0,1,0,0,1], [1,1,0,0,1,1,1], [0,0,1,1,1,1,0], [0,0,1,1,0,0,1], [0,1,1,0,1,1,0], [0,1,1,0,1,1,0], [1,1,0,1,0,0,1]];

subject to{
  	forall(i in np){
  	  	sum(j in np)x[j]*A[i][j] >= 1;
	}
};
