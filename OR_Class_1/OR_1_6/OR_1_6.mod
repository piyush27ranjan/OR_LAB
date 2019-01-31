/*********************************************
 * OPL 12.5 Model
 * Author: user
 * Creation Date: Jan 17, 2019 at 3:12:52 PM
 *********************************************/
dvar float+ x1;
dvar float+ x2;

dexpr float z = 2*x1 + 4*x2;
maximize z;

subject to{
  c1: x1 + 2*x2 <= 5;
  c2: x1 + x2 <= 4;
  }