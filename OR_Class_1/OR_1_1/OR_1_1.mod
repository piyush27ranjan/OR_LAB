/*********************************************
 * OPL 12.5 Model
 * Author: user
 * Creation Date: Jan 17, 2019 at 2:41:44 PM
 *********************************************/
dvar float+ x1;
dvar float+ x2;

dexpr float z = 50*x1 + 40*x2;
maximize z;

subject to{
  c1: 3*x1 + 5*x2 <= 150;
  c2: x2 <= 20;
  c3: 8*x1 + 5*x2 <=300;
  }