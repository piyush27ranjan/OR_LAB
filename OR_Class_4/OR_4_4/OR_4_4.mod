dvar int+ x1;
dvar int+ x2;

dexpr int total = 8*x1 + 5*x2 ;

maximize total;

subject to {
  	c1: x1 + x2 <= 6;
  	c2: 9*x1 + 5*x2 <= 45;
  }

