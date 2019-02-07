dvar boolean x[1..4];
range b = 1..4 ;
int B[b] = [9, 5, 6, 4];

dexpr int total = sum(i in b)(B[i] * x[i]);

maximize total;

subject to {
  	c1: 6*x[1] + 3*x[2] + 5*x[3] + 2*x[4] <= 10;
  	c2: 1*x[3] + 1*x[4] <= 1;
  	c3: -x[1] + x[3] <= 0;
  	c4: -x[2] + x[4] <= 0;
  }