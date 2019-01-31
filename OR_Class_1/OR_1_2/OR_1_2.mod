/*********************************************
 * OPL 12.5 Model
 * Author: user
 * Creation Date: Jan 17, 2019 at 2:47:38 PM
 *********************************************/
dvar float+ x1;
dvar float+ x2;

dexpr float z = 50*x1 + 100*x2;
minimize z;

subject to{
	c1: 7*x1 + 2*x2 >= 28;
	c2: 2*x1 + 12*x2 >= 24;
  }
