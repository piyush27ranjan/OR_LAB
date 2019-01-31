/*********************************************
 * OPL 12.5 Model
 * Author: user
 * Creation Date: Jan 17, 2019 at 3:08:56 PM
 *********************************************/
 dvar float+ x1;
 dvar float+ x2;
 dvar float x3;
 dexpr float z = x1 + 2*x2 + x3;
 minimize z;
 
 subject to {
   	c1: 2*x1 + 3*x2 + 4*x3 >= -4;
   	c2: 3*x1 + 5*x2 + 2*x3 >= 7;
   }