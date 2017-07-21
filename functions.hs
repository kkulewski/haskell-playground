doubleMe x = x + x

doubleUs x y = doubleMe x + doubleMe y

isEven x = (mod x 2) == 0