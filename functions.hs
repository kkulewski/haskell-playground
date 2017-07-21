doubleMe x = x + x

doubleUs x y = doubleMe x + doubleMe y

isEven x = 
        if (mod x 2) == 0
        then True
        else False