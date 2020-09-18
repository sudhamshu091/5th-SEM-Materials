for row in range(7):
    for col in range(21):
        if row ==0 and col in {1,2,3,4,5,9,10,11,12,15,19,20}:
            print("*",end = " ")
        elif row ==1 and col in {0,5,9,10,13,15,19,20}:
            print("*",end = " ")
        elif row ==2 and col in {0,5,9,10,14,15,19,20}:
            print("*",end = " ")
        elif row ==3 and col in {0,1,2,3,5,9,10,14,15,16,17,18,19,20}:
            print("*",end = " ")
        elif row ==4 and col in {4,5,9,10,14,15,19,20}:
            print("*",end = " ")
        elif row ==5 and col in {4,5,9,10,13,15,19,20}:
            print("*",end = " ")
        elif row ==6 and col in {0,1,2,3,6,7,8,10,11,12,15,19,20}:
            print("*",end = " ")
        else:
            print(" ",end = " ")
    print()
