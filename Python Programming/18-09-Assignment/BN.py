for row in range(7):
    for col in range(10):
        if row ==0 and col in {0,1,2,3,5,9}:
            print("*",end = " ")
        elif row ==1 and col in {0,4,5,6,9}:
            print("*",end = " ")
        elif row ==2 and col in {0,4,5,9}:
            print("*",end = " ")
        elif row ==3 and col in {0,1,2,3,5,7,9}:
            print("*",end = " ")
        elif row ==4 and col in {0,4,5,9}:
            print("*",end = " ")
        elif row ==5 and col in {0,4,5,8,9}:
            print("*",end = " ")
        elif row ==6 and col in {0,1,2,3,5,9}:
            print("*",end = " ")
        else:
            print(" ",end = " ")
    print()
