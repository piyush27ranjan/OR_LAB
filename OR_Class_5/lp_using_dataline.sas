data product_mix;
input _id_ $ x1 x2 _type_ $ _rhs_;
datalines;
object 34 40 MAX .
Assembly_line 4 6 LE 48
Special_component 2 2 LE 18
space_blue 2 1 LE 16
;

proc lp rangerhs data = product_mix;
run;
