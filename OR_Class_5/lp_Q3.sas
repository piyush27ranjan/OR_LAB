data product_mix;
input _id_ $ x1 x2 x3 x4 x5 _type_ $ _rhs_;
datalines;
object 400000 900000 500000 200000 . MAX .
advertising 40000 75000 30000 15000 . LE 800000
women_customers 300000 400000 200000 100000 . GE 2000000
television 40000 75000 . . . LE 500000
advertising_unit_day 1 . . . . GE 3
advertising_primetime . 1 . . . GE 2
advertising_radio . . 1 . . GE 5
advertising_radio_less . . 1 . . LE 10
advertising_mag . . . 1 . GE 5
advertising_mag_less . . . 1 . LE 10
;

proc lp rangerhs data = product_mix;
run;
