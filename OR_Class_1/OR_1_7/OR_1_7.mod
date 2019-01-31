/*********************************************
 * OPL 12.5 Model
 * Author: user
 * Creation Date: Jan 17, 2019 at 3:20:32 PM
 *********************************************/
dvar float+ x1;
dvar float+ x2;

dexpr float z = 4*x1 + 1*x2;
maximize z;

subject to{
  c1: 3*x1 + x2 == 3;
  c2: 4*x1 + 3*x2 >= 6;
  c3: x1 + 2*x2 <= 4;
  }