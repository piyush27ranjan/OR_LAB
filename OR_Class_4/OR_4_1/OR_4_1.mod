dvar boolean x1;
dvar boolean x2;
dexpr int total = 100*x1 + 150*x2;

maximize total;

subject to {
  	c1: 8000*x1 + 4000*x2 <= 40000 ;
  	c2: 15*x1 + 30*x2 <= 200;
	}