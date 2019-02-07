dvar boolean x1;
dvar boolean x2;
dvar boolean x3;
dvar boolean x4;

dexpr int total = 300*x1 + 90*x2 + 400*x3 + 150*x4;

maximize total;

subject to {
  	c1: 35000*x1 + 10000*x2 + 25000*x3 + 90000*x4 <= 120000;
  	c2: 4*x1 + 2*x2 + 7*x3 + 3*x4 <= 12;
  	c3: x1 + x2 <= 1;
  }

