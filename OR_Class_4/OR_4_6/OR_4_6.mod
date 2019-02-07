range np = 1..3;
dvar int+ x[np];
dvar boolean y[np];

dexpr int total = 12*x[1] + 8*x[2] + 5*x[3] - (6*x[1] + 4*x[2] + 8*x[3]) - (200*y[1] + 150*y[2] + 100*y[3]);

maximize total;

subject to {
  	 3*x[1] + 2*x[2] + 6*x[3] <=150;
  	 4*x[1] + 3*x[2] + 4*x[3] <= 160;


	forall(i in np){
	  	x[i] <= 10000000*y[i];
	  }
  }