/*********************************************
 * OPL 12.5 Model
 * Author: user
 * Creation Date: Jan 17, 2019 at 2:54:11 PM
 *********************************************/
 dvar float+ x1;
 dvar float+ x2;
 
 dexpr float z = 3*x1 + 9*x2;
 maximize z;
 
 subject to {
   	c1: x1 + 4*x2 <= 8;
   	c2: x1 + 2*x2 <= 4;
   }