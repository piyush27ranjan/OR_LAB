dvar int+ x1;
dvar int+ x2;
dvar int+ x3;

dexpr int total = 9000*x1 + 1500*x2 + 1000*x3 ;

maximize total;

subject to {
  	c1: 50000*x1 + 12000*x2 + 8000*x3 <= 250000;
  	c2: x1 <=4;
  	c3: x2 <= 15;
  	c4: x3 <= 20;
  }

