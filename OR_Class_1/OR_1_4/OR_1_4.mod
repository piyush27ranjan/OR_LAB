/*********************************************
 * OPL 12.5 Model
 * Author: user
 * Creation Date: Jan 17, 2019 at 3:00:01 PM
 *********************************************/
 dvar float+ x1;
 dvar float+ x2;
 
 dexpr float z = x1 + 2*x2;
 maximize z;
 
 subject to {
   	c1: x1 - x2 <= 10;
   	c2: x1 <= 20;
   }